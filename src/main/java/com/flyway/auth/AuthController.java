package com.flyway.auth;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

@RestController
@RequestMapping("/api/v1/auth")
public class AuthController {

    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/signup")
    public ResponseEntity<ApiResponse<AuthResponse>> signup(@RequestBody SignupRequest request) {
        return ResponseEntity.ok(authService.signup(request));
    }

    @PostMapping("/signin")
    public ResponseEntity<ApiResponse<AuthResponse>> signin(@RequestBody SigninRequest request) {
        return ResponseEntity.ok(authService.signin(request));
    }


    //Add forget password otp later
    // @PostMapping("/forget-password")
    // public ResponseEntity<ApiResponse<AuthResponse>> forgetPassword(@RequestBody ForgetPasswordRequest request) {
    //     return ResponseEntity.ok(authService.forgetPassword(request));
    // }
}
