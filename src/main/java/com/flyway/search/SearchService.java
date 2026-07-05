package com.flyway.search;

import java.util.ArrayList;
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

        public ApiResponse<List<SearchResponse>> search(SearchRequest request) {

                SupplierSearchRequest supplierRequest = objectMapper.convertValue(request, SupplierSearchRequest.class);

                SupplierSearchResponse supplierResponse = duffelWebClient
                                .post()
                                .uri("/air/offer_requests")
                                .bodyValue(supplierRequest)
                                .retrieve()
                                .bodyToMono(SupplierSearchResponse.class)
                                .block();

                List<SearchResponse> offers = supplierResponse.getData()
                                .getOffers()
                                .stream()
                                .map(this::toOffer)
                                .toList();

                return ApiResponse.<List<SearchResponse>>builder()
                                .success(true)
                                .message("Fetched all flights")
                                .data(offers)
                                .build();
        }

        private SearchResponse toOffer(SupplierSearchResponse.Offer offer) {

                SupplierSearchResponse.OfferSlice slice = offer.getSlices().get(0);
                SupplierSearchResponse.Segment segment = slice.getSegments().get(0);

                return SearchResponse.builder()
                                .id(offer.getId())
                                .totalAmount(offer.getTotalAmount())
                                .totalCurrency(offer.getTotalCurrency())

                                .airlineCode(offer.getOwner().getIataCode())
                                .airlineName(offer.getOwner().getName())
                                .airlineLogo(offer.getOwner().getLogoSymbolUrl())

                                .fareBrand(slice.getFareBrandName())

                                .departureAirport(segment.getOrigin().getIataCode())
                                .departureCity(segment.getOrigin().getCityName())
                                .departureTime(segment.getDepartingAt())

                                .arrivalAirport(segment.getDestination().getIataCode())
                                .arrivalCity(segment.getDestination().getCityName())
                                .arrivalTime(segment.getArrivingAt())

                                .duration(slice.getDuration())
                                .stops(Math.max(segment.getStops().size(), 0))

                                .cabinClass(segment.getPassengers().isEmpty()
                                                ? null
                                                : segment.getPassengers().get(0).getCabinClassMarketingName())

                                .refundable(
                                                offer.getConditions() != null
                                                                && offer.getConditions()
                                                                                .getRefundBeforeDeparture() != null
                                                                && offer.getConditions().getRefundBeforeDeparture()
                                                                                .isAllowed())

                                .changeable(
                                                offer.getConditions() != null
                                                                && offer.getConditions()
                                                                                .getChangeBeforeDeparture() != null
                                                                && offer.getConditions().getChangeBeforeDeparture()
                                                                                .isAllowed())

                                .build();
        }

        public ApiResponse<List<String>> searchById(String id) {
                List<String> offers = new ArrayList<>();
                offers.add("offer1");
                offers.add("offer2");
                offers.add("offer3");
                return ApiResponse.<List<String>>builder()
                                .success(true)
                                .message("Fetched all flights")
                                .data(offers)
                                .build();

        }
}
