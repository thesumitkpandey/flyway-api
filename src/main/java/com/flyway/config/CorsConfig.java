package com.flyway.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOriginPatterns("*")   // allow all origins
                .allowedMethods("*")          // allow all HTTP methods
                .allowedHeaders("*")          // allow all headers
                .allowCredentials(false);
    }
}
