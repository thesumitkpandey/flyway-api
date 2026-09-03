package com.flyway.auth;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AuthResponse {
    private Integer id;
    private String email;
    private String fullName;
    private String token;
}
