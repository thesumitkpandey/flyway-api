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

    @JsonProperty("offer_id")
    private String offerId;

    @JsonProperty("total_amount")
    private String totalAmount;

    @JsonProperty("total_currency")
    private String totalCurrency;

    @JsonProperty("base_amount")
    private String baseAmount;

    @JsonProperty("tax_amount")
    private String taxAmount;

    @JsonProperty("expires_at")
    private String expiresAt;

    @JsonProperty("airline")
    private AirlineDetails airline;

    @JsonProperty("slices")
    private List<SliceDetails> slices;

    @JsonProperty("passengers")
    private List<PassengerDetails> passengers;

    @JsonProperty("baggage_options")
    private List<BaggageDetails> baggageOptions;

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class AirlineDetails {

        @JsonProperty("iata_code")
        private String iataCode;

        @JsonProperty("name")
        private String name;

        @JsonProperty("logo_url")
        private String logoUrl;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class SliceDetails {

        @JsonProperty("origin")
        private AirportDetails origin;

        @JsonProperty("destination")
        private AirportDetails destination;

        @JsonProperty("departing_at")
        private String departingAt;

        @JsonProperty("arriving_at")
        private String arrivingAt;

        @JsonProperty("duration")
        private String duration;

        @JsonProperty("flight_number")
        private String flightNumber;

        @JsonProperty("cabin_class")
        private String cabinClass;

        @JsonProperty("stops_count")
        private int stopsCount;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class AirportDetails {

        @JsonProperty("iata_code")
        private String iataCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("name")
        private String name;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class PassengerDetails {

        @JsonProperty("type")
        private String type;

        @JsonProperty("age")
        private Integer age;
    }

    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    public static class BaggageDetails {

        @JsonProperty("type")
        private String type;

        @JsonProperty("amount")
        private String amount;

        @JsonProperty("currency")
        private String currency;
    }
}