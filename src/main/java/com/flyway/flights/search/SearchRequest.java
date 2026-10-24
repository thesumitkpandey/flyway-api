package com.flyway.flights.search;

import java.time.LocalDate;
import java.util.List;

public record SearchRequest(
        List<Slice> slices,
        List<Passenger> passengers
) {

    public record Slice(
            String origin,
            String destination,
            LocalDate departureDate   
    ) {}

    public record Passenger(
            String name,
            Integer age
    ) {}
}