package com.flyway.search;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.flyway.common.ApiResponse;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SearchService {

    private final WebClient duffelWebClient;
    private final ObjectMapper objectMapper;

    public SearchService(WebClient duffelWebClient, ObjectMapper objectMapper) {
        this.duffelWebClient = duffelWebClient;
        this.objectMapper = objectMapper;
    }

public ApiResponse<SearchResponse> search(SearchRequest request) {

    SupplierSearchRequest supplierRequest =
            objectMapper.convertValue(request, SupplierSearchRequest.class);

    SupplierSearchResponse supplierResponse = duffelWebClient
            .post()
            .uri("/air/offer_requests")
            .bodyValue(supplierRequest)
            .retrieve()
            .bodyToMono(SupplierSearchResponse.class)
            .block();

    List<SearchResponse.Offer> offers = supplierResponse.getData()
            .getOffers()
            .stream()
            .map(offer -> objectMapper.convertValue(offer, SearchResponse.Offer.class))
            .toList();

    SearchResponse response = new SearchResponse();
    response.setOffers(offers);

    return ApiResponse.<SearchResponse>builder()
            .success(true)
            .message("Fetched all flights")
            .data(response)
            .build();
}
}
