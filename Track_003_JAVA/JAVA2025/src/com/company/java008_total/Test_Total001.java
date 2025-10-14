package com.company.java008_total;

import java.util.Scanner;

public class Test_Total001 {
	public static void main(String[]args) {
		//변수
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("1. for문으로 출력");
		for(;;) {
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
			
		}
		
		System.out.println("2. while문으로 출력");
		while(true) {
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
			
		}

		System.out.println("3. do while문으로 출력");
		 do{
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
		}while(true);

		
		
		
	}//end main
}//end class

/* 무한반복 사용해서 풀기
*/
