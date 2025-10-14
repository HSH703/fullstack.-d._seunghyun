package com.company.java008;

public class Method001 {
	//(1) 마법상자 - 코드의 재사용(목적)
	//public static 리턴값(결과물) 메서드명(파라미터){    }
	  public static void 		smile() {System.out.print("   :)  ");}
	  public static void        hello() {System.out.println("Hello");}
	  public static void		line () {System.out.println();}
	  

	  
	///////////////////////
	public static   void main(String[]args) {
	//(2) 마법상자(함수)사용 
		smile(); hello();
		hello();
		line();
		smile(); hello();
		line();
		hello();
		smile(); hello();
	}//end main
	////////////////////////
}//end class


/*■15. method (1)
1.   method?
-  코드 재사용
-  실행하고자 하는 명령어들을 {} 안에 한꺼번에 모아놓고
-  메서드이름이 호출되면 실행되는 기능
-  function, method, 멤버함수

2. method 사용법
Step1)  함수정의
Step2)  함수호출
 */
