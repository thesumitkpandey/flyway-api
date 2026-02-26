package com.flyway.search;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class SearchController {

    private final SearchService searchService;

    public  SearchController(SearchService searchService){
        this.searchService = searchService;
    }
    @PostMapping("/api/flights/search")
    public SearchResponseDTO searchFlights(@RequestBody SearchRequestDTO requestBody) {
        return this.searchService.searchFlights(requestBody);
    }
}
