package com.flyway.search;

import com.flyway.common.ApiResponse;
import com.flyway.exception.CustomException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import java.time.Duration;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class SearchService {

    private final WebClient duffelWebClient;

    public SearchService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<List<SearchResponse.FlightOffer>> searchFlights(SearchRequest request) {

        // ✅ VALIDATIONS (ALL HERE)

        if (request.getSlice() == null || request.getSlice().isEmpty()) {
            throw new CustomException("INVALID_SLICE", "At least one flight slice is required", HttpStatus.BAD_REQUEST);
        }

        LocalDate today = LocalDate.now();
        for (int i = 0; i < request.getSlice().size(); i++) {
            var s = request.getSlice().get(i);
            if (s.getDepartureDate().isBefore(today)) {
                throw new CustomException("INVALID_DATE", "Departure date cannot be in past", HttpStatus.BAD_REQUEST);
            }
        }

        // ✅ CABIN CLASS MAPPING + VALIDATION
        String cabinClassMapped;

        switch (request.getCabinClass().toLowerCase()) {
            case "economy":
                cabinClassMapped = "economy";
                break;
            case "premiumeconomy":
                cabinClassMapped = "premium_economy";
                break;
            case "business":
                cabinClassMapped = "business";
                break;
            case "first":
                cabinClassMapped = "first";
                break;
            default:
                throw new CustomException(
                        "INVALID_CABIN_CLASS",
                        "This is not a valid cabin class",
                        HttpStatus.BAD_REQUEST
                );
        }

        SupplierSearchRequest supplierPayload = createSupplierRequestPayload(request, cabinClassMapped);

        try {
            SupplierSearchResponse supplierResponse = duffelWebClient.post()
                    .uri("/air/offer_requests")
                    .header("Duffel-Version", "v2")
                    .header("Content-Type", "application/json")
                    .bodyValue(supplierPayload)
                    .retrieve()
                    .bodyToMono(SupplierSearchResponse.class)
                    .block();

            List<SearchResponse.FlightOffer> offers = mapToInternalOffers(supplierResponse);

            return ApiResponse.<List<SearchResponse.FlightOffer>>builder()
                    .success(true)
                    .message("Flights fetched successfully")
                    .data(offers)
                    .build();

        } catch (Exception ex) {
            log.error("Supplier call failed", ex);
            throw new CustomException("SUPPLIER_ERROR", "Failed to fetch flight offers", HttpStatus.BAD_GATEWAY);
        }
    }

    private SupplierSearchRequest createSupplierRequestPayload(SearchRequest request,
                                                               String cabinClassMapped) {

        SupplierSearchRequest supplierRequest = new SupplierSearchRequest();
        SupplierSearchRequest.Data data = new SupplierSearchRequest.Data();

        List<SupplierSearchRequest.Slice> slices = new ArrayList<>();
        for (var s : request.getSlice()) {
            SupplierSearchRequest.Slice slice = new SupplierSearchRequest.Slice();
            slice.setOrigin(s.getOrigin());
            slice.setDestination(s.getDestination());
            slice.setDeparture_date(s.getDepartureDate().toString());
            slices.add(slice);
        }

        List<SupplierSearchRequest.Passenger> passengers = new ArrayList<>();
        for (var p : request.getPassengers()) {
            SupplierSearchRequest.Passenger passenger = new SupplierSearchRequest.Passenger();
            passenger.setType("adult"); // can enhance later using age
            passengers.add(passenger);
        }

        data.setCabin_class(cabinClassMapped);
        data.setSlices(slices);
        data.setPassengers(passengers);

        supplierRequest.setData(data);
        return supplierRequest;
    }

    private List<SearchResponse.FlightOffer> mapToInternalOffers(SupplierSearchResponse supplier) {
        List<SearchResponse.FlightOffer> internalOffers = new ArrayList<>();

        if (supplier == null || supplier.getData() == null || supplier.getData().getOffers() == null) {
            return internalOffers;
        }

        for (var offer : supplier.getData().getOffers()) {
            SearchResponse.FlightOffer internalOffer = new SearchResponse.FlightOffer();

            internalOffer.setOfferId(offer.getId());
            internalOffer.setCurrency(offer.getTotal_currency());

            if (offer.getTotal_amount() != null) {
                internalOffer.setTotalAmount(Double.parseDouble(offer.getTotal_amount()));
            }

            List<SearchResponse.Slice> internalSlices = new ArrayList<>();

            for (var s : offer.getSlices()) {
                SearchResponse.Slice internalSlice = new SearchResponse.Slice();

                internalSlice.setOrigin(s.getOrigin().getIata_code());
                internalSlice.setDestination(s.getDestination().getIata_code());
                internalSlice.setDuration(formatDuration(s.getDuration()));

                List<SearchResponse.Segment> internalSegments = new ArrayList<>();

                for (var seg : s.getSegments()) {
                    SearchResponse.Segment is = new SearchResponse.Segment();

                    is.setOrigin(seg.getOrigin().getIata_code());
                    is.setDestination(seg.getDestination().getIata_code());
                    is.setDepartureTime(seg.getDeparting_at());
                    is.setArrivalTime(seg.getArriving_at());
                    is.setFlightNumber(seg.getMarketing_carrier_flight_number());

                    internalSegments.add(is);
                }

                internalSlice.setSegments(internalSegments);
                internalSlices.add(internalSlice);
            }

            internalOffer.setSlices(internalSlices);
            internalOffers.add(internalOffer);
        }

        return internalOffers;
    }

    private String formatDuration(String isoDuration) {
        if (isoDuration == null) return null;
        try {
            Duration d = Duration.parse(isoDuration);
            return d.toHours() + "h " + (d.toMinutes() % 60) + "m";
        } catch (Exception e) {
            return isoDuration;
        }
    }
}