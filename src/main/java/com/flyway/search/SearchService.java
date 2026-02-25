package com.flyway.search;

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

public SearchResponseDTO searchFlights(SearchRequestDTO request) {

    SupplierSearchRequestDTO supplierPayload = createSupplierRequestPayload(request);

    try {

        SupplierSearchResponseDTO supplierResponse =
                duffelWebClient
                        .post()
                        .uri("/air/offer_requests")
                        .header("Duffel-Version", "v2")
                        .header("Content-Type", "application/json")
                        .bodyValue(supplierPayload)
                        .retrieve()
                        .bodyToMono(SupplierSearchResponseDTO.class)
                        .block();

        return mapToInternalResponse(supplierResponse);

    } catch (Exception ex) {

        throw new CustomException(
                "SUPPLIER_ERROR",
                "Failed to fetch flight offers from supplier",
                HttpStatus.BAD_GATEWAY);
    }
}

    public SupplierSearchRequestDTO createSupplierRequestPayload(SearchRequestDTO request) {

        if (request.getSegments() == null || request.getSegments().isEmpty()) {
            throw new CustomException(
                    "INVALID_SEGMENTS",
                    "At least one flight segment is required",
                    HttpStatus.BAD_REQUEST);
        }

        SupplierSearchRequestDTO supplierRequest = new SupplierSearchRequestDTO();
        SupplierSearchRequestDTO.Data data = new SupplierSearchRequestDTO.Data();

        List<SupplierSearchRequestDTO.Slice> slices = new java.util.ArrayList<>();
        List<SupplierSearchRequestDTO.Passenger> passengers = new java.util.ArrayList<>();

        java.time.LocalDate today = java.time.LocalDate.now();

        for (int i = 0; i < request.getSegments().size(); i++) {

            SearchRequestDTO.FlightSegment segment = request.getSegments().get(i);

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

            SupplierSearchRequestDTO.Slice slice = new SupplierSearchRequestDTO.Slice();
            slice.setOrigin(segment.getOrigin());
            slice.setDestination(segment.getDestination());
            slice.setDeparture_date(segment.getDateOfJourney().toString());

            slices.add(slice);
        }

        for (SearchRequestDTO.Passenger p : request.getPassengers()) {

            SupplierSearchRequestDTO.Passenger passenger = new SupplierSearchRequestDTO.Passenger();
            passenger.setType(p.getPassengerType().name().toLowerCase());

            passengers.add(passenger);
        }

        data.setCabin_class(request.getCabinClass().name().toLowerCase());
        data.setSlices(slices);
        data.setPassengers(passengers);

        supplierRequest.setData(data);

        return supplierRequest;
    }

    private SearchResponseDTO mapToInternalResponse(SupplierSearchResponseDTO supplier) {

    SearchResponseDTO response = new SearchResponseDTO();
    List<SearchResponseDTO.FlightOffer> offers = new java.util.ArrayList<>();

    if (supplier == null || supplier.getData() == null) {
        response.setOffers(offers);
        return response;
    }

    for (var offer : supplier.getData().getOffers()) {

        var firstSlice = offer.getSlices().get(0);
        var firstSegment = firstSlice.getSegments().get(0);

        SearchResponseDTO.FlightOffer internalOffer =
                new SearchResponseDTO.FlightOffer();

        internalOffer.setOfferId(offer.getId());
        internalOffer.setAirline(firstSegment.getMarketing_carrier().getName());
        internalOffer.setAirlineCode(firstSegment.getMarketing_carrier().getIata_code());
        internalOffer.setFlightNumber(firstSegment.getMarketing_carrier_flight_number());

        internalOffer.setOrigin(firstSegment.getOrigin().getIata_code());
        internalOffer.setDestination(firstSegment.getDestination().getIata_code());

        internalOffer.setDepartureTime(firstSegment.getDeparting_at());
        internalOffer.setArrivalTime(firstSegment.getArriving_at());
        internalOffer.setDuration(firstSegment.getDuration());

        internalOffer.setCabinClass(
                firstSegment.getPassengers().get(0).getCabin_class());

        internalOffer.setTotalPrice(offer.getTotal_amount());
        internalOffer.setCurrency(offer.getTotal_currency());

        internalOffer.setRefundable(
                offer.getConditions().getRefund_before_departure().getAllowed());

        internalOffer.setChangeAllowed(
                offer.getConditions().getChange_before_departure().getAllowed());

        offers.add(internalOffer);
    }

    response.setOffers(offers);
    return response;
}

}
