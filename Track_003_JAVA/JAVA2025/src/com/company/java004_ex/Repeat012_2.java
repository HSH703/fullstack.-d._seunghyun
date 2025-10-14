package com.company.java004_ex;

import java.util.Scanner;

public class Repeat012_2 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int a = 0;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		a = scanner.nextInt();
		//처리 + 출력
		switch(a) {
		case 1:/*a==1*/ {System.out.println("one");} break;
		case 2:/*a==2*/ {System.out.println("two");} break;
		case 3:/*a==1*/ {System.out.println("three");} break;

		}
	}
}
