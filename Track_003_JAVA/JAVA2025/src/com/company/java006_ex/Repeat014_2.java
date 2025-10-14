package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_2 {
	public static void main(String[] args) {
		// 변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.print("문자를 입력하세요.>");
		ch = scanner.next().charAt(0);
		// 처리
		switch (ch) {
		case 'x': {
			System.out.println("x-ray");
		}
			break;
		case 'y': {
			System.out.println("yogurt");
		}
			break;
		case 'z': {
			System.out.println("zebra");
		}
			break;
		default: {
			System.out.println("x,y,z가 아닙니다.");
		}
		}
		// 출력
	}
}
