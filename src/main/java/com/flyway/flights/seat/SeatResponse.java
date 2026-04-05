package com.flyway.flights.seat;

import lombok.Data;
import java.util.List;

@Data
public class SeatResponse {

    private String seatMapId;
    private String segmentId;
    private String sliceId;
    private List<Cabin> cabins;

    @Data
    public static class Cabin {
        private String cabinClass;
        private int deck;
        private int aisles;
        private int wingStart;
        private int wingEnd;
        private List<Row> rows;
    }

    @Data
    public static class Row {
        private int rowNumber;
        private List<Seat> seats;
    }

    @Data
    public static class Seat {
        private String seatNumber;
        private String type;
        private boolean available;
        private List<Service> services;
    }

    @Data
    public static class Service {
        private String serviceId;
        private String passengerId;
        private String amount;
        private String currency;
    }
}