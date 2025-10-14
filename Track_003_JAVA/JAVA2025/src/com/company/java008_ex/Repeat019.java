package com.company.java008_ex;

public class Repeat019 {
	
	public static void start() {
		System.out.println("부우웅....");
	}

	public static void scan(int n, char ch) {
		for (int i = 0; i < n; i++) {
			System.out.print(ch);
		}
		System.out.println();
	}

	public static String signalGrade(int strength) {
		if (strength >= 90) {
			return "A";
		} else if (strength >= 80) {
			return "B";
		} else if (strength >= 70) {
			return "C";
		} else {
			return "D";
		}
	}

	public static int charge(int current, int added) {
		return current + added;
	}

	//////////////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		System.out.println("탐사 로봇이 기동합니다.");
		start();

		System.out.println("\n행성 스캔중....");
		scan(5, '#');

		System.out.println("\n신호강도 분석결과:");
		System.out.println("신호등급:" + signalGrade(70));

		System.out.println("\n 배터리 충전중....");
		System.out.println("충전 완료:" + charge(40, 40) + "%");

	}// end main
		/////////////////////////////////////////////////////////////////////////
}// end class
