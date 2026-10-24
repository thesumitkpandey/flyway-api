
package com.flyway.flights.search;

import java.util.List;

public record SearchResponse(
        List<Offer> offers
) {

    public record Offer(
            String id,
            String totalAmount,
            String totalCurrency,
            String expiresAt,
            Airline airline,
            List<FlightSlice> slices,
            Conditions conditions
    ) {}

    public record Airline(
            String name,
            String iataCode,
            String logoUrl
    ) {}

    public record FlightSlice(
            Airport origin,
            Airport destination,
            String duration,
            String fareBrandName,
            List<Segment> segments
    ) {}

    public record Airport(
            String iataCode,
            String name,
            String cityName,
            String timeZone
    ) {}

    public record Segment(
            String flightNumber,
            String departureTime,
            String arrivalTime,
            String duration,
            String originTerminal,
            String destinationTerminal,
            int stops,
            String cabinClass,
            String cabinClassName,
            List<Baggage> baggage
    ) {}

    public record Baggage(
            String type,
            Integer quantity
    ) {}

    public record Conditions(
            ChangeCondition changeBeforeDeparture,
            RefundCondition refundBeforeDeparture
    ) {}

    public record ChangeCondition(
            Boolean allowed,
            String penaltyAmount,
            String penaltyCurrency
    ) {}

    public record RefundCondition(
            Boolean allowed,
            String penaltyAmount,
            String penaltyCurrency
    ) {}
}
