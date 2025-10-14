package com.company.java011_ex;


//1. 클래스는 부품객체(클래스변수 / 인스턴스변수) 
class User002 { 
	   final String nation = "Korea";  //인스턴스변수 - method area - new X - 생성자 X - now 
	   final String jumin;   		   //
	   String name;					   //
	   
	   
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
	   public User002() { jumin="00000"; }
	   public User002(String jumin, String name) {
	      this.jumin = jumin;
	      this.name = name;
	   }
	}//end class User002


//////////////////////////////////////////////////////////////////
public class FinalEx {
	public static void main(String[]args) {
	      User002 user1 = new User002("123456-1234567", "아이유");
	      System.out.println(user1);   
	      
	    //user1.nation = "USA";     //cannot be assigned  
	    //user1.jumin  = "123123-1234321"; //final
	      user1.name = "IU"; 
	      System.out.println(user1);   

		
		
	}//end main
}//end class
//////////////////////////////////////////////////////////////////
/*연습문제1)  final
패키지명 : com.company.java011_ex
클래스명 : FinalEx
다음코드에서 오류나는 부분을 찾아 주석달고 이유를 적으시오.
class User002 {
   final String nation = "Korea";   
   final String jumin;   
   String name;

   public User002() { jumin="00000"; }
   public User002(String jumin, String name) {
      this.jumin = jumin;
      this.name = name;
   }
}
 public class FinalEx {
   public static void main(String[] args) {
      User002 user1 = new User002("123456-1234567", "아이유");
      System.out.println(user1);   
      
      user1.nation = "USA";      
      user1.jumin  = "123123-1234321"; 
      user1.name = "IU"; 
      System.out.println(user1);   
   }
}


*/