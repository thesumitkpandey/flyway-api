
package com.flyway.common;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
@AllArgsConstructor
public class ApiResponse<T> {

    private final boolean success;
    private final String message;
    private final List<T> results;

    public static <T> ApiResponse<T> success(
            String message, List<T> data) {

        return ApiResponse.<T>builder()
                .success(true)
                .message(message)
                .results(data)
                .build();
    }

    public static ApiResponse<Void> success(String message) {
        return ApiResponse.<Void>builder()
                .success(true)
                .message(message)
                .build();
    }
}
