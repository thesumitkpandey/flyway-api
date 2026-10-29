package com.flyway.flights.details;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.flyway.common.ApiResponse;

@Service
public class DetailsService {

    private final WebClient duffelWebClient;

    public DetailsService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<SupplierSearchResponse.Offer> getOffer(String offerId) {

        SupplierSearchResponse response = duffelWebClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/air/offers/{offerId}")
                        .queryParam("return_available_services", true)
                        .build(offerId))
                .retrieve()
                .bodyToMono(SupplierSearchResponse.class)
                .block();

        if (response == null) {
            throw new IllegalStateException(
                    "Duffel returned an empty offer response");
        }

        return ApiResponse.success(
                "Offer fetched successfully",
                List.of(response.getData())
        );
    }
}