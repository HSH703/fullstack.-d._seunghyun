package com.company.bank005_interface_portfolio;

import java.util.List;
import java.util.Scanner;

public class Input implements MMPController {
	@Override public int exec(List<UserInfo> users, int find) {
		//Deposit : users.get(유저번호)
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 금액 입력받기
		System.out.println("음악의 제목을 입력해주세요. > "); String title = scanner.next();

		//처리 - 해당유저의 금액에 추가
		UserInfo u = users.get(find);
		u.setTitle(u.getTitle() );
		//출력 - 입금이 완료되었습니다.
		System.out.println("입력이 되었습니다. > " + u);
		return 0;
		}
}



