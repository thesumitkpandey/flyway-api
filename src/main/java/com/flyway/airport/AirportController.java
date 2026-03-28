package com.flyway.airport;

import java.util.List;

import com.flyway.common.ApiResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/api/v1")
public class AirportController {

    private final AirportService airportService;

    public AirportController(AirportService airportService) {
        this.airportService = airportService;
    }

    @GetMapping("/airports/search")
    public ResponseEntity<ApiResponse<List<AirportResponse>>> searchAirports(
            @RequestParam String keyword
    ) {
        return ResponseEntity.ok(this.airportService.searchAirports(keyword));
    }
}