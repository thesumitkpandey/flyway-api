package com.flyway.flights.booking;

import com.flyway.common.ApiResponse;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/flights/booking")
public class BookingController {

    private final BookingService bookingService;

    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @PostMapping
    public ResponseEntity<ApiResponse<SupplierBookingResponse>> createBooking(
            @Valid @RequestBody BookingRequest request) {

        return ResponseEntity.ok(
                bookingService.createBooking(request)
        );
    }
}