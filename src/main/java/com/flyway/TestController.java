package com.flyway;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flyway.common.ApiResponse;

@RestController
@RequestMapping("/")
public class TestController {

    private final DataSource dataSource;

    public TestController(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @GetMapping("/")
    public ApiResponse<Void> hello() {

        try (Connection connection = dataSource.getConnection()) {

            if (connection.isValid(2)) {
                return ApiResponse.success(
                        "Hello World! DB is connected and application is listening at port 8080"
                );
            }

        } catch (SQLException e) {
            throw new RuntimeException("Database connection failed", e);
        }

        throw new RuntimeException("Database connection is invalid");
    }
}