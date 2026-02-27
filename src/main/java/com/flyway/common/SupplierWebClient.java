package com.flyway.common;

import java.time.Duration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.client.reactive.ReactorClientHttpConnector;
import org.springframework.web.reactive.function.client.ExchangeStrategies;
import org.springframework.web.reactive.function.client.WebClient;

import reactor.netty.http.client.HttpClient;

@Configuration
public class SupplierWebClient {

    @Value("${duffel.token}")
    private String apiKey;

    @Bean
    public WebClient duffelWebClient() {

        // 🔥 Increase buffer size to 16MB
        ExchangeStrategies strategies = ExchangeStrategies.builder()
                .codecs(configurer ->
                        configurer.defaultCodecs()
                                .maxInMemorySize(16 * 1024 * 1024)) // 16MB
                .build();

        // 🔥 Add timeouts (important in airline systems)
        HttpClient httpClient = HttpClient.create()
                .responseTimeout(Duration.ofSeconds(30));

        return WebClient.builder()
                .baseUrl("https://api.duffel.com")
                .defaultHeader("Authorization", "Bearer " + apiKey)
                .defaultHeader("Duffel-Version", "v2")
                .defaultHeader("Content-Type", "application/json")
                .clientConnector(new ReactorClientHttpConnector(httpClient))
                .exchangeStrategies(strategies)
                .build();
    }
}