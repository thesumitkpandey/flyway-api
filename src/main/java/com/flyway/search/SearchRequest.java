package com.flyway.search;

import lombok.Data;
import java.util.List;

import jakarta.validation.Valid;
import jakarta.validation.constraints.FutureOrPresent;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Pattern;

import java.time.LocalDate;

@Data
public class SearchRequest {

    @NotBlank(message = "Cabin class is required")
    @Pattern(regexp = "(?i)economy|premiumEconomy|business|first", message = "Invalid cabin class. Must be economy, premiumeconomy, business, or first")
    private String cabinClass;

    @NotEmpty(message = "At least one flight slice is required")
    @Valid // Important: validates the objects inside the list
    private List<Slice> slices;

    @NotEmpty(message = "At least one passenger is required")
    @Valid
    private List<Passenger> passengers;

    @Data
    public static class Slice {
        @NotBlank(message = "Origin is required")
        private String origin;

        @NotBlank(message = "Destination is required")
        private String destination;

        
        @NotNull(message = "Departure date is required")
        @FutureOrPresent(message = "Departure date cannot be in the past")
        private LocalDate departureDate;
    }

    @Data
    public static class Passenger {
        @NotNull(message = "Date of birth is required")
        @Past(message = "Date of birth must be in the past")
        private LocalDate bornOn;
    }
}