package com.company.java006_ex;

import java.util.Scanner;

public class ForEx006_1 { 
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1 ,num2; double result = 0;
		char op;
		Scanner scanner = new Scanner(System.in);
		
		//입력	101   -1   무한반복 for(;;) {  빠져나올조건 }
		/* for(;;){	//무한반복 1-4
		 
		 if(num1>=0 && num1<=100) {break ;}	//0~100사이면 잘쓴거~! 잘썼으면 나와!
		 
		 }
		 */
		for(;;) {
			System.out.println("1. 정수를 입력하세요.>");
			num1 = scanner.nextInt();
			if(num1 >=0 && num1<=100 ) {break;}
		}
			
		for(;;) {
			System.out.println("2. 정수를 입력하세요.>");
			num2 = scanner.nextInt();
			if(num2 >=0 && num2<=100 ) {break;}
		}
			
		for(;;) {
			System.out.println("3. 연산자를 입력하세요.>");
			num1 = scanner.nextInt();
			if(op=='+' || op=='-' || op=='*' || op=='/' ) {break;}
		}
				
		
		//처리 
		switch(op) {
			case '+' : result = num1+num2; break;
			case '-' : result = num1-num2; break;
			case '*' : result = num1*num2; break;
			case '/' : result = num1/(double)num2; break;
		}
		
		//출력
		System.out.println("" + num1 + op + num2 + "=");

		
		
		}
	}



/*연습문제6)  for 무한반복
패키지명 : com.company.java006_ex
클래스명 :  ForEx006
출력내용 :  계산기

1)  각 연산자에 맞게 계산처리
2)  숫자1, 숫자2는 0~100사이만 입력가능하게 아니면 무한반복
3)  연산자는 +, - ,*, /만 입력가능하게 아니면 무한반복
     

1. 정수를 하나 입력해주세요 > 10   
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13
 */
 