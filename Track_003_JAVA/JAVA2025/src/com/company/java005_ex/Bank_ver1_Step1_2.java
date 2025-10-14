package com.company.java005_ex;

import java.util.Scanner;

public class Bank_ver1_Step1_2 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		
		for(;;) {
			System.out.print("\n\n=======SH_BANK=========\n*" 
					+ "1.추가\n* 2.조회\n* 3.입금\n* 4.출금\n* 5.삭제\n* 9.종료\n입력>>>");
			num = scanner.nextInt();
			if(num==9) {System.out.println("ATM기를 종료합니다.");break;}
			
				 if(num==9) {System.out.println("ATM을 종료합니다.");}
			else if(num==1) {System.out.println("추가기능입니다.");}
					// 아이디 입력 > _입력받기
					// 비밀번호 입력 > _입력받기
					// 잔액입력	  >_입력받기

			else if(num==2) {System.out.println("조회기능입니다.");}
			else if(num==3) {System.out.println("입금기능입니다.");}
			else if(num==4) {System.out.println("출금기능입니다.");}
			else if(num==5) {System.out.println("삭제기능입니다.");}
			//입력	+ 처리	+ 출력		
	
		 	}//end for
		} //end main
	}  //end class


/* 하루에 하나씩 힌트나가요~~~!
   천천히 정리하면서 익히면서 도전이요~~!	이번주 다음주해서 숙제~!
   
   Step 1. 무한반복으로 만드는 메뉴 만들기
   
   		for(;;){//1-1 무한반복
   		//1-2 빠져나올조건 9
   		//1-3 입력 받은 번호가 	if   or   switch
   		1을 입력하면 추가기능입니다. 출력구문까지만.
   		2를 입력하면 조회기능입니다. 출력구문까지만.
   		3을 입력하면 입금기능입니다. 출력구문까지만.
   		4를 입력하면 출금기능입니다. 출력구문까지만.
   		5를 입력하면 삭제기능입니다. 출력구문까지만.
   		9를 입력하면 종료합니다. 	  출력구문까지만.
   		}
 */
 