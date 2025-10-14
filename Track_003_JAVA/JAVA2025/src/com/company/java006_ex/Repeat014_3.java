package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_3 {
	public static void main(String[] args) {
		// 변수
		int num;
		Scanner scanner = new Scanner(System.in);
		// 입력 + 처리 + 출력
		for (;;) {
			System.out.print("숫자를 입력하세요.(7을 입력하면 종료)");
			num = scanner.nextInt();
			if (num == 7) {
				System.out.println("종료합니다.");
				break;
			}
			
		}

	}
}
