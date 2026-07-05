package com.flyway.search;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Data;

import java.util.List;

@Data
public class SearchRequest {

    @NotNull
    @Valid
    private DataRequest data;

    @Data
    public static class DataRequest {

        @NotEmpty(message = "At least one slice is required")
        @Valid
        private List<Slice> slices;

        @NotEmpty(message = "At least one passenger is required")
        @Valid
        private List<Passenger> passengers;
    }

    @Data
    public static class Slice {

        @NotBlank
        @Pattern(regexp = "^[A-Z]{3}$", message = "Origin must be a valid IATA code")
        private String origin;

        @NotBlank
        @Pattern(regexp = "^[A-Z]{3}$", message = "Destination must be a valid IATA code")
        private String destination;

        @NotBlank
        @Pattern(
            regexp = "^\\d{4}-\\d{2}-\\d{2}$",
            message = "Departure date must be yyyy-MM-dd"
        )
        private String departureDate;
    }

    @Data
    public static class Passenger {

        @Min(0)
        @Max(120)
        private int age;
    }
}