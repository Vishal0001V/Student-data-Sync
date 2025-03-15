package com.edu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Main entry point for the Spring Boot application.
 * Enables auto-configuration, component scanning, and other Spring Boot features.
 */
@SpringBootApplication
public class StudentDataSyncApplication {

    /**
     * Starts the Spring Boot application.
     * @param args Command-line arguments passed during application startup.
     */
    public static void main(String[] args) {
        // Bootstraps the Spring Boot application.
        SpringApplication.run(StudentDataSyncApplication.class, args);
    }

}