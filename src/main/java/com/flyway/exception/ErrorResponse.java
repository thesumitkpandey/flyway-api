package com.flyway.exception;

import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ErrorResponse {

    private final boolean success;
    private final String errorCode;
    private final String errorMessage;

    public static ErrorResponse of(String errorCode, String errorMessage) {
        return ErrorResponse.builder()
                .success(false)
                .errorCode(errorCode)
                .errorMessage(errorMessage)
                .build();
    }
}
