package com.skilldistillery.jpasoccer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpasoccerplayers")
public class JpaSoccerApplication {

	public static void main(String[] args) {
		SpringApplication.run(JpaSoccerApplication.class, args);
	}

}
