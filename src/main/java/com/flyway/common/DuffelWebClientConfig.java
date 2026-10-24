package com.flyway.common;

import com.fasterxml.jackson.annotation.JsonInclude;   // annotations still live in com.fasterxml
import tools.jackson.databind.DeserializationFeature;
import tools.jackson.databind.PropertyNamingStrategies;
import tools.jackson.databind.json.JsonMapper;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.codec.json.JacksonJsonDecoder;
import org.springframework.http.codec.json.JacksonJsonEncoder;
import org.springframework.web.reactive.function.client.ExchangeStrategies;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration
public class DuffelWebClientConfig {

    @Value("${duffel.access-token}")
    private String accessToken;

    @Bean
    public WebClient duffelWebClient() {

        // Deliberately NOT a @Bean: a JsonMapper bean would make Spring Boot's
        // auto-configured mapper back off and affect your whole app.
        JsonMapper duffelMapper = JsonMapper.builder()
                .propertyNamingStrategy(PropertyNamingStrategies.SNAKE_CASE)
                .disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)
                .changeDefaultPropertyInclusion(incl ->
                        incl.withValueInclusion(JsonInclude.Include.NON_NULL))
                .build();

        ExchangeStrategies strategies = ExchangeStrategies.builder()
                .codecs(configurer -> {
                    configurer.defaultCodecs().maxInMemorySize(10 * 1024 * 1024);
                    configurer.defaultCodecs().jacksonJsonEncoder(
                            new JacksonJsonEncoder(duffelMapper, MediaType.APPLICATION_JSON));
                    configurer.defaultCodecs().jacksonJsonDecoder(
                            new JacksonJsonDecoder(duffelMapper, MediaType.APPLICATION_JSON));
                })
                .build();

        return WebClient.builder()
                .baseUrl("https://api.duffel.com")
                .defaultHeader(HttpHeaders.AUTHORIZATION, "Bearer " + accessToken)
                .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
                .defaultHeader(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE)
                .defaultHeader("Duffel-Version", "v2")
                .exchangeStrategies(strategies)
                .build();
    }
}