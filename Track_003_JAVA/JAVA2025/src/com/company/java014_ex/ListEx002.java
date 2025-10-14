package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

///////////////////////////////////////////////////////////////////// 
public class ListEx002 {
	public static void main(String[]args) {
		//변수
		List<String> numbers = new ArrayList<>(); //add, get, size, remove, contains
		int num=-2;
		Scanner scanner = new Scanner(System.in);

		//입력
		numbers.add("one");
		numbers.add("two");
		numbers.add("three");
		System.out.println("숫자를 입력하세요.");
		num = scanner.nextInt();

		//처리  if / switch/ for
		// 만약 1이라면,  numbers.get(0);  --> one
		// 만약 2이라면,  numbers.get(1);  --> two 
		// 만약 3이라면,  numbers.get(2);  --> three
		//     if(num==1) {System.out.println(numbers.get(0));}
		//else if(num==2) {System.out.println(numbers.get(1));}
		//else if(num==3) {System.out.println(numbers.get(2));}
		//else 			{System.out.println("1,2,3이 아니다.");}
		
		//	 if(num==1) {numbers.get(0);}   numbers.get(num-1);
		//else if(num==2) {numbers.get(1);}   numbers.get(num-1);
		//else if(num==3) {numbers.get(2);}   numbers.get(num-1);
	

		//출력 
		System.out.println(numbers.get(num-1));
		
		
		     
	}//end main
}//end clas
/////////////////////////////////////////////////////////////////////


/*연습문제2)  Collection  Framework
패키지명 : com.company.java014_ex
클래스명 : ListEx002
1.  numbers ArrayList 만들기
2.  one, two, three 데이터 추가
3.  사용자에게 1,2,3 입력받기
4.  1을 입력받으면 one 출력
    2를입력받으면 two 출력
    3을입력받으면 three 출력
*/