package com.company.java003;

import java.util.Scanner;

public class Repeat007 {
	public static void main(String[] args) {
		//변수
		int kor, eng, mat, total;
		double avg;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("국어 점수를 입력하시오.");
		kor = scanner.nextInt();
		System.out.println("영어점수를 입력하시오."); 
		eng = scanner.nextInt();
		System.out.println("수학점수를 입력하시오.");
		mat = scanner.nextInt();

		//처리
		total = kor+ eng+ mat;
		avg= total/3.0;
		//출력
		System.out.println("총합:" + total);
		System.out.println("평균:" + avg);
	}
}
