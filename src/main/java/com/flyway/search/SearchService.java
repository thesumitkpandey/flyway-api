package com.flyway.search;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.flyway.exception.CustomException;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SearchService {

    private final WebClient duffelWebClient;

    public SearchService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public SearchResponse searchFlights(SearchRequest request) {

        SupplierSearchRequest supplierPayload = createSupplierRequestPayload(request);

        try {

            SupplierSearchResponse supplierResponse = duffelWebClient
                    .post()
                    .uri("/air/offer_requests")
                    .header("Duffel-Version", "v2")
                    .header("Content-Type", "application/json")
                    .bodyValue(supplierPayload)
                    .retrieve()
                    .bodyToMono(SupplierSearchResponse.class)
                    .block();

            return mapToInternalResponse(supplierResponse);

        } catch (Exception ex) {

            log.error("Supplier call failed", ex);

            throw new CustomException(
                    "SUPPLIER_ERROR",
                    "Failed to fetch flight offers from supplier",
                    HttpStatus.BAD_GATEWAY);
        }
    }

    public SupplierSearchRequest createSupplierRequestPayload(SearchRequest request) {

        if (request.getSegments() == null || request.getSegments().isEmpty()) {
            throw new CustomException(
                    "INVALID_SEGMENTS",
                    "At least one flight segment is required",
                    HttpStatus.BAD_REQUEST);
        }

        SupplierSearchRequest supplierRequest = new SupplierSearchRequest();
        SupplierSearchRequest.Data data = new SupplierSearchRequest.Data();

        List<SupplierSearchRequest.Slice> slices = new ArrayList<>();
        List<SupplierSearchRequest.Passenger> passengers = new ArrayList<>();

        java.time.LocalDate today = java.time.LocalDate.now();

        for (int i = 0; i < request.getSegments().size(); i++) {

            SearchRequest.FlightSegment segment = request.getSegments().get(i);

            if (segment.getDateOfJourney().isBefore(today)) {
                throw new CustomException(
                        "INVALID_DATE",
                        "Departure date cannot be in past",
                        HttpStatus.BAD_REQUEST);
            }

            if (i > 0) {
                java.time.LocalDate previousDate = request.getSegments().get(i - 1).getDateOfJourney();

                if (segment.getDateOfJourney().isBefore(previousDate)) {
                    throw new CustomException(
                            "INVALID_DATE_SEQUENCE",
                            "Each segment departure date must be after previous segment",
                            HttpStatus.BAD_REQUEST);
                }
            }

            SupplierSearchRequest.Slice slice = new SupplierSearchRequest.Slice();
            slice.setOrigin(segment.getOrigin());
            slice.setDestination(segment.getDestination());
            slice.setDeparture_date(segment.getDateOfJourney().toString());

            slices.add(slice);
        }

        for (SearchRequest.Passenger p : request.getPassengers()) {

            SupplierSearchRequest.Passenger passenger = new SupplierSearchRequest.Passenger();
            passenger.setType(p.getPassengerType().name().toLowerCase());

            passengers.add(passenger);
        }

        data.setCabin_class(request.getCabinClass().name().toLowerCase());
        data.setSlices(slices);
        data.setPassengers(passengers);

        supplierRequest.setData(data);

        return supplierRequest;
    }

    private SearchResponse mapToInternalResponse(SupplierSearchResponse supplier) {

        SearchResponse response = new SearchResponse();
        List<SearchResponse.FlightOffer> internalOffers = new ArrayList<>();

        if (supplier == null
                || supplier.getData() == null
                || supplier.getData().getOffers() == null) {

            response.setOffers(internalOffers);
            return response;
        }

        for (var offer : supplier.getData().getOffers()) {

            try {

                SearchResponse.FlightOffer internalOffer = new SearchResponse.FlightOffer();

                internalOffer.setOfferId(offer.getId());

                // ---------------- Price ----------------
                try {
                    if (offer.getTotal_amount() != null) {
                        internalOffer.setTotalAmount(
                                Double.parseDouble(offer.getTotal_amount()));
                    }
                } catch (Exception ex) {
                    log.error("Price parsing failed for offerId: {}", offer.getId(), ex);
                }

                internalOffer.setCurrency(offer.getTotal_currency());
                internalOffer.setExpiresAt(offer.getExpires_at());

                // ---------------- Passenger Summary ----------------
                SearchResponse.PassengerSummary passengerSummary =
                        new SearchResponse.PassengerSummary();

                int adults = 0;
                int children = 0;
                int infants = 0;

                if (offer.getPassengers() != null) {
                    for (var p : offer.getPassengers()) {

                        try {
                            switch (p.getType()) {
                                case "adult":
                                    adults++;
                                    break;
                                case "child":
                                    children++;
                                    break;
                                case "infant":
                                case "infant_without_seat":
                                    infants++;
                                    break;
                                default:
                                    log.warn("Unknown passenger type: {}", p.getType());
                            }
                        } catch (Exception ex) {
                            log.error("Passenger mapping error for offerId: {}", offer.getId(), ex);
                        }
                    }
                }

                passengerSummary.setAdults(adults);
                passengerSummary.setChildren(children);
                passengerSummary.setInfants(infants);

                internalOffer.setPassengerSummary(passengerSummary);

                // ---------------- Conditions ----------------
                try {
                    if (offer.getConditions() != null) {

                        if (offer.getConditions().getRefund_before_departure() != null) {
                            internalOffer.setRefundable(
                                    offer.getConditions()
                                            .getRefund_before_departure()
                                            .getAllowed());
                        }

                        if (offer.getConditions().getChange_before_departure() != null) {
                            internalOffer.setChangeAllowed(
                                    offer.getConditions()
                                            .getChange_before_departure()
                                            .getAllowed());
                        }
                    }
                } catch (Exception ex) {
                    log.error("Condition mapping failed for offerId: {}", offer.getId(), ex);
                }

                // ---------------- Slices ----------------
                List<SearchResponse.Slice> internalSlices = new ArrayList<>();

                if (offer.getSlices() != null) {

                    for (var slice : offer.getSlices()) {

                        try {

                            SearchResponse.Slice internalSlice =
                                    new SearchResponse.Slice();

                            if (slice.getOrigin() != null)
                                internalSlice.setOrigin(slice.getOrigin().getIata_code());

                            if (slice.getDestination() != null)
                                internalSlice.setDestination(slice.getDestination().getIata_code());

                            internalSlice.setDuration(formatDuration(slice.getDuration()));

                            // ---------------- Segments ----------------
                            List<SearchResponse.Segment> internalSegments =
                                    new ArrayList<>();

                            if (slice.getSegments() != null) {

                                for (var segment : slice.getSegments()) {

                                    try {

                                        SearchResponse.Segment internalSegment =
                                                new SearchResponse.Segment();

                                        // Airline
                                        try {
                                            if (segment.getMarketing_carrier() != null) {

                                                SearchResponse.AirlineDetail airline =
                                                        new SearchResponse.AirlineDetail();

                                                airline.setName(
                                                        segment.getMarketing_carrier().getName());

                                                airline.setIataCode(
                                                        segment.getMarketing_carrier().getIata_code());

                                                airline.setLogo(
                                                        segment.getMarketing_carrier().getLogo_symbol_url());

                                                internalSegment.setAirlineDetail(airline);
                                            }
                                        } catch (Exception ex) {
                                            log.error("Airline mapping failed for offerId: {}", offer.getId(), ex);
                                        }

                                        internalSegment.setFlightNumber(
                                                segment.getMarketing_carrier_flight_number());

                                        if (segment.getOrigin() != null)
                                            internalSegment.setOrigin(
                                                    segment.getOrigin().getIata_code());

                                        if (segment.getDestination() != null)
                                            internalSegment.setDestination(
                                                    segment.getDestination().getIata_code());

                                        internalSegment.setDepartureTime(
                                                segment.getDeparting_at());

                                        internalSegment.setArrivalTime(
                                                segment.getArriving_at());

                                        // internalSegment.setDuration(
                                        //         formatDuration(segment.getDuration()));

                                        try {
                                            if (segment.getPassengers() != null
                                                    && !segment.getPassengers().isEmpty()) {

                                                internalSegment.setCabinClass(
                                                        segment.getPassengers()
                                                                .get(0)
                                                                .getCabin_class());
                                            }
                                        } catch (Exception ex) {
                                            log.error("Cabin mapping failed for offerId: {}", offer.getId(), ex);
                                        }

                                        internalSegments.add(internalSegment);

                                    } catch (Exception ex) {
                                        log.error("Segment mapping failed for offerId: {}", offer.getId(), ex);
                                    }
                                }
                            }

                            internalSlice.setSegments(internalSegments);
                            internalSlices.add(internalSlice);

                        } catch (Exception ex) {
                            log.error("Slice mapping failed for offerId: {}", offer.getId(), ex);
                        }
                    }
                }

                internalOffer.setSlices(internalSlices);
                internalOffers.add(internalOffer);

            } catch (Exception ex) {
                log.error("Error while mapping offerId: {}", 
                          offer != null ? offer.getId() : "UNKNOWN", ex);
            }
        }

        response.setOffers(internalOffers);
        return response;
    }

    private String formatDuration(String isoDuration) {

        if (isoDuration == null)
            return null;

        try {
            java.time.Duration duration = java.time.Duration.parse(isoDuration);

            long hours = duration.toHours();
            long minutes = duration.toMinutes() % 60;

            return hours + "h " + minutes + "m";

        } catch (Exception ex) {
            log.error("Invalid duration format received: {}", isoDuration, ex);
            return isoDuration;
        }
    }
}