package com.company.java014;

import java.util.ArrayList;
import java.util.List;

public class List002 {
	public static void main(String[]args) {
		//1. List - 원하는 자료형 원하는 갯수만큼
		List list1 = new ArrayList();    // ctrl + shift + o
		list1.add("one"); list1.add(1);	 // ★ 무분별한 데이터
		System.out.println(list1);
		
		//2. List - <> ★ 제네릭스
		List<String> list2 = new ArrayList<>();   
		list2.add("one"); list2.add("banana"); list2.add("coconut"); //list2.add(3);
		System.out.println(list2);
		
		//3.List - 활용	(add, get(번호), size, remove(번호), contains )
		List<UserDTO> users = new ArrayList<>();
		users.add( new UserDTO("aaa@gmail.com")); //사용자추가
		users.add( new UserDTO("bbb@gmail.com"));
		
		System.out.println("1. get > "  + users.get(0));
		System.out.println("2. size > " + users.size());
		System.out.println("3. remove > " + users.remove(0));
		System.out.println("4. contains > " + users.contains(new UserDTO("bbb@gmail.com")));
		System.out.println("4. contains > " + users.contains(new UserDTO("ccc@gmail.com")));
		
		System.out.println(users);
	}//end main
}//end class
class UserDTO{ //데이터보관 및 전송 목적
	private static int cnt = 0;       // static(공용) 유저가 생기는만큼 자동카운트
	private final int    	 no;      // final(수정X)
	private String email;	 		  // 사용자가 입력하는 email
	
	//기본생성자, 필드생성자, toString, getters/setters
	
	public UserDTO() { this.no = cnt++; }// 유저번호 = 값; 값 넣고 1개증가
	public UserDTO(int no, String email) { super(); this.no = no; this.email = email; }
	public UserDTO(String email ) { this(); this.email = email;} //UserDto
	
	@Override public String toString() {return "UserDTO [no=" + no + ", email=" + email + "]";}
	
	public String getEmail() { return email; } 
	public void setEmail(String email) { this.email = email; }
	
	public static int getCnt() {return cnt;}
	
	public int getNo() {return no;}
	
	
	
	
}





//0. 저장단위 : 변수 < 배열(같은 자료형 연달아서 여러개) < 클래스(내가 원하는 자료형 + 메서드) 
//< 콜렉션프레임워크 < 파일 < DB
//1. 배열 단점개선   - 한가지 자료형 사이즈 고정(정적배열) String [] arr = new String [3] 
//2. 콜렉션프레임워크 - 동적배열 ( List ★ , Set , Map ) - 필수!!
//3. List - [기차]  : 순서O , 중복O       , ( add, get, size, remove, cotains)
//4. Set  - [주머니] : 순서X , 중복X      , ( add, X get(번호) → interator, size, remove, cotains)
//5. Map  - [사전] : key:value, (entry)   ( put,   get(key) / iterator, size, remove, cotains)

