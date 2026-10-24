package com.flyway.auth;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ForgetPasswordRequest {
    private String email;
    private String newPassword;
}
