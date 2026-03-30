package com.flyway.exception;

import com.flyway.common.ApiResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.stream.Collectors;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    // 1. Handle Business Exceptions (Explicitly log the cause)
    @ExceptionHandler(CustomException.class)
    public ResponseEntity<ApiResponse<Object>> handleCustomException(CustomException ex) {
        log.warn("Business Exception: {} - {}", ex.getErrorCode(), ex.getMessage());

        ApiResponse<Object> response = ApiResponse.builder()
                .success(false)
                .message(ex.getMessage()) // You might want to add .errorCode(ex.getErrorCode()) here
                .data(null)
                .build();

        return ResponseEntity.status(ex.getStatus()).body(response);
    }

    // 2. Handle Validation Errors (e.g., @NotBlank, @Min)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ApiResponse<Object>> handleValidationException(MethodArgumentNotValidException ex) {
        String errors = ex.getBindingResult().getFieldErrors().stream()
                .map(error -> error.getField() + ": " + error.getDefaultMessage())
                .collect(Collectors.joining(", "));

        ApiResponse<Object> response = ApiResponse.builder()
                .success(false)
                .message("Validation failed: " + errors)
                .data(null)
                .build();

        return ResponseEntity.badRequest().body(response);
    }

    // 3. Handle System Failures (CRITICAL: Log the full stack trace)
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ApiResponse<Object>> handleGeneralException(Exception ex) {
        log.error("SYSTEM ERROR: ", ex); // This saves your life during debugging

        ApiResponse<Object> response = ApiResponse.builder()
                .success(false)
                .message("An internal error occurred. Please contact support.")
                .data(null)
                .build();

        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
    }
}