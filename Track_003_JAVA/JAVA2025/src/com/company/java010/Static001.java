package com.company.java010;
// 1. 클래스는 부품객체
// 2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Farm{
	//상태 - 멤버변수
	String name;	// 인스턴스변수 - heap area - new 0 - 생성자 / cat(1번지).name , cat(1번지).name
	int	   age; 	// 인스턴스변수 - heap area - new 0 - 생성자 / dog(2번지).name , dog(2번지).name
	static String FarmName="(주) 동물농장"; // 클래스변수 - Farm.FarmName(=클래스명.변수명)    ( 명시적초기화 )
	static int	  FarmNum;				  // 클래스변수 - method area - new X - 생성자X 
	static String FarmBoss;
	static{ FarmNum=2; FarmBoss="신동엽";    }  //초기화블록(=몰아서 초기화를 잡음.)
	
	//행위 - 멤버함수
	static void num_plus() {  FarmNum++;   /*tnis.age++;*/ } // 클래스메서드(static 붙은 곳에는 this. 사용 불가)
	
	void show() { // 인스턴스메서드
		System.out.println("\n\n:::::::::::::::::");
		System.out.println("::이름 : " + this.name);
		System.out.println("::나이 : " + this.age);
		System.out.println("::인원 : " + Farm.FarmNum);

	}
}
////////////////////////////////////////////////////////////////////////
public class Static001 {
	public static void main(String[]args) {
		System.out.println("\n\n0. 동물농장");
		System.out.println("::회사이름> : " + Farm.FarmName);
		System.out.println("::회사사장> : " + Farm.FarmBoss);
		System.out.println("::회사인원> : " + Farm.FarmNum);
		
		System.out.println("\n\n1. 동물농장식구-this-각각");
		//		1) new : 메모리빌리기, 객체생성 2) Farm() 초기화 3) cat 번지
		Farm cat = new Farm(); 
		cat.name = "sally"; cat.age=3; cat.show(); // 갖고 놀기 사용하기
		Farm dog = new Farm();
		dog.name = "alpha"; dog.age=7; Farm.num_plus();/*dog.num_plus();*/ dog.show(); 
	}//end main
}//end class
////////////////////////////////////////////////////////////////////////
/* 클래스 변수
 초기화순서 :    기본값    	             명시적초기화	               초기화블록                 생성자
 * FarmNum	    0					   null						(O) 2					 X
 * FarmBoss    null 				   null					 (O) 신동엽					 X
 * FarmName    null					(주)동물농장				 (X) (주)동물농장      		 X
 ////////////////////////////////////////////////////////////////////////////////////////////////////
   인스턴스 변수
 * cat		name=null, age=0     (X)name=null, age=0       (X)name=null, age=0      name=null, age=0 
 * dog		name=null, age=0     (X)name=null, age=0       (X)name=null, age=0      name=null, age=0 

------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
    Farm.class, Static001.class     	★ 클래스 : 설계도
    FarmNum=2;    FarmBoss="신동엽";     FarmName="(주) 동물농장";
----------------------------------------------------------------
[heap: 동적]                  | [stack : 잠깐빌리기] 
2번지{name=null, age=0}    ←    dog[2번지]
1번지{name=null, age=0}    ←    cat[1번지]
					         | main 
----------------------------------------------------------------
*/