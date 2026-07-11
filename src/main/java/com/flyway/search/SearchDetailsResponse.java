package com.flyway.search;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Minimal, client-facing representation of a flight search/offer.
 * Only the fields a consumer actually needs are exposed here —
 * everything else from the supplier payload (Duffel-style offer) is dropped.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SearchDetailsResponse {

    private String offerId;

    private String totalAmount;

    private String totalCurrency;

    private String baseAmount;

    private String taxAmount;

    private String expiresAt;

    private AirlineDetails airline;

    private List<SliceDetails> slices;

    private List<PassengerDetails> passengers;

    private List<BaggageDetails> baggageOptions;

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class AirlineDetails {

        private String iataCode;

        private String name;

        private String logoUrl;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class SliceDetails {

        private AirportDetails origin;

        private AirportDetails destination;

        private String departingAt;

        private String arrivingAt;

        private String duration;

        private String flightNumber;

        private String cabinClass;

        private int stopsCount;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class AirportDetails {

        private String iataCode;

        private String cityName;

        private String name;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class PassengerDetails {

        private String type;

        private Integer age;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class BaggageDetails {

        private String type;

        private String amount;

        private String currency;
    }
}