package com.company.java006_ex;

import java.util.Scanner;

public class ForIfEx001_1 {
	public static void main(String[] args) {
		// GIGO
		// 변수
		int input;
		Scanner scanner = new Scanner(System.in);
		// 입력 + 처리 + 출력
		for (;;) {
			System.out.println("숫자를 입력하세요.>(1이면 종료)");
			input = scanner.nextInt();
			if (input == 1) {
				System.out.println("종료합니다.");
				break; 
			}
		}
	}
}
