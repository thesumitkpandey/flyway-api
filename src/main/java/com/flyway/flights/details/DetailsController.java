package com.flyway.flights.details;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

import tools.jackson.databind.JsonNode;

@RestController
@RequestMapping("/api/v1/flights/search")
public class DetailsController {

    private final DetailsService detailsService;

    public DetailsController(DetailsService detailsService) {
        this.detailsService = detailsService;
    }

    @GetMapping("/{offerId}")
    public ResponseEntity<ApiResponse<SupplierSearchResponse.Offer>> getOffer(
            @PathVariable("offerId") String offerId) {

        return ResponseEntity.ok(
                detailsService.getOffer(offerId)
        );
    }
}