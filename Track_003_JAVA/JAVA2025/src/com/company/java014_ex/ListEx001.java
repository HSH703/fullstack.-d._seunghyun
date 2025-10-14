package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;

//1. 콜렉션프레임워크 = 동적배열
//2. List - [기차] - 순번[index], 중복허용 
//3. add, get, size, remove, contains

////////////////////////////////////////////////////////////////
public class ListEx001 {
	public static void main(String[]args) {
		//String [] arr = new String[3];
		//arr[0] = "red";
		//arr[1] = "green";
		//arr[2] = "blue"; 
		//System.out.println(Arrays.toString(arr));
		
		List <String> colors = new ArrayList<>();
		colors.add("red");
		colors.add("green");
		colors.add("blue");
		//colors.add(1);
		
		System.out.println("1 : " + colors);
		System.out.println("2 : size + get ");
		for(int i=0; i<colors.size(); i++) {System.out.print(colors.get(i) + "\t");}
		
		System.out.println("\n3 : 향상된 for문 > ");
		for(String c : colors ) {System.out.println(c + "\t");}
	}
}
////////////////////////////////////////////////////////////////
/*연습문제1)  Collection  Framework
패키지명 : com.company.java014_ex
클래스명 : ListEx001
다음과 같이 코드를 작성하시오.
 1.  ArrayList이용해서 colors 만들기
 2. red, green, blue 데이터 추가
 3. 출력
*/