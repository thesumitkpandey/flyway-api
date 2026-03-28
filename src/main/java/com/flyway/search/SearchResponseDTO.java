package com.flyway.search;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class SearchResponseDTO {

    private List<FlightOffer> offers;

    @Getter
    @Setter
    public static class FlightOffer {

        private String offerId;
        private double totalAmount;
        private String currency;

        private String expiresAt;

        private List<Slice> slices;

        private PassengerSummary passengerSummary;

        private Boolean refundable;
        private Boolean changeAllowed;
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

        private AirlineDetail airlineDetail;

        private String flightNumber;

        private String departureTime;
        private String arrivalTime;

        private String origin;
        private String destination;

        private String cabinClass;
    }

    @Getter
    @Setter
    public static class AirlineDetail {
        private String logo;
        private String name;
        private String iataCode;
    }

    @Getter
    @Setter
    public static class PassengerSummary {
        private int adults;
        private int children;
        private int infants;
    }
}