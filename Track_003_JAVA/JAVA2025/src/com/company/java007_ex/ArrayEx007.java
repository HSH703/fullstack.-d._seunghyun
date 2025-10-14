package com.company.java007_ex;

public class ArrayEx007 {
	public static void main(String[]args) {
		//변수
		//입력
		// ver-1 
		// arr[0] = 'A';
		// arr[1] = 'B';
		char [] arr = {'A', 'B', 'C', 'D', 'E'};
	    // ver-2
		 char data = 'A';
		// arr[0] = data++;	- 'A'넣고 1증가
		// arr[1] = data++; - 'B'넣고 1증가
		for(int i=0; i<arr.length; i++){arr[i] = data++;}
		//처리
		//출력
		for(int i=0; i<arr.length; i++){System.out.print(arr[i]);}
	}
}

/*연습문제7)  array
패키지명 : com.company.java007_ex
클래스명 :  ArrayEx007
    new 연산자 이용해서 배열만들기
    1. 배열명 : arr     
    2. 값 넣기 : A   B   C   D   E    for+length 이용해보기
    3. for + length 로 출력
*/