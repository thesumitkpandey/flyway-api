package com.flyway.flights.search;

import lombok.Getter;
import lombok.Setter;
import java.util.List;

@Getter
@Setter
public class SearchResponse {
    private List<FlightOffer> offers;

    @Getter
    @Setter
    public static class FlightOffer {
        private String offerId;
        private double totalAmount;
        private String currency;
        private List<Slice> slices;
        private AirlineDetail airline; // From the 'owner' key in Duffel
    }

    @Getter
    @Setter
    public static class Slice {
        private String origin;
        private String destination;
        private String duration;
        private List<Segment> segments;
    }

    @Getter
    @Setter
    public static class Segment {
        private String origin;
        private String destination;
        private String departureTime;
        private String arrivalTime;
        private String flightNumber;
        private String cabinClass;
        private String airlineName;
    }

    @Getter
    @Setter
    public static class AirlineDetail {
        private String name;
        private String iataCode;
        private String logo;
    }
}