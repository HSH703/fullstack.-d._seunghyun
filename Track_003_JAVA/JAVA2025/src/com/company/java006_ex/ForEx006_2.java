package com.company.java006_ex;

import java.util.Scanner;

public class ForEx006_2 { 
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1=-1 ,num2= -1; double result = 0;
		char op=' ';
		Scanner scanner = new Scanner(System.in);
		
		//입력	101   -1   무한반복 for(;;) {  빠져나올조건 }
		/* for(;;){	//무한반복 1-4
		 
		 if(num1>=0 && num1<=100) {break ;}	//0~100사이면 잘쓴거~! 잘썼으면 나와!
		 
		 }
		 */
		for(;;) {
			if(!(num1 >=0 && num1 <=100 )) {		//1-1 0~100 범위가 아니라면
				System.out.println("1. 정수를 입력하세요.>");  //1-2 입력받기
				num1 = scanner.nextInt();
				continue;	//1-3 아래쪽 진행하지 말것! skip 건너뛰기!
				//잘썼으면 나와 ! 0~100사이면
			}
			
			if (!(num2 >=0 && num2<=100 )) { //0~100 범위가 아니라면 2-1. num2=1
				System.out.println("2. 정수를 입력하세요.>"); // 2-2 입력받기
				num2 = scanner.nextInt();
					continue;// 2-3. 아래쪽 진행하지 말것! skip 건너뛰기!잘썼으면 나와 
			}
			
			if (!(op=='+' || op=='-' || op=='*' || op=='/' )) { //3-1
			System.out.println("3. 연산자를 입력하세요.>"); //3-2. 입력받기
			op = scanner.next().charAt(0);
				continue;//3-3. 아래쪽 진행하지 말것! skip 건너뛰기!잘썼으면 나와
			}
			
			break; // break 만났다면 num1, num2, op를 쓴 경우
		}
				
		//처리 
		switch(op) {
			case '+' : result = num1+num2; break;
			case '-' : result = num1-num2; break;
			case '*' : result = num1*num2; break;
			case '/' : result = num1/(double)num2; break;
		}
		//출력
		System.out.println("" + num1 + op + num2 + "="
				+ (op!='/' ? "" + (int) result: String.format("%.2f" ,result)));

		
		
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
 