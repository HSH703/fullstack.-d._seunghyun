package com.company.java010_bank;

import java.util.Scanner;

public class Login {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Login() { super();}
	public Login(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public int exec() {
		//setter / getter 이용해서 유저정보확인
		//변수
		int find = -1 ;
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 아이디입력받기 / 비번입력받기 
		System.out.println("[1]아이디를 입력하세요.");
		String tempId = scanner.next();
		System.out.println("[2]비밀번호를 입력하세요.");
		String tempPass = scanner.next();
		//처리 - 입력한 아이디와 userinfo .id가 같고, 입력한 비번과 userinfo.pass가 같다면, find = 1; 찾으면 1
		if(tempId.equals(this.userinfo.getId()) && tempPass.equals(this.userinfo.getPass() )) 
		{find=1;}
		//출력 
		return find;
		
	}//end exec
}//end class Login

/*기능 : 유저정보확인
*/