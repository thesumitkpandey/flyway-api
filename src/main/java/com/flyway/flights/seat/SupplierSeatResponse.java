package com.flyway.flights.seat;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import java.util.List;

@Data
public class SupplierSeatResponse {

    private List<SeatMapData> data;

    @Data
    public static class SeatMapData {

        private String id;

        @JsonProperty("segment_id")
        private String segmentId;

        @JsonProperty("slice_id")
        private String sliceId;

        private List<Cabin> cabins;
    }

    @Data
    public static class Cabin {

        private int aisles;

        @JsonProperty("cabin_class")
        private String cabinClass;

        private int deck;

        private List<Row> rows;

        private Wings wings;
    }

    @Data
    public static class Wings {

        @JsonProperty("first_row_index")
        private int firstRowIndex;

        @JsonProperty("last_row_index")
        private int lastRowIndex;
    }

    @Data
    public static class Row {
        private List<Section> sections;
    }

    @Data
    public static class Section {
        private List<Element> elements;
    }

    @Data
    public static class Element {

        @JsonProperty("available_services")
        private List<Service> availableServices;

        private String designator;

        private List<String> disclosures;

        private String name;

        private String type; // seat, exit_row, lavatory, galley
    }

    @Data
    public static class Service {

        private String id;

        @JsonProperty("passenger_id")
        private String passengerId;

        @JsonProperty("total_amount")
        private String totalAmount;

        @JsonProperty("total_currency")
        private String totalCurrency;
    }
}