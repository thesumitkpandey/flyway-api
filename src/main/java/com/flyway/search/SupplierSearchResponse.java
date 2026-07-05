package com.flyway.search;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SupplierSearchResponse {

    private DataResponse data;

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class DataResponse {
        @JsonProperty("airline_credit_ids")
        private List<String> airlineCreditIds;

        private List<Offer> offers;

        @JsonProperty("cabin_class")
        private String cabinClass;

        @JsonProperty("live_mode")
        private boolean liveMode;

        @JsonProperty("created_at")
        private String createdAt;

        private List<SearchSlice> slices;

        private List<Passenger> passengers;

        @JsonProperty("client_key")
        private String clientKey;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Offer {
        @JsonProperty("total_emissions_kg")
        private String totalEmissionsKg;

        @JsonProperty("intended_total_amount")
        private String intendedTotalAmount;

        @JsonProperty("intended_services")
        private Object intendedServices;

        @JsonProperty("intended_base_amount")
        private String intendedBaseAmount;

        @JsonProperty("available_airline_credit_ids")
        private List<String> availableAirlineCreditIds;

        @JsonProperty("payment_requirements")
        private PaymentRequirements paymentRequirements;

        @JsonProperty("supported_passenger_identity_document_types")
        private List<String> supportedPassengerIdentityDocumentTypes;

        @JsonProperty("passenger_identity_documents_required")
        private boolean passengerIdentityDocumentsRequired;

        @JsonProperty("tax_currency")
        private String taxCurrency;

        @JsonProperty("available_services")
        private Object availableServices;

        @JsonProperty("supported_loyalty_programmes")
        private List<Object> supportedLoyaltyProgrammes;

        @JsonProperty("private_fares")
        private List<Object> privateFares;

        @JsonProperty("tax_amount")
        private String taxAmount;

        @JsonProperty("base_amount")
        private String baseAmount;

        @JsonProperty("base_currency")
        private String baseCurrency;

        @JsonProperty("total_currency")
        private String totalCurrency;

        @JsonProperty("total_amount")
        private String totalAmount;

        @JsonProperty("live_mode")
        private boolean liveMode;

        @JsonProperty("created_at")
        private String createdAt;

        private List<OfferSlice> slices;

        private List<Passenger> passengers;

        private Conditions conditions;

        @JsonProperty("updated_at")
        private String updatedAt;

        @JsonProperty("expires_at")
        private String expiresAt;

        private boolean partial;

        private Carrier owner;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class PaymentRequirements {
        @JsonProperty("requires_instant_payment")
        private boolean requiresInstantPayment;

        @JsonProperty("price_guarantee_expires_at")
        private String priceGuaranteeExpiresAt;

        @JsonProperty("payment_required_by")
        private String paymentRequiredBy;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class OfferSlice {
        @JsonProperty("comparison_key")
        private String comparisonKey;

        @JsonProperty("ngs_shelf")
        private Integer ngsShelf;

        @JsonProperty("destination_type")
        private String destinationType;

        @JsonProperty("origin_type")
        private String originType;

        @JsonProperty("fare_brand_name")
        private String fareBrandName;

        private List<Segment> segments;

        private Conditions conditions;

        private String duration;

        private Location destination;

        private Location origin;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Segment {
        @JsonProperty("origin_terminal")
        private String originTerminal;

        @JsonProperty("destination_terminal")
        private String destinationTerminal;

        private Object aircraft;

        @JsonProperty("departing_at")
        private String departingAt;

        @JsonProperty("arriving_at")
        private String arrivingAt;

        private List<Object> stops;

        @JsonProperty("operating_carrier_flight_number")
        private String operatingCarrierFlightNumber;

        @JsonProperty("operating_carrier")
        private Carrier operatingCarrier;

        @JsonProperty("marketing_carrier_flight_number")
        private String marketingCarrierFlightNumber;

        @JsonProperty("marketing_carrier")
        private Carrier marketingCarrier;

        private List<PassengerSegment> passengers;

        private String distance;

        private List<Object> media;

        private String duration;

        private Location destination;

        private Location origin;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Carrier {
        @JsonProperty("logo_symbol_url")
        private String logoSymbolUrl;

        @JsonProperty("logo_lockup_url")
        private String logoLockupUrl;

        @JsonProperty("conditions_of_carriage_url")
        private String conditionsOfCarriageUrl;

        @JsonProperty("iata_code")
        private String iataCode;

        private String name;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class PassengerSegment {
        private List<Baggage> baggages;

        @JsonProperty("cabin_class_marketing_name")
        private String cabinClassMarketingName;

        @JsonProperty("passenger_id")
        private String passengerId;

        private Cabin cabin;

        @JsonProperty("cabin_class")
        private String cabinClass;

        @JsonProperty("fare_basis_code")
        private String fareBasisCode;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Baggage {
        private int quantity;
        private String type;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Cabin {
        private Amenities amenities;

        @JsonProperty("marketing_name")
        private String marketingName;

        private String name;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Amenities {
        private Seat seat;
        private Wifi wifi;
        private Power power;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Seat {
        private String pitch;
        private String legroom;
        private String type;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Wifi {
        private String cost;
        private boolean available;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Power {
        private boolean available;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Location {
        @JsonProperty("iata_country_code")
        private String iataCountryCode;

        @JsonProperty("iata_city_code")
        private String iataCityCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("icao_code")
        private String icaoCode;

        @JsonProperty("iata_code")
        private String iataCode;

        private Double latitude;
        private Double longitude;
        private City city;

        @JsonProperty("time_zone")
        private String timeZone;

        private String type;
        private String name;
        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class City {
        @JsonProperty("iata_country_code")
        private String iataCountryCode;

        @JsonProperty("iata_city_code")
        private String iataCityCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("icao_code")
        private String icaoCode;

        @JsonProperty("iata_code")
        private String iataCode;

        private Double latitude;
        private Double longitude;

        @JsonProperty("time_zone")
        private String timeZone;

        private String type;
        private String name;
        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Conditions {
        @JsonProperty("change_before_departure")
        private Penalty changeBeforeDeparture;

        @JsonProperty("refund_before_departure")
        private Penalty refundBeforeDeparture;

        @JsonProperty("priority_check_in")
        private Object priorityCheckIn;

        @JsonProperty("priority_boarding")
        private Object priorityBoarding;

        @JsonProperty("advance_seat_selection")
        private Object advanceSeatSelection;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Penalty {
        @JsonProperty("penalty_currency")
        private String penaltyCurrency;

        @JsonProperty("penalty_amount")
        private String penaltyAmount;

        private boolean allowed;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Passenger {
        @JsonProperty("loyalty_programme_accounts")
        private List<Object> loyaltyProgrammeAccounts;

        @JsonProperty("fare_type")
        private String fareType;

        @JsonProperty("family_name")
        private String familyName;

        @JsonProperty("given_name")
        private String givenName;

        private Integer age;
        private String type;

        @JsonProperty("user_id")
        private String userId;

        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SearchSlice {
        @JsonProperty("destination_type")
        private String destinationType;

        @JsonProperty("origin_type")
        private String originType;

        @JsonProperty("departure_date")
        private String departureDate;

        private SearchLocation destination;
        private Location origin;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SearchLocation {
        private List<Airport> airports;

        @JsonProperty("iata_country_code")
        private String iataCountryCode;

        @JsonProperty("iata_city_code")
        private String iataCityCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("icao_code")
        private String icaoCode;

        @JsonProperty("iata_code")
        private String iataCode;

        private Double latitude;
        private Double longitude;

        @JsonProperty("time_zone")
        private String timeZone;

        private String type;
        private String name;
        private String id;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Airport {
        @JsonProperty("iata_country_code")
        private String iataCountryCode;

        @JsonProperty("iata_city_code")
        private String iataCityCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("icao_code")
        private String icaoCode;

        @JsonProperty("iata_code")
        private String iataCode;

        private Double latitude;
        private Double longitude;

        @JsonProperty("time_zone")
        private String timeZone;

        private String type;
        private String name;
        private String id;
    }
}
