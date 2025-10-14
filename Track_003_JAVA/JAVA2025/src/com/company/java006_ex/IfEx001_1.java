package com.company.java006_ex;

import java.util.Scanner;

public class IfEx001_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char input;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		input = scanner.next().charAt(0);
		//처리
			 if (input=='a') {System.out.println("apple");}
		else if (input=='b') {System.out.println("banana");}
		else if (input=='c') {System.out.println("coconut");}
		else	{System.out.println(   "a,b,c가 아니다."     );}
		//출력
		
	}
}
