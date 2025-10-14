package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;

/////////////////////////////////////////////////////////////////
public class Repeat029 {
	public static void main(String[]args) {
		List<String> colors = new ArrayList<>();
		colors.add("red");
		colors.add("green");
		colors.add("blue");
		System.out.println(colors);
		
		System.out.println("1: " + colors);
		System.out.println("2: size + get");
		System.out.println("\n1. for문 > ");
		for(int i=0; i<colors.size(); i++) {System.out.println(colors + "\t");}
		
		System.out.println("\n2. for문 > ");
		for(String c : colors) {System.out.println(c + "\t");}
	}
}
/////////////////////////////////////////////////////////////////
