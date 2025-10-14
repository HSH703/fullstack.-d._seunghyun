package com.company.java006_ex;

import java.util.Scanner;

public class SwitchEx001_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char input;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		input = scanner.next().charAt(0);
		//처리 + 출력
		switch(input) {
		case 'a': {System.out.println("apple");} break;
		case 'b': {System.out.println("banana");} break;
		case 'c': {System.out.println("coconut");} break;
		default : {System.out.println("a,b,c가 아니다.");}
		
		}
	}
}
