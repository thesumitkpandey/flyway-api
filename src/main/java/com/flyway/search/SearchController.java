package com.flyway.search;

import com.flyway.common.ApiResponse;
import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/flights")
@RequiredArgsConstructor
public class SearchController {

    private final SearchService searchService;

@PostMapping("/search")
public ResponseEntity<ApiResponse<List<SearchResponse.FlightOffer>>> searchFlights(
        @RequestBody SearchRequest request) {

    SearchResponse result = searchService.searchFlights(request);

    ApiResponse<List<SearchResponse.FlightOffer>> response =
            ApiResponse.<List<SearchResponse.FlightOffer>>builder()
                    .success(true)
                    .message("Flights fetched successfully")
                    .data(result.getOffers())   // 👈 return only array
                    .build();

    return ResponseEntity.ok(response);
}
}