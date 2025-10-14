package com.company.java007_ex;

public class ArrayPractice {
	public static void main(String[]args) {
		char data='a';
		char [] chars = new char[3];
		
		for (int i=0; i<chars.length; i++){chars[i]=data++;}
		
		for (int i=0; i<chars.length; i++){System.out.println(chars[i]);}
		
	}
}
