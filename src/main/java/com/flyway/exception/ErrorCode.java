package com.flyway.exception;
import org.springframework.http.HttpStatus;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
//It contains the error codes and the message, the message is default but can be overridden by the application.
@Getter
@RequiredArgsConstructor
public enum ErrorCode {

    NOT_FOUND("NOT_FOUND", "This content is not available", HttpStatus.NOT_FOUND),
    BAD_REQUEST("BAD_REQUEST", "The request is invalid", HttpStatus.BAD_REQUEST),
    VALIDATION_ERROR("VALIDATION_ERROR", "Validation failed", HttpStatus.BAD_REQUEST),
    INTERNAL_SERVER_ERROR("INTERNAL_SERVER_ERROR", "An unexpected error occurred", HttpStatus.INTERNAL_SERVER_ERROR);

    private final String code;
    private final String defaultMessage;
    private final HttpStatus httpStatus;
}
