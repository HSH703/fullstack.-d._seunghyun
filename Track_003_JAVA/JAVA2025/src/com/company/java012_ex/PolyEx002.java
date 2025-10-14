package com.company.java012_ex;
//Q1. 상속도를 그리시오. 
/*
    Object  
      ↑
    TestA3 {a=10 / --------} - 부모
      ↑
    TestB3 {b=10 / @toString} - 자식
*/

class TestA3  extends Object{  // 부모 --상속--> Object
 int a=10;
 @Override public String toString() { return "TestA3 [a=" + a + "]"; }
}
class TestB3  extends TestA3{  // 자식 --상속--> 부모
 int b=10;
 @Override public String toString() { return "TestB3 [b=" + b + "]"; }
} 
/////////////////////////////////////////////////
public class PolyEx002 {
 public static void main(String[] args) {
	// 자식 = 부모 / 다운캐스팅 / 타입캐스팅 O 
    TestB3  tb =  (TestB3) new TestA3(); // (TestB3) = 타입캐스팅 
    //Q2. 15번째줄에서   TestB3  tb는 클래스의 무엇을 사용할수 있을까요? 코드의 의미
    // A : {int b , @toString} - {int a , ------}
    //Q3. 15번째줄에서   (TestB3)  new TestA3() 클래스의 무엇을 사용할 수 있을까요?
    // A : 						{a=10, toString}
    //Q4. 코드상에서는 문제가 없는데 코드를 실행하면 오류가 나는 이유는?
    // A : tb : {b=10, @toString} - {a-10, ------}  = 1000번지{a=10, toString()}
    //        {b=10,} 이 부분을 객체생성한적이 없음. 
    //타입캐스팅에는 문제가 없으나, 객체생성이 안되어 있으므로 실행에서 오류가 발생한다.
 }
}
/////////////////////////////////////////////////