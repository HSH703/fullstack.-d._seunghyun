package com.company.java013_total;
//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수), 행위(멤버함수)
//3. 클래스( 설계도 )  →  장난감 조립 → 사용하는 방법
// 	  Coffee a1 = new Coffee("까페라떼" , 2, 4000)
//	  3-0. 장난감 이름: Coffee a1
//	  3-1. 장난감조립 : new → heap area 메모리빌리고 객체 생성
//	  3-2. 장난감 만드는 방법 : Coffee("까페라떼" , 2, 4000) , 아무말 안하면? → 아메리카노 1잔, 2000원
// 	  3-3. 장난감 갖고 놀수 있게 : a1 (어디에다가 만들었는지 번지) 

//////////////////////////////////////////////////////////////// 1단계 설계도
class Coffee{
	//상태(멤버변수) //인스턴스 변수 - heap area - new 관련O - this. 관련 - 각각
	String name;
	int price, num; 
	
	//행위(멤버함수)
	//생성자
	public Coffee() {
		super();
		this.name = "아메리카노";
		this.num = 1;
		this.price = 2000;
	}
	public Coffee(String name,  int num ,int price) {
		super();
		this.name = name;
		this.num = num;
		this.price = price;
	}
	//toString
	@Override
	public String toString() {
		return "Coffee012 [name=" + name + ", price=" + price + ", num=" + num + "]";
	}
	
	void show() {
		System.out.println("==========커피\r\n");
		System.out.println("커피이름 : " + this.name );
		System.out.println("커피잔수 : " + this.num );
		System.out.println("커피가격 : " + this.price*this.num );
	}
}//end class Coffee

////////////////////////////////////////////////////////////////
public class Repeat001_oop {
	public static void main(String[]args) {
		Coffee a1 = null; //2번지에 있는 클래스 자료형으로 a1이라는 장난감만들꺼야라고 했지......장난감 만든적은 없음.
		       a1 = new Coffee("까페라떼" , 2, 4000); //2단계 장난감조립
		// 3. a1 (1000번지)   = 1. new 메모리빌리고(1000번지) 객체(장난감)생성 2.Coffee 생성자로 장난감 만드는 방법 - 초기화
 		a1.show(); //3단계 갖고놀기(1000번지). show()
		Coffee a2 = new Coffee(); 
		// 3. a2 (2000번지)   = 1. new 메모리빌리고(2000번지) 객체(장난감)생성 2.Coffee 생성자로 장난감 만드는 방법 - 초기화
		a2.show();//3단계 갖고놀기(2000번지). show()
	}//end main
}//end class
////////////////////////////////////////////////////////////////

/*
	초기화순서 
	1. 기본값   {name = null, num= 0, price=0 / show()}
	2. 명시적   {name = null, num= 0, price=0 / show()}
	3. 초기화블록 {name = null, num= 0, price=0 / show()}
	4. 생성자 {name = "아메", num= 1, price=2000 / show()}
*/


/************** 
 Repeat001_oop.java
 Repeat001_oop.class
[method : 정보보관] 
[1번지]: public Repeat001_oop.class ★ 
[2번지]: Coffee.class
------------------------------------------------------------
[heap:동적]                           			|    [stack:지역] 
												   ← a2(2000번지).show() @54번째줄  
2000번지												                    (a2 실제로 만든 장난감, 객체, 인스턴스) 
{name="아메", num=1, price = 2000}				   ← a2(2000번지).show() @52번째줄
------------------------------------------------------------
												   ← a1(1000번지).show() @51번째줄
1000번지 
{name-까페라떼, num=2, price=4000 / show() }		   ← a1(1000번지) @49번째줄
										   		     a1(null)    @48번째줄
									   		    |    main ★
------------------------------------------------------------
*/








