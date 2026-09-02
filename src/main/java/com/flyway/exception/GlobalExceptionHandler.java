package com.flyway.exception;

import java.util.stream.Collectors;

import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.FieldError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ApiException.class)
    public ResponseEntity<ErrorResponse> handleApiException(ApiException ex) {
        String errorCode = ex.getCode() != null ? ex.getCode() : ErrorCode.BAD_REQUEST.getCode();
        log.warn("ApiException [{}]: {}", errorCode, ex.getErrorMessage());
        return ResponseEntity
                .status(ex.getHttpStatus())
                .body(ErrorResponse.of(errorCode, ex.getErrorMessage()));
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ErrorResponse> handleValidationException(MethodArgumentNotValidException ex) {
        String message = ex.getBindingResult().getFieldErrors().stream()
                .map(FieldError::getDefaultMessage)
                .collect(Collectors.joining(", "));

        log.warn("Validation error: {}", message);
        return ResponseEntity
                .badRequest()
                .body(ErrorResponse.of(ErrorCode.VALIDATION_ERROR.getCode(), message));
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    public ResponseEntity<ErrorResponse> handleMissingParameter(MissingServletRequestParameterException ex) {
        String message = "Required parameter '" + ex.getParameterName() + "' is missing";
        log.warn("Missing parameter: {}", ex.getParameterName());
        return ResponseEntity
                .badRequest()
                .body(ErrorResponse.of(ErrorCode.BAD_REQUEST.getCode(), message));
    }

    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public ResponseEntity<ErrorResponse> handleTypeMismatch(MethodArgumentTypeMismatchException ex) {
        String message = "Invalid value for parameter '" + ex.getName() + "'";
        log.warn("Type mismatch for parameter '{}': {}", ex.getName(), ex.getValue());
        return ResponseEntity
                .badRequest()
                .body(ErrorResponse.of(ErrorCode.BAD_REQUEST.getCode(), message));
    }

    @ExceptionHandler(HttpMessageNotReadableException.class)
    public ResponseEntity<ErrorResponse> handleUnreadableMessage(HttpMessageNotReadableException ex) {
        log.warn("Malformed request body: {}", ex.getMessage());
        return ResponseEntity
                .badRequest()
                .body(ErrorResponse.of(ErrorCode.BAD_REQUEST.getCode(), "Malformed request body"));
    }

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public ResponseEntity<ErrorResponse> handleMethodNotSupported(HttpRequestMethodNotSupportedException ex) {
        log.warn("Method not supported: {}", ex.getMethod());
        return ResponseEntity
                .status(ErrorCode.BAD_REQUEST.getHttpStatus())
                .body(ErrorResponse.of(ErrorCode.BAD_REQUEST.getCode(), "HTTP method not supported"));
    }

    @ExceptionHandler(NoResourceFoundException.class)
    public ResponseEntity<ErrorResponse> handleNoResourceFound(NoResourceFoundException ex) {
        log.warn("Resource not found: {}", ex.getResourcePath());
        return ResponseEntity
                .status(ErrorCode.NOT_FOUND.getHttpStatus())
                .body(ErrorResponse.of(ErrorCode.NOT_FOUND.getCode(), ErrorCode.NOT_FOUND.getDefaultMessage()));
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResponse> handleGenericException(Exception ex) {
        log.error("Unexpected error", ex);
        return ResponseEntity
                .status(ErrorCode.INTERNAL_SERVER_ERROR.getHttpStatus())
                .body(ErrorResponse.of(
                        ErrorCode.INTERNAL_SERVER_ERROR.getCode(),
                        ErrorCode.INTERNAL_SERVER_ERROR.getDefaultMessage()));
    }
}
