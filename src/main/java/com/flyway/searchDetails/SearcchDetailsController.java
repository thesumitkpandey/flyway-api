package com.flyway.searchDetails;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@RequestMapping("/api/v1/flights")
@RequiredArgsConstructor
public class SearcchDetailsController {

    private final SearchDetailsService searchDetailsService;

    @GetMapping("/details")
    public ResponseEntity<?> searchFlights(@RequestParam("offerId") String offerId) {
        return ResponseEntity.ok(this.searchDetailsService.searchDetails(offerId));
    }
}