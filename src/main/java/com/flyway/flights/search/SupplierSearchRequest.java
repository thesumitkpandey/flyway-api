package com.flyway.flights.search;

import java.util.List;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SupplierSearchRequest {

    private Data data;

    @Getter
    @Setter
    public static class Data {
        private List<Slice> slices;
        private List<Passenger> passengers;
        private String cabin_class;
    }

    @Getter
    @Setter
    public static class Slice {
        private String origin;
        private String destination;
        private String departure_date;
    }

    @Getter
    @Setter
    public static class Passenger {
        private String type;
    }
}
