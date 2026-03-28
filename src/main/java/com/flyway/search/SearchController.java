package com.flyway.search;

import com.flyway.common.ApiResponse;
import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/flights")
@RequiredArgsConstructor
public class SearchController {

    private final SearchService searchService;

@PostMapping("/search")
public ResponseEntity<ApiResponse<List<SearchResponseDTO.FlightOffer>>> searchFlights(
        @RequestBody SearchRequestDTO request) {

    SearchResponseDTO result = searchService.searchFlights(request);

    ApiResponse<List<SearchResponseDTO.FlightOffer>> response =
            ApiResponse.<List<SearchResponseDTO.FlightOffer>>builder()
                    .success(true)
                    .message("Flights fetched successfully")
                    .data(result.getOffers())   // 👈 return only array
                    .build();

    return ResponseEntity.ok(response);
}
}