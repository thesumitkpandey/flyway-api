package com.flyway.service;

import java.time.Instant;
import java.util.Map;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

@Slf4j
@Service
public class AmadeusAuthService {

    private String token;
    private Instant tokenExpiry;

    private final WebClient webClient =
            WebClient.create("https://test.api.amadeus.com");

    @Value("${amadeus.client-id}")
    private String clientId;

    @Value("${amadeus.client-secret}")
    private String clientSecret;

    public String getAmadeusToken() {

        if (token != null && tokenExpiry != null && Instant.now().isBefore(tokenExpiry)) {
            log.debug("Reusing Amadeus token");
            return token;
        }

        MultiValueMap<String, String> body = new LinkedMultiValueMap<>();
        body.add("grant_type", "client_credentials");
        body.add("client_id", clientId);         // ✅ from properties
        body.add("client_secret", clientSecret); // ✅ from properties

        Map<String, Object> response = webClient.post()
                .uri("/v1/security/oauth2/token")
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .body(BodyInserters.fromFormData(body))
                .retrieve()
                .bodyToMono(new ParameterizedTypeReference<Map<String, Object>>() {})
                .block();

        token = (String) response.get("access_token");
        Integer expiresIn = (Integer) response.get("expires_in");

        tokenExpiry = Instant.now().plusSeconds(expiresIn - 60);

        return token;
    }
}
