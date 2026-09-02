package com.flyway.airport;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

@RestController
@RequestMapping("/api/v1/airports")
public class AirportController {

    private final AirportService airportService;

    public AirportController(AirportService airportService) {
        this.airportService = airportService;
    }

    @GetMapping("/search")
    public ResponseEntity<ApiResponse<List<AirportResponse>>> searchAirports(
            @RequestParam("keyword") String keyword) {
        return ResponseEntity.ok(airportService.searchAirports(keyword));
    }
}
