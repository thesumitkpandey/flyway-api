package com.flyway.search;

import java.time.LocalDate;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchRequest {

    private TripType tripType;

    private CabinClass cabinClass;

    private List<FlightSegment> segments;

    private List<Passenger> passengers;

    @Getter
    @Setter
    public static class FlightSegment {

        private String origin;
        private String destination;
        private LocalDate dateOfJourney;
    }

    @Getter
    @Setter
    public static class Passenger {
        private PassengerType passengerType;
    }


    public enum TripType {
        ONE_WAY,
        ROUND_TRIP,
        MULTI_CITY
    }

    public enum CabinClass {
        ECONOMY,
        PREMIUM_ECONOMY,
        BUSINESS,
        FIRST
    }

    public enum PassengerType {
        ADULT,
        CHILD,
        INFANT
    }
}

//Example
// {
//   "tripType": "ROUND_TRIP",
//   "cabinClass": "BUSINESS",
//   "segments": [
//     {
//       "origin": "NYC",
//       "destination": "ATL",
//       "dateOfJourney": "2026-03-01"
//     },
//     {
//       "origin": "ATL",
//       "destination": "NYC",
//       "dateOfJourney": "2026-03-10"
//     }
//   ],
//   "passengers": [
//     {
//       "passengerType": "ADULT"
//     }
//   ]
// }
