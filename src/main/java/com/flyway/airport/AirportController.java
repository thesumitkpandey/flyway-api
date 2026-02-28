package com.flyway.airport;

import java.util.List;

import com.flyway.common.ApiResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class AirportController {

    private final AirportService airportService;

    public AirportController(AirportService airportService) {
        this.airportService = airportService;
    }

    @GetMapping("/api/airports/search")
    public ResponseEntity<ApiResponse<List<AirportResponseDTO>>> searchAirports(
            @RequestParam String keyword
    ) {

        log.info("Searching airports for keyword: {}", keyword);

        List<AirportResponseDTO> airports = airportService.searchAirports(keyword);

        ApiResponse<List<AirportResponseDTO>> response =
                ApiResponse.<List<AirportResponseDTO>>builder()
                        .success(true)
                        .message("Airports fetched successfully")
                        .data(airports)
                        .build();

        return ResponseEntity.ok(response);
    }
}