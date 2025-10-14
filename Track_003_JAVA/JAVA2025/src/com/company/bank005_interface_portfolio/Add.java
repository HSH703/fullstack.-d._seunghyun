package com.company.bank005_interface_portfolio;

import java.util.List;
import java.util.Scanner;

public class Add implements MMPController {
	//@Override public UserInfo exec(List<UserInfo> users) {return null;}
	//@Override public void exec(List<UserInfo> users, int find) {}
	
	@Override 
	public int exec(List<UserInfo> users, int find) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("[1] 사용할 아이디 > "); String id=scanner.next();
		System.out.println("[2] 사용할 비밀번호 > "); String pass=scanner.next();
		System.out.println("[3] 음악장르 입력 > "); String genre=scanner.next();
		System.out.println("[4] 음악제목 입력> "); String title=scanner.next();
		
		users.add(new UserInfo(id,pass,genre,title)  );
		System.out.println("사용자 추가완료되었습니다.");
		return 1; //넣고 싶은 숫자
	}
}
