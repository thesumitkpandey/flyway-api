package com.flyway.search;
import lombok.Data;
import java.util.List;
import java.time.LocalDate;

@Data
public class SearchRequest {
    private String cabinClass;
    private List<Slice> slice;
    private List<Passenger> passengers;

    @Data
    public static class Slice {
        private String origin;
        private String destination;
        private LocalDate departureDate;
    }

    @Data
    public static class Passenger {
        private LocalDate bornOn;
    }
}