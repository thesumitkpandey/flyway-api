package com.flyway.airport;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.flyway.common.ApiResponse;
import com.flyway.exception.CustomException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AirportService {

    private final AirportRepository airportRepository;

    public AirportService(AirportRepository airportRepository) {
        this.airportRepository = airportRepository;
    }

    public ApiResponse<List<AirportResponse>> searchAirports(String keyword) {
        if (keyword == null || keyword.trim().isEmpty()) {
            throw new CustomException(
                    "Invalid Search Keyword",
                    HttpStatus.BAD_REQUEST);
        }

        List<AirportEntity> airportResults =
                airportRepository.findByIataCodeContainingIgnoreCase(keyword);

        if(airportResults.size() ==0){
            airportResults = airportRepository.findByCityNameContainingIgnoreCase(keyword);
        }

        if(airportResults.size() ==0){
            airportResults = airportRepository.findByAirportNameContainingIgnoreCase(keyword);
        }

        List<AirportResponse> airports = new ArrayList<>();

        for (AirportEntity airport : airportResults) {
            AirportResponse airportResponse = new AirportResponse();
            airportResponse.setAirportName(airport.getAirportName());
            airportResponse.setIataCode(airport.getIataCode());
            airportResponse.setCityName(airport.getCityName());
            airports.add(airportResponse);
        }

        return ApiResponse.<List<AirportResponse>>builder()
                .success(true)
                .message("Airports fetched successfully")
                .data(airports)
                .build();
    }
}