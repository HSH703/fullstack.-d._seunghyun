package com.company.java013_ex;
//Q. Driver 클래스를 작성하시오. 
//1. 상속도
/*
			Object 
			   ↑
			Vehicle   {public abstract void run();}
			↑     ↑
	MotorCycle     Car
	{@run(){     {@run(){
	오토바이가 		  자동자가 
	달립니다.}}         달립니다.}}
	
	1. 인터페이스는 설계클래스 (상태: public static final / 행위: public abstract)
				mtehod area[공용] , new X , 생성자 X, this 각각 X(공용) , {}X - 구현부 없음.
	2. 부모 = 자식 : 한가지타입(부모)으로 여러객체(자식, 자식,,,,,,자식들) 관리
		     업캐스팅 / 타입캐스팅 X / 부모에서(주체) 메서드호출시 오버라이드가 되서 자식메서드가 호출
*/

//Q.주어진조건
interface Vehicle { public void run(); }
class MotorCycle implements Vehicle { @Override public void run() { System.out.println("오토바이가 달립니다."); } }
class Car        implements Vehicle { @Override public void run() { System.out.println("자동차가 달립니다."); } }

class Driver {
	void drive ( Vehicle v ){ v.run(); } 
} // --> run - 실행.

/* --------------------------------------------------------------------
method[공통 : static, final, abstract]          Vechicle, MotorCycle, Car, Driver, InterfaceEx002
-----------------------------------------------------------------------
heap[동적]                                | stack[지역]
										void drive(Vehicle v)         { v.run();} 
								        driver.drive(MotorCycle:3번지) { Vehicle v = mo;  v(3번지).run();} 
									    driver.drive(car:2번지)        { Vehicle v = car; v(2번지).run();} 
3번지 MotorCycle {@run() 자동차달려    }    ← MotorCycle [3번지]
2번지 Car        {@run() 자동차달려    }    ← Car        [2번지]
1번지 Driver     {drive(Vehicle v); }    ← driver     [1번지]
                                         | main      
-----------------------------------------------------------------------

*/


///////////////////////////////////////////////////////
//2. 사용법
public class InterfaceEx002 {
	public static void main(String[]args) {
		  //3. 메인화면		
	      Driver driver = new Driver();
	      
	      Car car = new Car();
	      MotorCycle mo = new MotorCycle();
	      //The method drive (Car) is undefined for the type Driver -- 오류 
	      //메서드기본구조 : 리턴값 메서드명    ()      {}
	      //              void drive (Vehicle v ){}
	      driver.drive(car);
	      driver.drive(mo);
	      
			//4. 실행화면
			//자동차가 달립니다.
			//오토바이가 달립니다.

	      
	      
	}
}
///////////////////////////////////////////////////////
/*연습문제2)  
패키지명 :  package com.company.java013_ex;
클래스명 :  public class InterfaceEx002
*/