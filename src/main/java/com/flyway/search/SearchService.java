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

    public String searchFlights(SearchRequestDTO request) {

        SupplierRequestDTO supplierPayload = createSupplierRequestPayload(request);
        try {

            String rawResponse = duffelWebClient
                    .post()
                    .uri("/air/offer_requests")
                    .header("Duffel-Version", "v2")
                    .header("Content-Type", "application/json")
                    .bodyValue(supplierPayload)
                    .retrieve()
                    .bodyToMono(String.class)
                    .block(); 

            log.info("Raw response from Duffel: {}", rawResponse);

            return rawResponse;
        } catch (Exception ex) {

            throw new CustomException(
                    "SUPPLIER_ERROR",
                    "Failed to fetch flight offers from supplier",
                    HttpStatus.BAD_GATEWAY);
        }

    }

    public SupplierRequestDTO createSupplierRequestPayload(SearchRequestDTO request) {

        if (request.getSegments() == null || request.getSegments().isEmpty()) {
            throw new CustomException(
                    "INVALID_SEGMENTS",
                    "At least one flight segment is required",
                    HttpStatus.BAD_REQUEST);
        }

        SupplierRequestDTO supplierRequest = new SupplierRequestDTO();
        SupplierRequestDTO.Data data = new SupplierRequestDTO.Data();

        List<SupplierRequestDTO.Slice> slices = new java.util.ArrayList<>();
        List<SupplierRequestDTO.Passenger> passengers = new java.util.ArrayList<>();

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

            SupplierRequestDTO.Slice slice = new SupplierRequestDTO.Slice();
            slice.setOrigin(segment.getOrigin());
            slice.setDestination(segment.getDestination());
            slice.setDeparture_date(segment.getDateOfJourney().toString());

            slices.add(slice);
        }

        for (SearchRequestDTO.Passenger p : request.getPassengers()) {

            SupplierRequestDTO.Passenger passenger = new SupplierRequestDTO.Passenger();
            passenger.setType(p.getPassengerType().name().toLowerCase());

            passengers.add(passenger);
        }

        data.setCabin_class(request.getCabinClass().name().toLowerCase());
        data.setSlices(slices);
        data.setPassengers(passengers);

        supplierRequest.setData(data);

        return supplierRequest;
    }

}
