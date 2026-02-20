package com.thejoeun703.dto;

import lombok.Data;

@Data
public class UserInfoDto {
	private int no;
	private String email;
	private int age;
}

/*
이름    널?       유형            
		----- -------- ------------- 
		NO    NOT NULL NUMBER        
		EMAIL NOT NULL VARCHAR2(100) 
		AGE            NUMBER   

*/