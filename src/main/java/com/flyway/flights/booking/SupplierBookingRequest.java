package com.flyway.flights.booking;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SupplierBookingRequest {

    private DataPayload data;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class DataPayload {

        private String type;

        @JsonProperty("selected_offers")
        private List<String> selectedOffers;

        private List<Passenger> passengers;

        private List<Payment> payments;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Passenger {

        private String id;

        @JsonProperty("given_name")
        private String givenName;

        @JsonProperty("family_name")
        private String familyName;

        @JsonProperty("born_on")
        private String bornOn;

        private String title;

        private String gender;

        private String email;

        @JsonProperty("phone_number")
        private String phoneNumber;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Payment {

        private String type;

        private String currency;

        private String amount;
    }
}