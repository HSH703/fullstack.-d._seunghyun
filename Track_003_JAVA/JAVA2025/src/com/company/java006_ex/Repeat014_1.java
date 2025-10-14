package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_1 {
	public static void main(String[] args) {
		// 변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.print("문자를 입력하세요.>");
		ch = scanner.next().charAt(0);
		// 처리
		if (ch == 'x') {
			System.out.println("x-ray");
		} else if (ch == 'y') {
			System.out.println("yogurt");
		} else if (ch == 'z') {
			System.out.println("zebra");
		} else {
			System.out.println("x,y,z가 아닙니다.");
		}
		// 출력
	}
}
