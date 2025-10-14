package com.company.java013_ex;

/*   상속도  
 			                     Object
                                    ↑
                                  Board  
                                { exec() }
   ⋯⋯⋯△		              ⋯⋯⋯△                    ⋯⋯⋯△                   ⋯⋯⋯△			
BoadInsert    		 BoardSelector             BoardUpdate             BoardDelete
{ @exec(){글쓰기} }  { @exec(){글읽기} }       { @exec(){글수정} }       { @exec(){글삭제} }   --> 이렇게 출력해줘.
      1. 인터페이스는 설계클래스 (상태: public static final / 행위 : public abstract )
  					method area[공용], new X, 생성자 X, this 각각 X, abstract method()이 없어서
  	  2. 부모 = 자식 : 한가지 타입(부모)으로 여러객체(자식들)를 관리목적
  	            업캐스팅 / 타입캐스팅 X / 부모에서 메서드호출시 @Override가 되서 (업그레이드된) 자식의 메서드 호출
      
*/


//1. 문제 설명
//다음은 게시판 기능을 인터페이스로 추상화한 프로그램이다. 
//Board 인터페이스는 게시판 기능의 공통 동작을 정의하며, 
//BoardInsert, BoardSelect, BoardUpdate, BoardDelete 클래스는 이를 구현하여 각각의 기능을 수행한다.
interface Board {    void exec();  }

//2. 주어진 조건
//구현 클래스들
class BoardInsert implements Board{ @Override public void exec() { System.out.println("글쓰기"); }} 
class BoardSelect implements Board{  @Override public void exec() {System.out.println("글읽기");}}  
class BoardUpdate implements Board{  @Override public void exec() {System.out.println("글수정");}}  
class BoardDelete implements Board{  @Override public void exec() {System.out.println("글삭제");}}  
//- 각 클래스는 exec() 메서드를 오버라이딩하여 해당 기능을 출력한다.

/*
---------------------------------------------------------------------------------------------
 method [공통: static, final, abstract]      Board , BoardInsert,,,, InterfaceEx001
---------------------------------------------------------------------------------------------
 heap                                     stack  
 4번지BoardDelete   {exec()글삭제 }         ← controller [4번지]   controller.exec();   //글삭제
 3번지BoardUpadate  {exec()글수정 }         ← controller [3번지]   controller.exec();   //글수정
 2번지BoardSelector {exec()글읽기 }         ← controller [2번지]   controller.exec();   //글읽기
 1번지BoardInsert   {exec()글쓰기 }         ← controller [1번지]   controller.exec();   //글쓰기
  						                    controller [null]     주소 못담았어.
*/


///////////////////////////////////////////////////////////
//3. 메인 클래스 작성 
public class InterfaceEx001 {
	public static void main(String[]args) {
        Board controller = null; 
        controller = new BoardInsert();  controller.exec();  // 글쓰기 기능
        controller = new BoardSelect();  controller.exec();  // 글읽기 기능
        controller = new BoardUpdate();  controller.exec();  // 글수정 기능
        controller = new BoardDelete();  controller.exec();  // 글삭제 기능 

		 /*
		   if(controller instanceof Object     ) {System.out.println("코드");}
		   if(controller instanceof BoardInsert) {System.out.println("글쓰기");}
		   if(controller instanceof BoardSelect) {System.out.println("글읽기");}
		   if(controller instanceof BoardUpdate) {System.out.println("글수정");}
		   if(controller instanceof BoardDelete) {System.out.println("글삭제");}
		   */

        
		//4.  실행 결과
		//코드
		//글쓰기
		//글읽기
		//글수정
		//글삭제

        
	}//end main
}//end class
///////////////////////////////////////////////////////////

/*연습문제1) 게시판 기능을 인터페이스로 구현하기
패키지명 :  package com.company.java013_ex;
클래스명 :  public class InterfaceEx001

*/