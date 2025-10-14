package com.company.java004_ex;

import java.util.Scanner;

public class SwitchEx001 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num; 
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("좋아하는 월을 입력하세요.>");
		num = scanner.nextInt();
		//처리 + 출력
		switch (num) {
		case 3: System.out.println("봄이다."); break;
		case 6: System.out.println("여름이다."); break;
		case 9: System.out.println("가을이다."); break;
		case 12: System.out.println("겨울이다."); break;

		}
	}
}
/*연습문제1)  
패키지명 : com.company.java004_ex
클래스명 :  SwitchEx001
출력내용 :  switch 이용
     숫자한개 입력받아
     3이면 봄
     6이면 여름
     9이면 가을
     12이면 겨울

*/