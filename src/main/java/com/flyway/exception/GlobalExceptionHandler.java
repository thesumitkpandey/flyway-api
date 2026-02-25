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

}
