package com.flyway.search;

import lombok.Data;

import java.util.List;

@Data
public class SupplierResponseDTO {

    private DataWrapper data;

    @Data
    public static class DataWrapper {
        private List<String> airline_credit_ids;
        private List<Offer> offers;
        private String cabin_class;
        private Boolean live_mode;
        private String created_at;
        private List<SearchSlice> slices;
        private List<SearchPassenger> passengers;
        private String client_key;
        private String id;
    }

    @Data
    public static class Offer {
        private String id;
        private String total_amount;
        private String base_amount;
        private String tax_amount;
        private String total_currency;
        private String base_currency;
        private String tax_currency;
        private String total_emissions_kg;
        private String created_at;
        private String updated_at;
        private String expires_at;
        private Boolean partial;
        private Boolean live_mode;

        private List<Slice> slices;
        private List<Passenger> passengers;
        private Conditions conditions;
        private Owner owner;
    }

    @Data
    public static class Slice {
        private String id;
        private String duration;
        private String fare_brand_name;
        private List<Segment> segments;
        private Conditions conditions;
        private Location origin;
        private Location destination;
    }

    @Data
    public static class Segment {
        private String id;
        private String departing_at;
        private String arriving_at;
        private String duration;
        private String distance;

        private Carrier operating_carrier;
        private Carrier marketing_carrier;

        private Location origin;
        private Location destination;

        private List<SegmentPassenger> passengers;
    }

    @Data
    public static class Carrier {
        private String id;
        private String name;
        private String iata_code;
        private String logo_symbol_url;
        private String logo_lockup_url;
        private String conditions_of_carriage_url;
    }

    @Data
    public static class Passenger {
        private String id;
        private String type;
        private Integer age;
        private String given_name;
        private String family_name;
    }

    @Data
    public static class SegmentPassenger {
        private String passenger_id;
        private String cabin_class;
        private String cabin_class_marketing_name;
        private Cabin cabin;
        private List<Baggage> baggages;
    }

    @Data
    public static class Cabin {
        private String name;
        private String marketing_name;
    }

    @Data
    public static class Baggage {
        private Integer quantity;
        private String type;
    }

    @Data
    public static class Conditions {
        private Penalty refund_before_departure;
        private Penalty change_before_departure;
    }

    @Data
    public static class Penalty {
        private Boolean allowed;
        private String penalty_amount;
        private String penalty_currency;
    }

    @Data
    public static class Owner {
        private String id;
        private String name;
        private String iata_code;
        private String logo_symbol_url;
        private String logo_lockup_url;
        private String conditions_of_carriage_url;
    }

    @Data
    public static class Location {
        private String id;
        private String name;
        private String iata_code;
        private String city_name;
        private String iata_city_code;
        private String time_zone;
        private String type;
    }

    @Data
    public static class SearchSlice {
        private String departure_date;
        private Location origin;
        private Location destination;
    }

    @Data
    public static class SearchPassenger {
        private String id;
        private String type;
        private Integer age;
    }
}