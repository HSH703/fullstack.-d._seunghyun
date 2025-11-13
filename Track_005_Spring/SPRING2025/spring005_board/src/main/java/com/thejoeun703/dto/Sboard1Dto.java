package com.thejoeun703.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sboard1Dto {
	private int id;
	private int appUserId;
	private String btitle;
	private String bcontent;
	private String bpass;
	private String bfile;		//BFILE (default : 'no-png')
	private int bhit;
	private String bip;
//	private LocalDateTime createdAt; CREATE_AT (default: SYSTIMESTAMP)
	private String createdAt;
}

/*
      Name                                      Null?    Type
      ----------------------------------------- -------- ----------------------------
      ID                                        NOT NULL 	NUMBER
      APP_USER_ID                               NOT NULL 	NUMBER
      BTITLE                                    NOT NULL 	VARCHAR2(1000)
      BCONTENT                                  NOT NULL 	CLOB
      BPASS                                     NOT NULL 	VARCHAR2(255)
      BFILE                                              	VARCHAR2(255)
      BHIT                                               	NUMBER(10)
      BIP                                       NOT NULL 	VARCHAR2(255)
      CREATE_AT                                          	TIMESTAMP(6)
 */ 