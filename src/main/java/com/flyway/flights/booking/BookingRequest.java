package com.flyway.flights.booking;

import java.time.LocalDate;
import java.util.List;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Size;

public record BookingRequest(

        @NotBlank(message = "Offer ID is required")
        @Size(max = 100, message = "Offer ID cannot exceed 100 characters")
        String offerId,

        @NotEmpty(message = "At least one passenger is required")
        @Size(max = 10, message = "A maximum of 10 passengers is allowed")
        List<@NotNull @Valid Passenger> passengers,

        @NotNull(message = "Payment details are required")
        @Valid
        Payment payment

) {

    public record Passenger(

            @NotBlank(message = "Passenger ID is required")
            @Size(max = 100, message = "Passenger ID cannot exceed 100 characters")
            String passengerId,

            @NotBlank(message = "Given name is required")
            @Size(max = 100, message = "Given name cannot exceed 100 characters")
            @Pattern(
                    regexp = "^[\\p{L}][\\p{L} '\\-]*$",
                    message = "Given name contains invalid characters"
            )
            String givenName,

            @NotBlank(message = "Family name is required")
            @Size(max = 100, message = "Family name cannot exceed 100 characters")
            @Pattern(
                    regexp = "^[\\p{L}][\\p{L} '\\-]*$",
                    message = "Family name contains invalid characters"
            )
            String familyName,

            @NotNull(message = "Date of birth is required")
            @Past(message = "Date of birth must be in the past")
            LocalDate bornOn,

            @NotBlank(message = "Passenger title is required")
            @Pattern(
                    regexp = "(?i)^(mr|mrs|ms|miss|mx|dr)$",
                    message = "Invalid passenger title"
            )
            String title,

            @NotBlank(message = "Gender is required")
            @Pattern(
                    regexp = "(?i)^(m|f|male|female|other)$",
                    message = "Gender must be m, f, male, female or other"
            )
            String gender,

            @NotBlank(message = "Email is required")
            @Email(message = "Invalid email address")
            @Size(max = 254, message = "Email cannot exceed 254 characters")
            String email,

            @NotBlank(message = "Phone number is required")
            @Pattern(
                    regexp = "^\\+[1-9]\\d{7,14}$",
                    message = "Phone number must be in international format, e.g. +919876543210"
            )
            String phoneNumber

    ) {
    }

    public record Payment(

            @NotBlank(message = "Payment type is required")
            @Pattern(
                    regexp = "^(balance)$",
                    message = "Currently only balance payment is supported"
            )
            String type

    ) {
    }
}