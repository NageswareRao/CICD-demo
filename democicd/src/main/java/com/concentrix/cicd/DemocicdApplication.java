package com.concentrix.cicd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class DemocicdApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(DemocicdApplication.class, args);
	}

}
