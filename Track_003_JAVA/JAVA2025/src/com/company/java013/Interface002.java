package com.company.java013;
//1. 클래스는 단일상속
/*  Papa{brain}   Mama{brain}
       ↑ 			  ↑	
            Son{}  --> 누구것을 가지고 갈지 모름...(다중상속 X) -> Java에서 금지시켜놓음.
*/
class Papa2{int brain;}
class Mama2{int brain;}
//class Son extends Papa, Mama{}   //Syntax error on token ",", . expected

    
															
/*2. 인터페이스는 다중상속 가능  <<Interface >> = 스테레오타입    
 		{inter()}						  {method()}            {method()} 
     <<Interface >>Inter20    	<<Interface >>Inter21	   <<Interface >>Inter22
								                  ↑ 			     ↑  (실선 + 속이빈화살표)
				                                  <<Interface >>Inter23
				 ⋯⋯⋯△				            	  ⋯⋯⋯△
 <<class>>Papa2
(실선 + 속이빈화살표)    		            								 
			   	 Using1  extends Papa2 implements Inter23, Inter20	
			   	 -{@method()}
			   	 -{@method()}						       
*/

interface Inter20{void inter();}
interface Inter21{void method();}
interface Inter22{void method();}
interface Inter23 extends Inter21, Inter22 {   } 

//3. 많이 쓰는 형식 주요메인클래스 상속,           추가설계1      추가설계2   
class Using1 extends Papa2           implements Inter23, Inter20{
	@Override public void method() {   }
	@Override public void  inter() {   }
}

public class Interface002 {
	public static void main(String[]args) {
		//Inter23 my = new Inter23();
		Using1 my = new Using1();
		
		// instanceof 클래스확인, 상속확인( 내 부모? 족보확인) 
		if(my instanceof Object)  {System.out.println("1. Object");}
		if(my instanceof Papa2)   {System.out.println("2. Papa");}
		//if(my instanceof Mama2)   {System.out.println("3. Mama2");}
		//Incompatible conditional operand types Using1 and Mama2
		if(my instanceof Inter20) {System.out.println("4. Inter20");}

	}
}





