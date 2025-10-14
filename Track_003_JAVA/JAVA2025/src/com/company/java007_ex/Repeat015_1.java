package com.company.java007_ex;

import java.util.Scanner;

public class Repeat015_1 {
	public static void main(String[]args) {
		//변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		ch=scanner.next().charAt(0);
		//처리
		     if(ch=='m') {System.out.println("mango");}
		else if(ch=='n') {System.out.println("noodle");}
		else if(ch=='o') {System.out.println("orange");}
		else {System.out.println("m,n,o가 아닙니다.");}

		//출력
	}
}
