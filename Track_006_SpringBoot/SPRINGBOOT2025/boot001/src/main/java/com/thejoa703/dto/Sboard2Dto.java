package com.thejoa703.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
public class Sboard2Dto {
	private int id;      	  //ID
	private int appUserId;    //APP_USER_ID
	private String btitle;    //BTITLE
	private String bcontent;  //BCONTENT
	private String bpass;	  //BPASS
	private String bfile;     //BFILE
	private int bhit; 		  //BHIT
	private String bip; 	  //BIP
	private String createdAt; //CREATED_AT
}
/*
SQL> desc sboard2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 APP_USER_ID                               NOT NULL NUMBER
 BTITLE                                    NOT NULL VARCHAR2(1000)
 BCONTENT                                  NOT NULL CLOB
 BPASS                                     NOT NULL VARCHAR2(255)
 BFILE                                              VARCHAR2(255)
 BHIT                                               NUMBER
 BIP                                       NOT NULL VARCHAR2(255)
 CREATED_AT                                         DATE
*/
