
package com.flyway.flights.details;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SupplierSearchResponse {

    private Offer data;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Offer {
        private String totalEmissionsKg;
        private List<String> intendedPaymentMethods;
        private List<Object> intendedServices;
        private List<String> availableAirlineCreditIds;
        private PaymentRequirements paymentRequirements;
        private List<String> supportedPassengerIdentityDocumentTypes;
        private Boolean passengerIdentityDocumentsRequired;
        private String taxCurrency;
        private List<AvailableService> availableServices;
        private List<String> supportedLoyaltyProgrammes;
        private List<Object> privateFares;
        private String taxAmount;
        private String baseCurrency;
        private String baseAmount;
        private String totalCurrency;
        private List<TaxBreakdown> taxBreakdown;
        private List<OfferSlice> slices;
        private String createdAt;
        private String totalAmount;
        private List<Passenger> passengers;
        private Boolean liveMode;
        private Conditions conditions;
        private String updatedAt;
        private String expiresAt;
        private Boolean partial;
        private Airline owner;
        private String id;
        private String intendedBaseAmount;
        private String intendedTotalAmount;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class AvailableService {
        private Integer maximumQuantity;
        private List<String> segmentIds;
        private List<String> passengerIds;
        private String totalCurrency;
        private String totalAmount;
        private ServiceMetadata metadata;
        private String type;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ServiceMetadata {
        private Integer maximumLengthCm;
        private Integer maximumHeightCm;
        private Integer maximumDepthCm;
        private Double maximumWeightKg;
        private String type;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class TaxBreakdown {
        private Boolean carrierImposed;
        private String amount;
        private String currency;
        private String description;
        private String name;
        private String code;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class PaymentRequirements {
        private Boolean requiresInstantPayment;
        private String priceGuaranteeExpiresAt;
        private String paymentRequiredBy;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Conditions {
        private ChangeCondition changeBeforeDeparture;
        private RefundCondition refundBeforeDeparture;
        private Object priorityCheckIn;
        private Object priorityBoarding;
        private Object advanceSeatSelection;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class ChangeCondition {
        private String penaltyCurrency;
        private String penaltyAmount;
        private Boolean allowed;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class RefundCondition {
        private String penaltyCurrency;
        private String penaltyAmount;
        private Boolean allowed;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Airline {
        private String logoSymbolUrl;
        private String logoLockupUrl;
        private String conditionsOfCarriageUrl;
        private String iataCode;
        private String name;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class OfferSlice {
        private String comparisonKey;
        private Integer ngsShelf;
        private String originType;
        private String destinationType;
        private String fareBrandName;
        private List<Segment> segments;
        private Conditions conditions;
        private String duration;
        private Airport destination;
        private Airport origin;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Segment {
        private String originTerminal;
        private String destinationTerminal;
        private Object aircraft;
        private String departingAt;
        private String arrivingAt;
        private List<Object> stops;
        private Airline operatingCarrier;
        private Airline marketingCarrier;
        private String operatingCarrierFlightNumber;
        private String marketingCarrierFlightNumber;
        private List<SegmentPassenger> passengers;
        private String distance;
        private String duration;
        private Airport destination;
        private Airport origin;
        private String id;
        private List<Object> media;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SegmentPassenger {
        private List<Baggage> baggages;
        private String cabinClassMarketingName;
        private String passengerId;
        private Cabin cabin;
        private String cabinClass;
        private String fareBasisCode;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Baggage {
        private Integer quantity;
        private String type;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Cabin {
        private Amenities amenities;
        private String marketingName;
        private String name;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Amenities {
        private Seat seat;
        private Wifi wifi;
        private Power power;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Seat {
        private String pitch;
        private String legroom;
        private String type;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Wifi {
        private String cost;
        private Boolean available;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Power {
        private Boolean available;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Airport {
        private String cityName;
        private String icaoCode;
        private String iataCityCode;
        private String iataCountryCode;
        private List<Object> airports;
        private String iataCode;
        private Double latitude;
        private Double longitude;
        private AirportCity city;
        private String timeZone;
        private String type;
        private String name;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class AirportCity {
        private String cityName;
        private String icaoCode;
        private String iataCityCode;
        private String iataCountryCode;
        private String iataCode;
        private Double latitude;
        private Double longitude;
        private String timeZone;
        private String type;
        private String name;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Passenger {
        private List<Object> loyaltyProgrammeAccounts;
        private String familyName;
        private String givenName;
        private Integer age;
        private String type;
        private String id;
    }
}
