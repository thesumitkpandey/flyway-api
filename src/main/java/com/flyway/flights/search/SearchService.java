
package com.flyway.flights.search;

import java.util.List;
import java.util.Objects;

import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.flyway.common.ApiResponse;
import com.flyway.flights.search.SupplierSearchResponse.Airline;
import com.flyway.flights.search.SupplierSearchResponse.Airport;
import com.flyway.flights.search.SupplierSearchResponse.ChangeCondition;
import com.flyway.flights.search.SupplierSearchResponse.Conditions;
import com.flyway.flights.search.SupplierSearchResponse.Offer;
import com.flyway.flights.search.SupplierSearchResponse.OfferSlice;
import com.flyway.flights.search.SupplierSearchResponse.RefundCondition;
import com.flyway.flights.search.SupplierSearchResponse.Segment;
import com.flyway.flights.search.SupplierSearchResponse.SegmentPassenger;

@Service
public class SearchService {

    private final WebClient duffelWebClient;

    public SearchService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<SearchResponse.Offer> searchFlights(SearchRequest request) {

        SupplierSearchRequest supplierRequest =
                new SupplierSearchRequest(
                        new SupplierSearchRequest.Data(
                                request.slices().stream()
                                        .map(slice -> {
                                            if (slice.departureDate() == null) {
                                                throw new IllegalArgumentException(
                                                        "departureDate is required"
                                                );
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
                                                ))
                                        .toList()
                        )
                );

        SupplierSearchResponse supplierResponse = duffelWebClient.post()
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

        if (supplierResponse == null
                || supplierResponse.getData() == null
                || supplierResponse.getData().getOffers() == null) {
            throw new IllegalStateException(
                    "Duffel response does not contain offers"
            );
        }

        List<SearchResponse.Offer> offers =
                supplierResponse.getData().getOffers().stream()
                        .filter(Objects::nonNull)
                        .map(this::mapOffer)
                        .toList();

return ApiResponse.success(
    "Flights fetched successfully",
    offers
);
    }

    private SearchResponse.Offer mapOffer(Offer offer) {

        return new SearchResponse.Offer(
                offer.getId(),
                offer.getTotalAmount(),
                offer.getTotalCurrency(),
                offer.getExpiresAt(),
                mapAirline(offer.getOwner()),
                offer.getSlices() == null
                        ? List.of()
                        : offer.getSlices().stream()
                                .map(this::mapSlice)
                                .toList(),
                mapConditions(offer.getConditions())
        );
    }

    private SearchResponse.Airline mapAirline(Airline airline) {

        if (airline == null) {
            return null;
        }

        return new SearchResponse.Airline(
                airline.getName(),
                airline.getIataCode(),
                airline.getLogoSymbolUrl()
        );
    }

    private SearchResponse.FlightSlice mapSlice(OfferSlice slice) {

        return new SearchResponse.FlightSlice(
                mapAirport(slice.getOrigin()),
                mapAirport(slice.getDestination()),
                slice.getDuration(),
                slice.getFareBrandName(),
                slice.getSegments() == null
                        ? List.of()
                        : slice.getSegments().stream()
                                .map(this::mapSegment)
                                .toList()
        );
    }

    private SearchResponse.Airport mapAirport(Airport airport) {

        if (airport == null) {
            return null;
        }

        return new SearchResponse.Airport(
                airport.getIataCode(),
                airport.getName(),
                airport.getCityName(),
                airport.getTimeZone()
        );
    }

    private SearchResponse.Segment mapSegment(Segment segment) {

        List<SegmentPassenger> passengers =
                segment.getPassengers() == null
                        ? List.of()
                        : segment.getPassengers().stream()
                                .filter(Objects::nonNull)
                                .toList();

        List<SearchResponse.Baggage> baggage = passengers.stream()
                .filter(p -> p.getBaggages() != null)
                .flatMap(p -> p.getBaggages().stream())
                .filter(Objects::nonNull)
                .map(b -> new SearchResponse.Baggage(
                        b.getType(),
                        b.getQuantity()
                ))
                .toList();

        SegmentPassenger firstPassenger = passengers.stream()
                .findFirst()
                .orElse(null);

        int stops = segment.getStops() == null
                ? 0
                : segment.getStops().size();

        return new SearchResponse.Segment(
                segment.getMarketingCarrierFlightNumber(),
                segment.getDepartingAt(),
                segment.getArrivingAt(),
                segment.getDuration(),
                segment.getOriginTerminal(),
                segment.getDestinationTerminal(),
                stops,
                firstPassenger == null || firstPassenger.getCabin() == null
                        ? null
                        : firstPassenger.getCabin().getName(),
                firstPassenger == null
                        ? null
                        : firstPassenger.getCabinClassMarketingName(),
                baggage
        );
    }

    private SearchResponse.Conditions mapConditions(Conditions conditions) {

        if (conditions == null) {
            return null;
        }

        ChangeCondition change = conditions.getChangeBeforeDeparture();
        RefundCondition refund = conditions.getRefundBeforeDeparture();

        return new SearchResponse.Conditions(
                change == null
                        ? null
                        : new SearchResponse.ChangeCondition(
                                change.getAllowed(),
                                change.getPenaltyAmount(),
                                change.getPenaltyCurrency()
                        ),
                refund == null
                        ? null
                        : new SearchResponse.RefundCondition(
                                refund.getAllowed(),
                                refund.getPenaltyAmount(),
                                refund.getPenaltyCurrency()
                        )
        );
    }
}
