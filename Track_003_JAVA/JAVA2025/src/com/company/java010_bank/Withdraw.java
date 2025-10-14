package com.company.java010_bank;

import java.util.Scanner;

public class Withdraw {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Withdraw() { super();}
	public Withdraw(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public void exec() {
		//setter / getter 이용해서 사용자에게 출금받기
		//변수
		double num;
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 출금할 금액 입력받기
		System.out.println("출금할 금액을 입력해주세요. > "); 
		num = scanner.nextDouble();
		//처리 - setter를 이용해서 출금할 금액 셋팅
		this.userinfo.setBalance( userinfo.getBalance()-num);
		//출력 - 출금이 완료되었습니다. 출력
		System.out.println("출금이 완료되었습니다.");
	}

	
	
}
/*기능 : 출금기능
*/