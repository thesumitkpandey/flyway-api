package com.flyway.search;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Root wrapper: { "data": { ... } }
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonIgnoreProperties(ignoreUnknown = true)
public class SupplierSearchDetailResponse {

    @JsonProperty("data")
    private FlightOfferData data;

    // ============================================================
    // Top level "data" object
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class FlightOfferData {

        @JsonProperty("intended_payment_methods")
        private List<Object> intendedPaymentMethods;

        @JsonProperty("total_emissions_kg")
        private String totalEmissionsKg;

        @JsonProperty("intended_services")
        private List<Object> intendedServices;

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
        private List<AvailableService> availableServices;

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

        @JsonProperty("live_mode")
        private boolean liveMode;

        @JsonProperty("total_amount")
        private String totalAmount;

        @JsonProperty("created_at")
        private String createdAt;

        @JsonProperty("slices")
        private List<Slice> slices;

        @JsonProperty("passengers")
        private List<Passenger> passengers;

        @JsonProperty("conditions")
        private OfferConditions conditions;

        @JsonProperty("updated_at")
        private String updatedAt;

        @JsonProperty("expires_at")
        private String expiresAt;

        @JsonProperty("partial")
        private boolean partial;

        @JsonProperty("owner")
        private Airline owner;

        @JsonProperty("id")
        private String id;
    }

    // ============================================================
    // payment_requirements
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class PaymentRequirements {

        @JsonProperty("requires_instant_payment")
        private boolean requiresInstantPayment;

        @JsonProperty("price_guarantee_expires_at")
        private String priceGuaranteeExpiresAt;

        @JsonProperty("payment_required_by")
        private String paymentRequiredBy;
    }

    // ============================================================
    // available_services[]
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class AvailableService {

        @JsonProperty("maximum_quantity")
        private Integer maximumQuantity;

        @JsonProperty("segment_ids")
        private List<String> segmentIds;

        @JsonProperty("passenger_ids")
        private List<String> passengerIds;

        @JsonProperty("total_currency")
        private String totalCurrency;

        @JsonProperty("total_amount")
        private String totalAmount;

        @JsonProperty("metadata")
        private ServiceMetadata metadata;

        @JsonProperty("type")
        private String type;

        @JsonProperty("id")
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class ServiceMetadata {

        @JsonProperty("maximum_length_cm")
        private Integer maximumLengthCm;

        @JsonProperty("maximum_height_cm")
        private Integer maximumHeightCm;

        @JsonProperty("maximum_depth_cm")
        private Integer maximumDepthCm;

        @JsonProperty("maximum_weight_kg")
        private Integer maximumWeightKg;

        @JsonProperty("type")
        private String type;
    }

    // ============================================================
    // slices[]
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Slice {

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

        @JsonProperty("segments")
        private List<Segment> segments;

        @JsonProperty("conditions")
        private SliceConditions conditions;

        @JsonProperty("duration")
        private String duration;

        @JsonProperty("destination")
        private Place destination;

        @JsonProperty("origin")
        private Place origin;

        @JsonProperty("id")
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class SliceConditions {

        @JsonProperty("change_before_departure")
        private Penalty changeBeforeDeparture;

        @JsonProperty("priority_check_in")
        private Object priorityCheckIn;

        @JsonProperty("priority_boarding")
        private Object priorityBoarding;

        @JsonProperty("advance_seat_selection")
        private Object advanceSeatSelection;
    }

    // ============================================================
    // segments[]
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Segment {

        @JsonProperty("origin_terminal")
        private String originTerminal;

        @JsonProperty("destination_terminal")
        private String destinationTerminal;

        @JsonProperty("aircraft")
        private Object aircraft;

        @JsonProperty("departing_at")
        private String departingAt;

        @JsonProperty("arriving_at")
        private String arrivingAt;

        @JsonProperty("stops")
        private List<Object> stops;

        @JsonProperty("operating_carrier")
        private Airline operatingCarrier;

        @JsonProperty("marketing_carrier")
        private Airline marketingCarrier;

        @JsonProperty("operating_carrier_flight_number")
        private String operatingCarrierFlightNumber;

        @JsonProperty("marketing_carrier_flight_number")
        private String marketingCarrierFlightNumber;

        @JsonProperty("passengers")
        private List<SegmentPassenger> passengers;

        @JsonProperty("distance")
        private String distance;

        @JsonProperty("duration")
        private String duration;

        @JsonProperty("destination")
        private Place destination;

        @JsonProperty("origin")
        private Place origin;

        @JsonProperty("id")
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class SegmentPassenger {

        @JsonProperty("baggages")
        private List<Baggage> baggages;

        @JsonProperty("cabin_class_marketing_name")
        private String cabinClassMarketingName;

        @JsonProperty("passenger_id")
        private String passengerId;

        @JsonProperty("cabin")
        private Cabin cabin;

        @JsonProperty("cabin_class")
        private String cabinClass;

        @JsonProperty("fare_basis_code")
        private String fareBasisCode;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Baggage {

        @JsonProperty("quantity")
        private Integer quantity;

        @JsonProperty("type")
        private String type;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Cabin {

        @JsonProperty("amenities")
        private CabinAmenities amenities;

        @JsonProperty("marketing_name")
        private String marketingName;

        @JsonProperty("name")
        private String name;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class CabinAmenities {

        @JsonProperty("seat")
        private Seat seat;

        @JsonProperty("wifi")
        private Wifi wifi;

        @JsonProperty("power")
        private Power power;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Seat {

        @JsonProperty("pitch")
        private String pitch;

        @JsonProperty("legroom")
        private String legroom;

        @JsonProperty("type")
        private String type;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Wifi {

        @JsonProperty("cost")
        private String cost;

        @JsonProperty("available")
        private boolean available;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Power {

        @JsonProperty("available")
        private boolean available;
    }

    // ============================================================
    // Airline (used for operating_carrier / marketing_carrier / owner)
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Airline {

        @JsonProperty("logo_symbol_url")
        private String logoSymbolUrl;

        @JsonProperty("logo_lockup_url")
        private String logoLockupUrl;

        @JsonProperty("conditions_of_carriage_url")
        private String conditionsOfCarriageUrl;

        @JsonProperty("iata_code")
        private String iataCode;

        @JsonProperty("name")
        private String name;

        @JsonProperty("id")
        private String id;
    }

    // ============================================================
    // Place (used for origin / destination, and nested "city")
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Place {

        @JsonProperty("iata_city_code")
        private String iataCityCode;

        @JsonProperty("city_name")
        private String cityName;

        @JsonProperty("airports")
        private List<Object> airports;

        @JsonProperty("icao_code")
        private String icaoCode;

        @JsonProperty("iata_country_code")
        private String iataCountryCode;

        @JsonProperty("iata_code")
        private String iataCode;

        @JsonProperty("latitude")
        private Double latitude;

        @JsonProperty("longitude")
        private Double longitude;

        @JsonProperty("city")
        private Place city;

        @JsonProperty("time_zone")
        private String timeZone;

        @JsonProperty("type")
        private String type;

        @JsonProperty("name")
        private String name;

        @JsonProperty("id")
        private String id;
    }

    // ============================================================
    // passengers[]
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Passenger {

        @JsonProperty("loyalty_programme_accounts")
        private List<Object> loyaltyProgrammeAccounts;

        @JsonProperty("family_name")
        private String familyName;

        @JsonProperty("given_name")
        private String givenName;

        @JsonProperty("age")
        private Integer age;

        @JsonProperty("type")
        private String type;

        @JsonProperty("id")
        private String id;
    }

    // ============================================================
    // Top-level "conditions" object
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class OfferConditions {

        @JsonProperty("refund_before_departure")
        private Penalty refundBeforeDeparture;

        @JsonProperty("change_before_departure")
        private Penalty changeBeforeDeparture;
    }

    // ============================================================
    // Shared penalty/refund/change structure
    // ============================================================
    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Penalty {

        @JsonProperty("penalty_currency")
        private String penaltyCurrency;

        @JsonProperty("penalty_amount")
        private String penaltyAmount;

        @JsonProperty("allowed")
        private boolean allowed;
    }
}