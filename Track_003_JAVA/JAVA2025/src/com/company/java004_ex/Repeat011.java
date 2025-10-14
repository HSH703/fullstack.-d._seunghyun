package com.company.java004_ex;

import java.util.Scanner;

public class Repeat011 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1, num2; String result="";
		char op;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("1. 정수를 하나 입력하세요.>");
		num1 = scanner.nextInt();
		System.out.println("2. 정수를 하나 입력하세요.>");
		num2 = scanner.nextInt();
		System.out.println("3. 연산자를 입력하세요.>");
		op = scanner.next().charAt(0);

		//처리
		result="" + num1 + op + num2 + "=";
		
		     if(op=='+') {result+=(num1+num2);}
	    else if(op=='-') {result+=(num1-num2);}
	    else if(op=='*') {result+=(num1*num2);}
	    else if(op=='/') {result+=String.format("%.2f" , (double)num1/num2);}

		//출력
     	System.out.println(result); 
		
	}
}
