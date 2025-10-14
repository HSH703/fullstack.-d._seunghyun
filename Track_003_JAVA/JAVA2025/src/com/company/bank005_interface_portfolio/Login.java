package com.company.bank005_interface_portfolio;

import java.util.List;
import java.util.Scanner;

public class Login implements MMPController {
	@Override public int exec(List<UserInfo> users, int find) {
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 아이디와 비밀번호 입력받기
		System.out.println("[1] 아이디입력> "); String tempid = scanner.next();
		System.out.println("[2] 비밀번호입력>"); String temppass = scanner.next();
		//처리 - users에서 아이디와 비밀번호 맞는 유저번호 찾기 - 찾앗으면 나오기 / 못찾았으면 -1
		//내가 입력받은아이디와 유저 0번째 users.get(0)의 아이디, 0번이 유저번호
		//if( 내가입력받은 아이디와 유저1번째 users.get(1)의 아이디 ){ 1번이 유저번호}
		for(int i=0; i<users.size(); i++ ) {
		if(tempid.equals(users.get(i).getId() ) && temppass.equals(users.get(i).getPass() )  ) {
			return i;
			}
		}
		//출력
		return -1;
		}
}
