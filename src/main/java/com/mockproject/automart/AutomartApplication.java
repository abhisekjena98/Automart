package com.mockproject.automart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class AutomartApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(AutomartApplication.class, args);
	}

}
