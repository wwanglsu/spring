package com.example;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import java.util.*;


@SpringBootApplication
public class UserServiceApplication {

	@Bean
	CommandLineRunner clr(UserEntityRepo userEntityRepo){
		return args -> {
			//Java 8 properties.
			List<String> l = new ArrayList(Arrays.asList("ross", "little rock", "jerry", "jim"));
			l.forEach(name -> userEntityRepo.save(new UserEntity(name)));
			  userEntityRepo.findAll().forEach(System.out::println);
			//*/
		};
	}

	public static void main(String[] args) {
		SpringApplication.run(UserServiceApplication.class, args);
	}
}
