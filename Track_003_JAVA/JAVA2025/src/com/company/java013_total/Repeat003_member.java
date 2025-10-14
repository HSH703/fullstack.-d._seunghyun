package com.company.java013_total;
//Q. 다음 클래스를 작성 후, 에러가 난다면 에러가 나는 이유는?
//A. 인스턴스 변수가 아닌데, this.를 붙였기 때문
/*  초기화순서						기본값			명시적초기화		초기화블록 		생성자
 *  당장바로사용가능!
1) [static] su 					 0				10 				x여전히 10 		관련없지만static 사용가능 일단 여전히 10
2) [static] basicpay2			 0				x 여전히 0	    20000			관련없지만static 사용가능 일단 여전히 20000
--------------------------------------------------------------------------------------------------
 *new 객체만들때 생성 - 장난감만들때 필요시 생성
 *장난감마다 각각 - 생성된 장난감 위치 번지 생김 this
 *3) pay                0       10000 			x 여전히 10000 변경가능 여전히 10000
*/



class Sawon005{
	//(1)인스턴스변수 - heap area - new O - 실체화 - this. 각각 - 생성자
	int pay=10000; 
	//(2)클래스변수 - method area - new X - [바로사용가능해야함.]
	static int su = 10; //명시적초기화
	
//	static int basicpay = pay; //###000  / basicpay 메모리상에 올라가 있음, pay는 new 해서 사용해야함, 시점이 안맞음. 
	// ★ static에서는 instatnce 사용불가
	
	static int basicpay2; 
	static {basicpay2 = 20000;} //초기화블록
	
	//(3) 클래스메서드 - method - new X - [1.바로사용가능]
	public static void showSu() {System.out.println(su);} //###001
	
	//(4) 인스턴스메서드 - heap area - new O - 실체화 - this. 각각 - 생성자 [2. new해서 객체만들어서 사용]
	public static void showPay() {System.out.println(this.pay);}//###002
	public void showAll001() {
		System.out.println(su); //클래스변수 사용가능
		System.out.println(this.pay); //인스턴스 변수 사용가능
	}
	//(5) 클래스메서드 - method - new X - [1.바로사용가능]
	public void showAll002() { 
//		showAll001();  // ★ static 에서는 instance 사용불가 - 시점이 안맞음
//		System.out.println(this.pay); //★ static 에서는 instance 사용불가 - 시점이 안맞음
	}

}//end class Sawon005

//////////////////////////////////////////////////////////////////////
public class Repeat003_member {
	public static void main(String[]args) {
		Sawon005 sola = new Sawon005();
		sola.showAll001();
		
	}//end main
}//end class
//////////////////////////////////////////////////////////////////////





