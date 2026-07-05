package com.flyway.search;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class SearchResponse {

    private List<Offer> offers;

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Offer {

        private String id;
        private String totalAmount;
        private String totalCurrency;
        private String airlineCode;
        private String airlineName;
        private String airlineLogo;
        private String fareBrand;
        private String departureAirport;
        private String departureCity;
        private String departureTime;
        private String arrivalAirport;
        private String arrivalCity;
        private String arrivalTime;
        private String duration;
        private int stops;
        private String cabinClass;
        private boolean refundable;
        private boolean changeable;
    }
}