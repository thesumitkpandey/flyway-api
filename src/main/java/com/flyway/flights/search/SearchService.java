package com.flyway.flights.search;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.flyway.common.ApiResponse;

@Service
public class SearchService {

    private final WebClient duffelWebClient;

    public SearchService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<SupplierSearchResponse.Offer> searchFlights(
            SearchRequest request) {

        SupplierSearchRequest supplierRequest = buildSupplierRequest(request);

        SupplierSearchResponse response = duffelWebClient.post()
                .uri(uriBuilder -> uriBuilder
                        .path("/air/offer_requests")
                        .queryParam("return_offers", true)
                        .queryParam("supplier_timeout", 10000)
                        .queryParam("view", "offers")
                        .build())
                .bodyValue(supplierRequest)
                .retrieve()
                .bodyToMono(SupplierSearchResponse.class)
                .block();

        if (response == null
                || response.getData() == null
                || response.getData().getOffers() == null) {
            throw new IllegalStateException(
                    "Duffel response does not contain offers");
        }

        return ApiResponse.success(
                "Flights fetched successfully",
                response.getData().getOffers()
        );
    }

    private SupplierSearchRequest buildSupplierRequest(
            SearchRequest request) {

        if (request == null) {
            throw new IllegalArgumentException(
                    "Search request is required");
        }

        if (request.slices() == null || request.slices().isEmpty()) {
            throw new IllegalArgumentException(
                    "At least one flight slice is required");
        }

        if (request.passengers() == null
                || request.passengers().isEmpty()) {
            throw new IllegalArgumentException(
                    "At least one passenger is required");
        }

        return new SupplierSearchRequest(
                new SupplierSearchRequest.Data(
                        request.slices().stream()
                                .map(slice -> {
                                    if (slice.departureDate() == null) {
                                        throw new IllegalArgumentException(
                                                "departureDate is required");
                                    }

                                    return new SupplierSearchRequest.Slice(
                                            slice.origin(),
                                            slice.destination(),
                                            slice.departureDate().toString()
                                    );
                                })
                                .toList(),

                        request.passengers().stream()
                                .map(passenger ->
                                        new SupplierSearchRequest.Passenger(
                                                passenger.age()
                                        )
                                )
                                .toList()
                )
        );
    }
}