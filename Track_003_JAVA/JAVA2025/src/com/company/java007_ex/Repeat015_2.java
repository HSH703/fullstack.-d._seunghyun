package com.company.java007_ex;

import java.util.Scanner;

public class Repeat015_2 {
	public static void main(String[]args) {
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		num=scanner.nextInt();
		//처리
		switch (num) {
		case 1: {System.out.println("mango");} break;
		case 2: {System.out.println("noodle");} break;
		case 3: {System.out.println("orange");} break;
		default : {System.out.println("숫자가 아닙니다.");}
		break;
		}
		
		//출력
	}
}
