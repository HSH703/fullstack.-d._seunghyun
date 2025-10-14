package com.company.java008_total;

public class Test_Total004 {
	public static void main(String[]args) {
		
		//Method (이차원 배열) 복습문제 1
		char[][] arr = new char [2][3]; //00 01 02 / 10 11 12
		char ch ='A';
		
		for (char i=0; i<arr.length; i++) { //층
			for(char j=0; j<arr[i].length; j++) { //칸
				arr[i][j] = ch++;
			}
			ch = 'a';	//한 층이 끝나면 해야할 일
		}
		
		for(char i=0; i<arr.length; i++) {
			for(char j=0; j<arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
		
		//Method Overloading 복습문제 2
		//c
		
		
		
		
		
	}//end main
}// end class
