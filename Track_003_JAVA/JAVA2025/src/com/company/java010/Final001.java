package com.company.java010;

//1.final	변경하지마
// 클래스는 부품객체
// 클래스는 상태(멤버변수)와                    행위(멤버함수)
// 상속 X     [상수: 변하지 않는 값]           [override 자식한테 내꺼쓰지마!] X 
final class FinalEx extends Object{
  final	static String gaecheon = "10-3";  //클래스변수 - method area - new X - 생성자 - this X > now  
  String name;  //인스턴스변수 - heap area - new O - 생성자O - this O > 메모리 각각
  final void show() {	System.out.println( FinalEx.gaecheon + "\t" + name );}
}
/*
class FinalSon extends FinalEx{ 
	//@Override void show() { super.show();  }
	// 오버라이드 - 상속시 자식클래스에서 부모의 클래스를 재수정
}
*/
/////////////////////////////////////////////////////////
public class Final001 {
	public static void main(String[]args) {
		//FinalEx.gaecheon = "10-1";	//The final field FinalEx.gaecheon cannot be assigned
		FinalEx saram = new FinalEx();
		saram.name = "SH";
		saram.show(); 
	}//end main
}//end class
/////////////////////////////////////////////////////////
