package com.flyway.search;

import com.flyway.common.ApiResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/v1/flights")
@RequiredArgsConstructor
public class SearchController {

    private final SearchService searchService;

    @PostMapping("/search")
    public ResponseEntity<ApiResponse<List<SearchResponse.FlightOffer>>> searchFlights(
            @RequestBody SearchRequest request) {
        return ResponseEntity.ok(this.searchService.searchFlights(request));
    }
}