package com.company.java013_total;
/*
	1. 클래스는 부품객체
	2. 상태와 행위
	3. 상속? 재사용
*/
//1. 클래스를 상속하는 이유는? 부모 클래스에서 자식 클래스의 내용을 출력하기 위해(반대도 가능.) = 재활용할려고
//2. 상속도   >>C1 myc = new C1();
/* 
	Object		 #4 Object(){                     #5} 객체생성 
	  ↑
	  A1     {a} #3 A1(){                    #6. a=0} 
	  ↑
	  B1 	 {b} #2 B1(){                    #7. b=0}
	  ↑
	  C1 	 {c} #1 C1(){                    #8. c=0}
	  
	  객체호출순서 C1() 	B1()  A1()  Object()
	  객체생성순서 Object  A1    B1    C1
*/
/**************    C1 myc = new C1();
[method : 정보보관]  A1.class, B1.class, C1.class,  public Repeat006.class  ★1) 설계도
------------------------------------------------------------
[heap:동적]							|       [stack:지역]
							myc(1번지).a = 10; myc(1번지).b = 20; myc(1번지).C = 30; @50번째줄
Object () {    }
     A1() { a=0}
	 B1() { b=0}
1번지 C1() { c=0} 					  myc [1번지] @49번째줄
                            		|  main
------------------------------------------------------------
> 생성자의 인스턴스 변수를 초기화해서 사용가능하게 해준다.
*/

//3. ##을 채우고 출력되는 결과는?
class A1 extends Object { int a; public A1() {super();} }// Object 상속받기
class B1 extends A1 	{ int b; public B1() {super();} }// A1 상속받기
class C1 extends B1 	{ int c; public C1() {super();} 
	public void showC() {
	      System.out.println("상속받은 A클래스의 a : " + a);
	      System.out.println("상속받은 B클래스의 b : " + b);
	      System.out.println("자신멤버의 C클래스의 c: " + c);

	}
}//B1 상속받기

//////////////////////////////////////////////////
public class Repeat006 {
	public static void main(String[]args) {
		C1 myc = new C1();
		myc.a = 10; myc.b = 20; myc.c = 30;
		myc.showC();
	}
}
//////////////////////////////////////////////////
