package com.company.java012_ex;
//Q1. 상속도를 그리시오. 
/* 
   Object 
     ↑
   TestA2 {a=10, toString}
     ↑
   TestB2 {b=10, toString}
*/
class TestA2 extends Object{  
   int a=10;
   @Override public String toString() { return "TestA2 [a=" + a + "]"; }    
}
class TestB2 extends TestA2{
   int b=10;
   @Override public String toString() { return "TestB2 [b=" + b + "]"; }   
}
/////////////////////////////////////////////////
public class PolyEx001 {
   public static void main(String[] args) {
	  // 부모 = 자식 / 업캐스팅 / 타입캐스팅 X
      TestA2  ta = new TestB2();
      //Q2. 15번째줄에서   TestA2  ta 는 클래스의 무엇을 사용할수 있을까요? 코드의 의미
      //A. TestA2{a=10/ toString}
      //Q3. 15번째줄에서   TestB2() 는 클래스의 무엇을 사용할 수 있을까요?
      //A. 1000번지 TestB2 {b=10/ @toString} - TestA2{a=10/------} 
	  //A. ta[1000번지] = 1000번지 TestB2 {b=10. [@toString} - TestA2{a=10]/-------}

      System.out.println(ta); // Q4. 출력내용과 이유?   TestA2  vs  TestB2 
      						  // A. TestB2 : Override가 되서
      System.out.println(ta.a); // Q5.사용가능? 10
      //System.out.println(ta.b); // Q6.사용가능? 타입캐스팅 사용시 가능
   }
}
/////////////////////////////////////////////////