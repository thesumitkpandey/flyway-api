package com.flyway.airport;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class AirportResponse {
    private String cityName;
    private String airportName;
    private String iataCode;
}