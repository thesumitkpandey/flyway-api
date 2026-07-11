package com.flyway.search;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

import java.util.List;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Data
public class SupplierSearchRequest {

    private DataRequest data;

    @JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
    @Data
    public static class DataRequest {
        private List<Slice> slices;
        private List<Passenger> passengers;
    }

    @JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
    @Data
    public static class Slice {
        private String origin;
        private String destination;
        @JsonProperty("departure_date")
        @JsonAlias("departureDate")
        private String departureDate;
    }

    @JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
    @Data
    public static class Passenger {
        private int age;
    }
}