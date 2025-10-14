package com.company.java005_ex;

public class RepeatEx010 {
	public static void main(String[]args) {
		/*for , while , do while 3가지 버젼으로 
		ABCDE   
		FGHIJ
		KLMNO
		PQRST
		UVWXY
		Z 
		 */
		//ver-1 눈에 보이는 그대로
		//System.out.println();
		//System.out.println("A"); System.out.println("B"); System.out.println("C");System.out.println("D");System.out.println("E");
		//System.out.println();
		//System.out.println("F"); System.out.println("G"); System.out.println("H");System.out.println("I");System.out.println("J");
		//ver-2 구조{ 반복 } { 변수 } for(시작; 종료; 변화)
		//ver-3 특별한 문제풀이 조건
		System.out.println("\nfor-ver");
		for(char i='A'; i<='Z'; i++) {if (i%5==0) {System.out.println();} System.out.print(i);}
		System.out.println("\nwhile-ver");
		char i='A'; while ( i<='Z') {if (i%5==0) {System.out.println();} System.out.print(i); i++;}
		System.out.println("\ndo while-ver");
		i='A'; do{if (i%5==0) {System.out.println();} System.out.print(i); i++;} while ( i<='Z');

	}
}

/*연습문제10)  for/while/do while
패키지명 : com.company.java005_ex
클래스명 :  RepeatEx010
for , while , do while 3가지 버젼으로 
ABCDE   
FGHIJ
KLMNO
PQRST
UVWXY
Z 
*/