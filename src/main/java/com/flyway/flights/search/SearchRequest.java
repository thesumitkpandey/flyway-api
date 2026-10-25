
package com.flyway.flights.search;

import java.time.LocalDate;
import java.util.List;

import jakarta.validation.Valid;
import jakarta.validation.constraints.FutureOrPresent;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public record SearchRequest(

        @NotEmpty(message = "At least one flight slice is required")
        @Size(max = 2, message = "A maximum of 2 flight slices is allowed")
        List<@NotNull @Valid Slice> slices,

        @NotEmpty(message = "At least one passenger is required")
        @Size(max = 10, message = "A maximum of 10 passengers is allowed")
        List<@NotNull @Valid Passenger> passengers

) {

    public record Slice(

            @NotBlank(message = "Origin is required")
            @Pattern(
                    regexp = "^[A-Za-z]{3}$",
                    message = "Origin must be a valid three-letter IATA airport code"
            )
            String origin,

            @NotBlank(message = "Destination is required")
            @Pattern(
                    regexp = "^[A-Za-z]{3}$",
                    message = "Destination must be a valid three-letter IATA airport code"
            )
            String destination,

            @NotNull(message = "Departure date is required")
            @FutureOrPresent(message = "Departure date cannot be in the past")
            LocalDate departureDate

    ) {
        @Override
        public String toString() {
            return "Slice[origin=" + origin
                    + ", destination=" + destination
                    + ", departureDate=" + departureDate + "]";
        }
    }

    public record Passenger(

            @NotBlank(message = "Passenger name is required")
            @Size(max = 100, message = "Passenger name cannot exceed 100 characters")
            String name,

            @NotNull(message = "Passenger age is required")
            @Min(value = 0, message = "Passenger age cannot be negative")
            @Max(value = 100, message = "Passenger age cannot exceed 100")
            Integer age

    ) {
    }
}