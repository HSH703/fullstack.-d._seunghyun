package com.company.java012_ex;
//1. 생성도그리기
//2. 각클래스에서 사용할수있는 멤버변수/멤버메서드
/*
	 Object
	   ↑ 
	 Parent7  {int x = 100 / Parent Method}
       ↑
     Child7	  {int x = 200 / @Child Method}
*/

class Parent7  extends Object{
	   int x = 100;
	   public Parent7() { super(); }
	   void method() { System.out.println("Parent Method"); }
	} 
	class Child7 extends Parent7 {
	   int x = 200;
	   public Child7() { super(); }
	   @Override  void method() { System.out.println("Child Method"); }
	   void papaMethod() {super.method();} 
	}

///////////////////////////////////////////////////////////////
public class PolyEx005 {
	   public static void main(String[] args) {
		      Parent7 p = new Child7();     
		      // Q3.  Parent7 p   보장하는 범위  
		      //   A: p = {int x = 100 / Parent Method} - {int x = 200 / Child Method}
		      // Q4. 인스턴스화 했을때 사용가능한 범위 : new Child7()  
		      //   A: {int x =200 / [@Child Method} - {int x = 100] / Parent Method}
              Child7 c = new Child7();     
		      System.out.println("p.x = " + p.x);  // Q5. 출력되는 내용 A: p.x = 100
		      p.method();  // Q6. 출력되는 내용  A: Child Method 
		      System.out.println("c.x = " + c.x);   // Q7. 출력되는 내용  A: c.x = 200
		      c.method();   // Q8. 출력되는 내용   A: Parent Method
		      //Bonus Q9. main에서 부모에서도 호출가능? - Parent Method (X)
		      ((Parent7)p).method();  //X 오버라이딩된 메서드를 직접호출하는 것은 불가능
		      c.papaMethod(); // 자식에서 부모호출가능
		      //((Child7)p).papaMehtod(); // 타입캐스팅 - 부모가 자식메서드 호출가능 (자식 생성자 호출시)
	   }//end main
	}//end class

///////////////////////////////////////////////////////////////

/*연습문제5)  다형성
패키지명 : com.company.java012_ex
클래스명 : PolyEx005
다음과 같이 코드를 작성하시오.

*/