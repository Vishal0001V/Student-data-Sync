package com.edu;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

    /**
     * Configures the application for deployment as a WAR file in a servlet container.
     * Specifies the main application class to bootstrap the Spring Boot application.
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        // Set the main application class as the source for the Spring Boot application.
        return application.sources(StudentDataSyncApplication.class);
    }

}