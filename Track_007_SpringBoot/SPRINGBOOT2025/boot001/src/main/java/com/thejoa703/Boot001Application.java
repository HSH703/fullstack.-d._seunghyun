package com.thejoa703;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class Boot001Application { 
	public static void main(String[] args) {
		//System.setProperty("https.protocols", "TLSv1.2, TLSv1.3"); 
		// ㄴ자바 인증서 문제로 인해 실행이 안될수도 있으니 에러시 사용바람.
		SpringApplication.run(Boot001Application.class, args);
	}

}


