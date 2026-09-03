package com.flyway.auth;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.flyway.common.ApiResponse;
import com.flyway.entities.UsersEntity;
import com.flyway.exception.ApiException;
import com.flyway.exception.ErrorCode;
import com.flyway.repos.UsersRepo;

@Service
public class AuthService {

    private final UsersRepo usersRepository;
    private final JwtService jwtService;
    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public AuthService(UsersRepo usersRepository, JwtService jwtService) {
        this.usersRepository = usersRepository;
        this.jwtService = jwtService;
    }

    public ApiResponse<AuthResponse> signup(SignupRequest request) {
        if (request.getEmail() == null || request.getEmail().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Email cannot be empty");
        }
        if (request.getPassword() == null || request.getPassword().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Password cannot be empty");
        }
        if (request.getFullName() == null || request.getFullName().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Full name cannot be empty");
        }

        String email = request.getEmail().trim().toLowerCase();

        if (usersRepository.existsByEmailIgnoreCase(email)) {
            throw new ApiException(ErrorCode.CONFLICT, "An account with this email already exists");
        }

        UsersEntity user = new UsersEntity();
        user.setEmail(email);
        user.setPassword(passwordEncoder.encode(request.getPassword()));
        user.setFullName(request.getFullName().trim());
        user = usersRepository.save(user);

        AuthResponse data = new AuthResponse();
        data.setId(user.getId());
        data.setEmail(user.getEmail());
        data.setFullName(user.getFullName());

        return ApiResponse.success("Signup successful", data);
    }

    public ApiResponse<AuthResponse> signin(SigninRequest request) {
        if (request.getEmail() == null || request.getEmail().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Email cannot be empty");
        }
        if (request.getPassword() == null || request.getPassword().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Password cannot be empty");
        }

        String email = request.getEmail().trim().toLowerCase();

        UsersEntity user = usersRepository.findByEmailIgnoreCase(email)
                .orElseThrow(() -> new ApiException(ErrorCode.UNAUTHORIZED, "Invalid email or password"));

        if (user.getPassword() == null || !passwordEncoder.matches(request.getPassword(), user.getPassword())) {
            throw new ApiException(ErrorCode.UNAUTHORIZED, "Invalid email or password");
        }

        String token = jwtService.generateToken(user.getId(), user.getEmail());
        user.setAuthToken(token);
        user = usersRepository.save(user);

        AuthResponse data = new AuthResponse();
        data.setId(user.getId());
        data.setEmail(user.getEmail());
        data.setFullName(user.getFullName());
        data.setToken(token);

        return ApiResponse.success("Signin successful", data);
    }


    public ApiResponse<AuthResponse> forgetPassword(ForgetPasswordRequest request) {
        if (request.getEmail() == null || request.getEmail().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "Email cannot be empty");
        }
        if (request.getNewPassword() == null || request.getNewPassword().isBlank()) {
            throw new ApiException(ErrorCode.BAD_REQUEST, "New password cannot be empty");
        }

        String email = request.getEmail().trim().toLowerCase();

        UsersEntity user = usersRepository.findByEmailIgnoreCase(email)
                .orElseThrow(() -> new ApiException(ErrorCode.NOT_FOUND, "No account found with this email"));

        user.setPassword(passwordEncoder.encode(request.getNewPassword()));
        user.setAuthToken(null);
        user = usersRepository.save(user);

        AuthResponse data = new AuthResponse();
        data.setId(user.getId());
        data.setEmail(user.getEmail());
        data.setFullName(user.getFullName());

        return ApiResponse.success("Password updated successfully", data);
    }
}
