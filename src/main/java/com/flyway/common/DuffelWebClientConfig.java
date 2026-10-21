package com.flyway.common;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration
public class DuffelWebClientConfig {

    @Value("${duffel.access-token}")
    private String accessToken;

    @Bean
    public WebClient duffelWebClient() {

        return WebClient.builder()
                .baseUrl("https://api.duffel.com")
                .defaultHeader(
                        HttpHeaders.AUTHORIZATION,
                        "Bearer " + accessToken
                )
                .defaultHeader(
                        HttpHeaders.CONTENT_TYPE,
                        MediaType.APPLICATION_JSON_VALUE
                )
                .defaultHeader("Duffel-Version", "v2")
                .build();
    }
}