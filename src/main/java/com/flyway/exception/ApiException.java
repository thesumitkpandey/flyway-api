package com.flyway.exception;

import org.springframework.http.HttpStatus;

import lombok.Getter;

@Getter
public class ApiException extends RuntimeException {

    private final ErrorCode errorCode;
    private final String errorMessage;
    private final HttpStatus httpStatus;

    public ApiException(ErrorCode errorCode) {
        this(errorCode, errorCode.getDefaultMessage());
    }

    public ApiException(ErrorCode errorCode, String errorMessage) {
        super(errorMessage);
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.httpStatus = errorCode.getHttpStatus();
    }

    public ApiException(String errorCode, String errorMessage, HttpStatus httpStatus) {
        super(errorMessage);
        this.errorCode = null;
        this.errorMessage = errorMessage;
        this.httpStatus = httpStatus;
    }

    public String getCode() {
        return errorCode != null ? errorCode.getCode() : null;
    }
}
