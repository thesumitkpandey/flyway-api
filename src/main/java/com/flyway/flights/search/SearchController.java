
package com.flyway.flights.search;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

@RestController
@RequestMapping("/api/v1/flights/search")
public class SearchController {

    private final SearchService searchService;

    public SearchController(SearchService searchService) {
        this.searchService = searchService;
    }

    @PostMapping
    public ResponseEntity<ApiResponse<SearchResponse.Offer>> search(
            @RequestBody SearchRequest request) {

        return ResponseEntity.ok(
                searchService.searchFlights(request)
        );
    }
}
