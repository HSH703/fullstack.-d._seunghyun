package com.company.java010_bank;

public class Delete {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Delete() { super();}
	public Delete(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public void exec() {
		//setter / getter 이용해서 유저정보삭제, 초기화
		//setter / getter 이용해서 사용자에게 출금받기
		//변수
		
		//입력 
		//처리 - setter를 이용해서 이름 null, 비번 null, 잔액 0으로~~
		this.userinfo.setId("");
		this.userinfo.setPass("");
		this.userinfo.setBalance(0);
		//출력 - 정보를 삭제했습니다. 출력
		System.out.println("정보를 삭제했습니다.");
	}

}
/*기능 : 유저정보삭제, 초기화
*/