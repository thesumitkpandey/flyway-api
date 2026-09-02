package com.flyway.airport;

import java.util.List;

import org.springframework.stereotype.Service;

import com.flyway.common.ApiResponse;
import com.flyway.exception.ApiException;
import com.flyway.exception.ErrorCode;

@Service
public class AirportService {

    private final AirportRepository airportRepository;

    public AirportService(AirportRepository airportRepository) {
        this.airportRepository = airportRepository;
    }

    public ApiResponse<List<AirportResponse>> searchAirports(String keyword) {
        if (keyword == null || keyword.isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Keyword cannot be empty");
        }

        keyword = keyword.trim();
        List<AirportEntity> results = airportRepository.findByIataCodeIgnoreCase(keyword);

        if (results.isEmpty()) {
            results = airportRepository.findByCityNameContainingIgnoreCase(keyword);
        }

        if (results.isEmpty()) {
            results = airportRepository.findByAirportNameContainingIgnoreCase(keyword);
        }

        if (results.isEmpty()) {
            throw new ApiException(ErrorCode.NOT_FOUND, "No airports found for the given keyword");
        }

        List<AirportResponse> airports = results.stream().map(this::toResponse).toList();
        return ApiResponse.success("Airports fetched successfully", airports);
    }

    private AirportResponse toResponse(AirportEntity entity) {
        AirportResponse response = new AirportResponse();
        response.setAirportName(entity.getAirportName());
        response.setCityName(entity.getCityName());
        response.setIataCode(entity.getIataCode());
        return response;
    }
}
