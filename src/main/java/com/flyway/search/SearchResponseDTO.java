package com.flyway.search;

import lombok.Data;
import java.util.List;

@Data
public class SearchResponseDTO {

    private List<FlightOffer> offers;

    @Data
    public static class FlightOffer {
        private String offerId;
        private String airline;
        private String airlineCode;
        private String flightNumber;

        private String origin;
        private String destination;

        private String departureTime;
        private String arrivalTime;
        private String duration;

        private String cabinClass;

        private String totalPrice;
        private String currency;

        private Boolean refundable;
        private Boolean changeAllowed;
    }
}