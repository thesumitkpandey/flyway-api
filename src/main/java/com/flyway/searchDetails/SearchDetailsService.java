package com.flyway.searchDetails;

import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;

import com.flyway.exception.CustomException;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SearchDetailsService {
    private final WebClient duffelWebClient;

    public SearchDetailsService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ResponseEntity<?> searchDetails(String offerId) {
        if(offerId == null || offerId.isEmpty()) {
            throw new CustomException("Offer ID is required", HttpStatus.BAD_REQUEST);
        }
        Map<String, Object> searchDetailsResponse = duffelWebClient.get()
                .uri("/air/offers/{offerId}?return_available_services=true", offerId)
                .retrieve()
                .bodyToMono(Map.class)
                .block();

        Map<String, Object> seatMapResponse = duffelWebClient.get()
                .uri("/air/seat_maps?offer_id={offerId}", offerId)
                .retrieve()
                .bodyToMono(Map.class)
                .block();

        return ResponseEntity.ok(Map.of("searchDetails", searchDetailsResponse, "seatMap", seatMapResponse));
    }
    
    
}