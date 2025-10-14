package com.company.java003_ex;

import java.util.Scanner;

public class Repeat009 {
	public static void main(String[]args) {
		//변수
		int num1, num2;
		double result;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하시오.");
		num1 = scanner.nextInt();
		System.out.println("숫자를 입력하시오");
		num2 = scanner.nextInt();
		//처리
		result= (double) num1/num2;
		//출력
		System.out.printf("%d/%d=%.2f\n",num1 ,num2 ,result);
	}
}
