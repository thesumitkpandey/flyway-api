package com.flyway.flights.booking;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SupplierBookingResponse {

    private BookingData data;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class BookingData {
        private String voidWindowEndsAt;
        private String syncedAt;
        private List<String> availableActions;
        private List<Object> airlineInitiatedChanges;
        private String taxCurrency;
        private List<Document> documents;
        private String taxAmount;
        private String baseAmount;
        private String baseCurrency;
        private String totalCurrency;
        private List<TaxBreakdown> taxBreakdown;
        private String offerId;
        private String bookingReference;
        private List<BookingReference> bookingReferences;
        private List<Slice> slices;
        private PaymentStatus paymentStatus;
        private String totalAmount;
        private String createdAt;
        private List<Passenger> passengers;
        private Boolean liveMode;
        private Conditions conditions;
        private String cancelledAt;
        private List<Object> changes;
        private String content;
        private List<Object> services;
        private List<Object> users;
        private Object metadata;
        private String type;
        private Carrier owner;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Document {
        private List<String> passengerIds;
        private String uniqueIdentifier;
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
    public static class BookingReference {
        private String bookingReference;
        private Carrier carrier;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Carrier {
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
    public static class Slice {
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
        private Aircraft aircraft;
        private String departingAt;
        private String arrivingAt;
        private List<Object> stops;
        private Carrier operatingCarrier;
        private Carrier marketingCarrier;
        private String operatingCarrierFlightNumber;
        private String marketingCarrierFlightNumber;
        private List<SegmentPassenger> passengers;
        private String distance;
        private String duration;
        private Airport destination;
        private Airport origin;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Aircraft {
        private String iataCode;
        private String name;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SegmentPassenger {
        private List<Baggage> baggages;
        private String cabinClassMarketingName;
        private String passengerId;
        private Object seat;
        private String cabinClass;
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
    public static class Airport {
        private String cityName;
        private String iataCountryCode;
        private String iataCityCode;
        private String icaoCode;
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
        private String iataCountryCode;
        private String iataCityCode;
        private String icaoCode;
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
        private String bornOn;
        private List<Object> loyaltyProgrammeAccounts;
        private String familyName;
        private String givenName;
        private String infantPassengerId;
        private String phoneNumber;
        private String userId;
        private String gender;
        private String email;
        private String title;
        private String type;
        private String id;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class PaymentStatus {
        private String priceGuaranteeExpiresAt;
        private String paymentRequiredBy;
        private String paidAt;
        private Boolean awaitingPayment;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Conditions {
        private Condition refundBeforeDeparture;
        private Condition changeBeforeDeparture;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Condition {
        private String penaltyCurrency;
        private String penaltyAmount;
        private Boolean allowed;
    }

}