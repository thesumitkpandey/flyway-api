package com.flyway.search;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.flyway.common.ApiResponse;
import com.flyway.search.SearchDetailsResponse.AirlineDetails;
import com.flyway.search.SearchDetailsResponse.AirportDetails;
import com.flyway.search.SearchDetailsResponse.BaggageDetails;
import com.flyway.search.SearchDetailsResponse.PassengerDetails;
import com.flyway.search.SearchDetailsResponse.SliceDetails;
import com.flyway.search.SupplierSearchDetailResponse.FlightOfferData;

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

public ApiResponse<SearchDetailsResponse> searchById(String id) {

    SupplierSearchDetailResponse supplierResponse = duffelWebClient
            .get()
            .uri(uriBuilder -> uriBuilder
                    .path("/air/offers/{offerId}")
                    .queryParam("return_available_services", true)
                    .build(id))
            .retrieve()
            .bodyToMono(SupplierSearchDetailResponse.class)
            .block();

    log.info("Supplier response: {}", supplierResponse);

    return ApiResponse.<SearchDetailsResponse>builder()
            .success(true)
            .message("Flight fetched successfully")
            .data(buildResponse(supplierResponse.getData()))
            .build();
}

private SearchDetailsResponse buildResponse(SupplierSearchDetailResponse.FlightOfferData offer) {

    return SearchDetailsResponse.builder()
            .offerId(offer.getId())
            .totalAmount(offer.getTotalAmount())
            .totalCurrency(offer.getTotalCurrency())
            .baseAmount(offer.getBaseAmount())
            .taxAmount(offer.getTaxAmount())
            .expiresAt(offer.getExpiresAt())

            .airline(SearchDetailsResponse.AirlineDetails.builder()
                    .iataCode(offer.getSlices().get(0).getSegments().get(0).getMarketingCarrier().getIataCode())
                    .name(offer.getSlices().get(0).getSegments().get(0).getMarketingCarrier().getName())
                    .logoUrl(offer.getSlices().get(0).getSegments().get(0).getMarketingCarrier().getLogoSymbolUrl())
                    .build())

            .slices(
                    offer.getSlices().stream()
                            .map(slice -> {
                                SupplierSearchDetailResponse.Segment segment = slice.getSegments().get(0);

                                return SearchDetailsResponse.SliceDetails.builder()
                                        .origin(SearchDetailsResponse.AirportDetails.builder()
                                                .iataCode(segment.getOrigin().getIataCode())
                                                .cityName(segment.getOrigin().getCityName())
                                                .name(segment.getOrigin().getName())
                                                .build())
                                        .destination(SearchDetailsResponse.AirportDetails.builder()
                                                .iataCode(segment.getDestination().getIataCode())
                                                .cityName(segment.getDestination().getCityName())
                                                .name(segment.getDestination().getName())
                                                .build())
                                        .departingAt(segment.getDepartingAt())
                                        .arrivingAt(segment.getArrivingAt())
                                        .duration(segment.getDuration())
                                        .flightNumber(segment.getMarketingCarrierFlightNumber())
                                        .cabinClass(segment.getPassengers().get(0).getCabinClass())
                                        .stopsCount(segment.getStops() == null ? 0 : segment.getStops().size())
                                        .build();
                            })
                            .toList())

            .passengers(
                    offer.getPassengers().stream()
                            .map(passenger -> SearchDetailsResponse.PassengerDetails.builder()
                                    .type(passenger.getType())
                                    .age(passenger.getAge())
                                    .build())
                            .toList())

            .baggageOptions(
                    offer.getAvailableServices().stream()
                            .filter(service -> "baggage".equals(service.getType()))
                            .map(service -> SearchDetailsResponse.BaggageDetails.builder()
                                    .type(service.getMetadata().getType())
                                    .amount(service.getTotalAmount())
                                    .currency(service.getTotalCurrency())
                                    .build())
                            .toList())

            .build();
}
}
