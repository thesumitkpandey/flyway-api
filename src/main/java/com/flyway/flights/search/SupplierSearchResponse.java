
package com.flyway.flights.search;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SupplierSearchResponse {

    private DataWrapper data;

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class DataWrapper {
        private List<String> airlineCreditIds;
        private List<Offer> offers;
        private String cabinClass;
        private List<SliceRequest> slices;
        private String createdAt;
        private Boolean liveMode;
        private List<Passenger> passengers;
        private String clientKey;
        private String id;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Offer {
        private String createdAt;
        private String updatedAt;
        private String id;
        private Boolean liveMode;
        private String expiresAt;

        private List<String> supportedLoyaltyProgrammes;

        private String baseAmount;
        private String intendedBaseAmount;
        private String baseCurrency;
        private String taxAmount;
        private String taxCurrency;
        private String totalAmount;
        private String intendedTotalAmount;
        private String totalCurrency;
        private String totalEmissionsKg;

        private Boolean passengerIdentityDocumentsRequired;
        private List<String> supportedPassengerIdentityDocumentTypes;
        private Boolean partial;
        private List<Object> privateFares;

        private Conditions conditions;
        private Airline owner;
        private List<OfferSlice> slices;
        private List<Passenger> passengers;

        private Object availableServices;
        private PaymentRequirements paymentRequirements;
        private Object intendedServices;
        private List<String> availableAirlineCreditIds;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Conditions {
        private ChangeCondition changeBeforeDeparture;
        private RefundCondition refundBeforeDeparture;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ChangeCondition {
        private Boolean allowed;
        private String penaltyAmount;
        private String penaltyCurrency;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class RefundCondition {
        private Boolean allowed;
        private String penaltyAmount;
        private String penaltyCurrency;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Airline {
        private String conditionsOfCarriageUrl;
        private String iataCode;
        private String id;
        private String logoLockupUrl;
        private String logoSymbolUrl;
        private String name;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class OfferSlice {
        private String id;
        private String duration;
        private String destinationType;
        private String originType;
        private String fareBrandName;
        private Integer ngsShelf;
        private Conditions conditions;
        private String comparisonKey;
        private Airport origin;
        private Airport destination;
        private List<Segment> segments;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Segment {
        private String id;
        private String arrivingAt;
        private String departingAt;
        private String destinationTerminal;
        private String distance;
        private String duration;
        private String marketingCarrierFlightNumber;
        private String operatingCarrierFlightNumber;
        private String originTerminal;
        private List<Object> media;
        private List<SegmentPassenger> passengers;
        private List<Object> stops;
        private Object aircraft;
        private Airline marketingCarrier;
        private Airline operatingCarrier;
        private Airport origin;
        private Airport destination;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SegmentPassenger {
        private String passengerId;
        private String cabinClass;
        private String cabinClassMarketingName;
        private String fareBasisCode;
        private List<Baggage> baggages;
        private Cabin cabin;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Baggage {
        private String type;
        private Integer quantity;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Cabin {
        private String marketingName;
        private String name;
        private Amenities amenities;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Amenities {
        private Wifi wifi;
        private Seat seat;
        private Power power;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Wifi {
        private Boolean available;
        private String cost;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Seat {
        private String type;
        private String legroom;
        private String pitch;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Power {
        private Boolean available;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Airport {
        private String iataCode;
        private String iataCountryCode;
        private String id;
        private String name;
        private Double latitude;
        private Double longitude;
        private String icaoCode;
        private String timeZone;
        private String cityName;
        private String iataCityCode;
        private String type;
        private AirportCity city;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class AirportCity {
        private String iataCode;
        private String iataCountryCode;
        private String id;
        private String name;
        private Double latitude;
        private Double longitude;
        private String icaoCode;
        private String timeZone;
        private String cityName;
        private String iataCityCode;
        private String type;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Passenger {
        private String id;
        private String type;
        private String fareType;
        private Integer age;
        private String givenName;
        private String familyName;
        private String userId;
        private List<Object> loyaltyProgrammeAccounts;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class PaymentRequirements {
        private Boolean requiresInstantPayment;
        private String paymentRequiredBy;
        private String priceGuaranteeExpiresAt;
    }

    @lombok.Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SliceRequest {
        private String originType;
        private String destinationType;
        private String departureDate;
        private Airport origin;
        private Airport destination;
    }
}
