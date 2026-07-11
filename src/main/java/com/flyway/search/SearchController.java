package com.flyway.search;

import java.util.List;

import com.flyway.common.ApiResponse;

import jakarta.validation.Valid;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/api/v1")
public class SearchController {

    private final SearchService searchService;

    public SearchController(SearchService searchService) {
        this.searchService = searchService;
    }

    @GetMapping("/search")
    public ResponseEntity<ApiResponse<List<SearchResponse>>> search(
        @Valid @RequestBody SearchRequest request
    ) {
        return ResponseEntity.ok(this.searchService.search(request));
    }

    @GetMapping("/search/{id}")
    public ResponseEntity<ApiResponse<SearchDetailsResponse>> searchById(
            @PathVariable("id") String id) {

        return ResponseEntity.ok(searchService.searchById(id));
    }
}