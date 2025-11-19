package com.thejoeun703.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AppUserDto {
	private int appUserId;
	private String email;
	private String password;
	private int mbtiTypeId;
	private String createdAt;
	private String ufile;
}
/*
 이름           널?       유형            
------------ -------- ------------- 
APP_USER_ID  NOT NULL NUMBER(5)     
EMAIL        NOT NULL VARCHAR2(100) 
PASSWORD              VARCHAR2(100) 
MBTI_TYPE_ID          NUMBER(3)     
CREATED_AT            DATE   
*/
