package com.flyway.common;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ApiResponse<T> {

    private boolean success;
    private String message;
    private T data;
    private String errorCode;
}