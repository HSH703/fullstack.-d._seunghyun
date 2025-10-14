package com.company.java013_total;

import java.util.Scanner;

public class Exception005{
	public static int nextInt() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("1을 입력하세요. > ");
		return scanner.nextInt(); //a
	}
}


///////////////////////////////////////////////////////////////////
public class Repeat010 {
	public static void main(String[]args) {
		int one = 0;
		while(true) { one=nextInt(); if(one==1) {break;} }
		
	}
}
///////////////////////////////////////////////////////////////////
