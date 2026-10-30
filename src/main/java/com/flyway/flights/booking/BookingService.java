package com.flyway.flights.booking;

import com.flyway.common.ApiResponse;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.WebClientResponseException;
import lombok.extern.slf4j.Slf4j;
import java.util.List;

@Service
@Slf4j
public class BookingService {

    private final WebClient duffelWebClient;

    public BookingService(WebClient duffelWebClient) {
        this.duffelWebClient = duffelWebClient;
    }

    public ApiResponse<SupplierBookingResponse> createBooking(
            BookingRequest request) {

                try {
                    SupplierBookingResponse response = duffelWebClient
                            .post()
                            .uri("/air/orders")
                            .bodyValue(request)
                            .retrieve()
                            .bodyToMono(SupplierBookingResponse.class)
                            .block();
                
                    return ApiResponse.success(
                            "Booking created successfully",
                            List.of(response)
                    );
                
                } catch (WebClientResponseException ex) {
                
                    log.error("Duffel HTTP Status: {}", ex.getStatusCode());
                    log.error("Duffel Response Body: {}", ex.getResponseBodyAsString());
                
                    throw ex;
                }
    }
}