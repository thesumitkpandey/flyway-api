package com.flyway.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import lombok.extern.slf4j.Slf4j;

@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

        @ExceptionHandler(CustomException.class)
        public ResponseEntity<CustomErrorResponse> handleKnownExceptions(CustomException ex) {

                CustomErrorResponse response = new CustomErrorResponse(
                                false,
                                ex.getErrorCode(),
                                ex.getMessage());

                return ResponseEntity
                                .status(ex.getHttpStatus())
                                .body(response);
        }

        @ExceptionHandler(Exception.class)
        public ResponseEntity<CustomErrorResponse> handleUnknownExceptions(Exception ex) {
                log.error("Unexpected error occurred", ex);
                CustomErrorResponse response = new CustomErrorResponse(
                                false,
                                "INTERNAL_ERROR",
                                "An unexpected error occurred");

                return ResponseEntity
                                .status(HttpStatus.INTERNAL_SERVER_ERROR)
                                .body(response);
        }
}
