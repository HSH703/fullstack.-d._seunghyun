package com.company.java011_ex;

import java.util.Arrays;

//1. 클래스는 부품객체 
//2. 클래스는 상태(멤버변수)와 행위(멤버함수) 
class Apple{   //// 실행 main과 파일을 분리해주세요!
	   //  	상태(멤버변수)	
	   private String name;
	   private String order;
	   private int num;
	   private int price;
	   
	   //   행위(멤버함수) default / field / toString / getter+setter
	   public Apple() {super();} //default 생성자
	   public Apple(String name, String order, int num, int price) 
	   { super(); this.name = name; this.order = order; this.num = num; this.price = price; }
	   @Override public String toString() { return "Apple [name=" + name + ", order=" + order + ", num=" + num + ", price=" + price + "]"; }
	   
	   //getter / setter  
	   public String getName() { return name; } public void setName(String name) { this.name = name; }
	   public String getOrder() { return order; } public void setOrder(String order) { this.order = order; }
	   public int getNum() { return num; } public void setNum(int num) { this.num = num; }
	   public int getPrice() { return price; } public void setPrice(int price) { this.price = price; } 
	}//end class Apple

///////////////////////////////////////////////////////////////////////////
public class ClassArrEx1{
	  public static void main(String[] args) {
	        Apple[] apples= new Apple[3]; //apples = [null | null | null]
	        //위의 화면처럼 값 셋팅
	        
	        apples [0] = new Apple("RED", "iron", 2, 1000);
	        apples [1] = new Apple("GREEN", "hulk", 1, 1500);
	        apples [2] = new Apple("GOLD", "captain", 3, 2000);

	        //apples = [1번지 | 2번지 | 3번지]
			//apples [0] = new Apple("RED", "iron", 2, 1000);
			//apples [1] = new Apple("GREEN", "hulk", 1, 1500);
			//apples [2] = new Apple("GOLD", "captain", 3, 2000);

	        System.out.println("ver - 1 for");
	        for(int i=0; i<apples.length; i++) {System.out.println(apples[i]);}
	        
	        System.out.println("\nver - 2 .향상된 for");
	        for(Apple a : apples ) {System.out.println(a);}
	        
	        Apple [] apples2 = new Apple[] {
        				new Apple("RED", "iron", 2, 1000),
        				new Apple("GREEN", "hulk", 1, 1500),
        				new Apple("GOLD", "captain", 3, 2000)
	        };
	        System.out.println(Arrays.deepToString(apples2));
	        
	        //출력
			//Apple [name=RED, order=iron, num=2, price=1000]
			//Apple [name=GREEN, order=hulk, num=1, price=1500]
			//Apple [name=GOLD, order=captain, num=3, price=2000]
	        
	  }//end main
	}//end class
///////////////////////////////////////////////////////////////////////////

/*● 5. 클래스배열

  클래스[]  배열명 = new 클래스[갯수];
  
  String[]   arr     = new String[3];  
  A1     []   carr   = new A1[3];  // [null, null, null ]
  ※ null  - 공간은 있지만 값이 비어있어!
   
  carr[0]  = new  A1();  ※ 생성자를 불러서 인스턴스변수를 초기화해 사용가능하게만들기
  1번지{  name="" }  ←  carr[0] 1번지




연습문제1)  클래스배열
패키지명 : com.company.java011_ex
클래스명 : ClassArrEx1
다음과 같이 코드를 작성하시오.
ㅁ출력된 화면
Apple [name=RED, order=iron, num=2, price=1000]
Apple [name=GREEN, order=hulk, num=1, price=1500]
Apple [name=GOLD, order=captain, num=3, price=2000]

ㅁ주어진 옵션


*/