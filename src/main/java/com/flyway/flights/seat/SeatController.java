package com.flyway.flights.seat;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/v1/flights")
@RequiredArgsConstructor
public class SeatController {

    private final SeatService seatService;

@GetMapping("/seat")
public ResponseEntity<ApiResponse<SeatResponse>> getSeatMap(
        @RequestParam("offerId") String offerId) {
    return ResponseEntity.ok(seatService.getSeatMap(offerId));
}
}