package com.flyway.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration
public class SupplierWebClient {


    @Value("${duffel.token}")
    private String apiKey;

    @Bean
    public WebClient duffelWebClient() {
        return WebClient.builder()
                .baseUrl("https://api.duffel.com")
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .defaultHeader("Duffel-Version", "v2")
                .defaultHeader("Content-Type", "application/json")
                .build();
    }
}
