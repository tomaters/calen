package com.calen;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.calen.mapper")
public class CalenApplication {

	public static void main(String[] args) {
		SpringApplication.run(CalenApplication.class, args);
	}
}
