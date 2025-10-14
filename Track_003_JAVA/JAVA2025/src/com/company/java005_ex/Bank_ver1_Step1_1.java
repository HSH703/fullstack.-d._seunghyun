package com.company.java005_ex;

import java.util.Scanner;

public class Bank_ver1_Step1_1 {
	public static void main(String[] args) {
		// GIGO
		// 변수
		int num = -1;
		String id = " ", pass = " ";
		double balance = 0;
		Scanner scanner = new Scanner(System.in);

		for (;;) {
			System.out.print("\n\n=======SH_BANK=========\n*" + "1.추가\n* 2.조회\n* 3.입금\n* 4.출금\n* 5.삭제\n* 9.종료\n입력>>>");
			num = scanner.nextInt();
			if (num == 9) {
				System.out.println("ATM기를 종료합니다.");
				break;
			}

			switch (num) {
			case 1: {
				System.out.println("추가기능입니다.");
				System.out.println("아이디를 입력하세요.");
				id = scanner.next();
				System.out.println("비밀번호를 입력하세요.");
				pass = scanner.next();
				System.out.println("잔액을 입력하세요.");
				balance = scanner.nextDouble();
			}
				break;

			case 2: {
				System.out.println("조회기능입니다.");
				// 변수
				String tempid, tempass;
				// 입력 2-1. 사용자에게 임시아이디와 임시비밀번호를 입력받기
				System.out.println("아이디를 입력하세요.>");
				tempid = scanner.next();
				System.out.println("비밀번호를 입력하세요.>");
				tempass = scanner.next();
				// 처리 + 입력
				// 2-2. 아이디와 임시아이디가 같아야하고, 비번과 임시비밀번호가 같다면 사용자정보출력
				if (tempid.equals(id) && tempass.equals(pass)) {
					System.out.println("🛠Welome to SH_BANK");
					System.out.println("🛠id>" + id);
					System.out.println("🛠pass>" + pass);
					System.out.println("🛠balance>" + balance);
				}

				// 2-3. 다르면 정보를 확인해주세요.
				else {
					System.out.println("정보를 확인해주세요.>");
				}
			}
				break;

			case 3: {
				System.out.println("입금기능입니다.");
				// 변수
				String tempid, tempass;
				double price;
				// 입력 사용자에게 임시아이디와 임시비밀번호 입력받기
				System.out.println("아이디를 입력하세요.>");
				tempid = scanner.next();
				System.out.println("비밀번호를 입력하세요.>");
				tempass = scanner.next();
				// 처리 if( 아이디와 임시아이디가 같고 비번과 임시비밀번화가 같다면) {돈 입력받아서, 잔액에 추가}
				if (tempid.equals(id) && tempass.equals(pass)) {
					System.out.println("금액을 입력하세요.>");
					price = scanner.nextDouble();
					balance += price;
					System.out.println("잔액에 추가합니다.>");
				}
				// 출력 else{아니라면 정보를 확인해주세요.}
				else {
					System.out.println("정보를 확인해주세요.");
				}
			}
				break;

			case 4: {
				System.out.println("출금기능입니다.");
				// 변수
				String tempid, tempass;
				double price;
				// 입력 사용자에게 임시아이디와 임시비밀번호 입력받기
				System.out.println("아이디를 입력하세요.>");
				tempid = scanner.next();
				System.out.println("비밀번호를 입력하세요.>");
				tempass = scanner.next();
				// 처리 if( 아이디와 임시아이디가 같고 비번과 임시비밀번화가 같다면) {돈 입력받아서, 잔액에서 빼기}
				if (tempid.equals(id) && tempass.equals(pass)) {
					System.out.println("금액을 입력하세요.>");
					price = scanner.nextDouble();
					balance -= price;
					System.out.println("잔액에서 빼겠습니다.>");
				}
				// 출력 else{아니라면 정보를 확인해주세요.}
				else {
					System.out.println("정보를 확인해주세요.");
				}
			}
				break;

			case 5: {
				System.out.println("삭제기능입니다.");
				// 변수
				String tempid, tempass, delete = "";

				// 입력 사용자에게 임시아이디와 임시비밀번호 입력받기
				System.out.println("아이디를 입력하세요.>");
				tempid = scanner.next();
				System.out.println("비밀번호를 입력하세요.>");
				tempass = scanner.next();
				// 처리 if( 아이디와 임시아이디가 같고 비번과 임시비밀번호가 같다면) {삭제하시겠습니까? 묻고 y라면 정보삭제}
				if (delete.equals('Y')) {
					id = " ";
					pass = " ";
					balance = 0;
					System.out.println("삭제하시겠습니까?>");
					// 만약 y라면
					// id = " ", pass = " "; double balance = 0;
					System.out.println("정보를 삭제합니다.");
					delete = scanner.next();
				}

				// 출력 else{아니라면 정보를 확인해주세요.}
				else {
					System.out.println("정보를 확인해주세요.");
				}
			}
				break;

			}

			// 입력 + 처리 + 출력

		} // end for
	} // end main
} // end class


/*
 * 하루에 하나씩 힌트나가요~~~! 천천히 정리하면서 익히면서 도전이요~~! 이번주 다음주해서 숙제~!
 * 
 * Step 1. 무한반복으로 만드는 메뉴 만들기
 * 
 * for(;;){//1-1 무한반복 //1-2 빠져나올조건 9 //1-3 입력 받은 번호가 if or switch 1을 입력하면
 * 추가기능입니다. 출력구문까지만. 2를 입력하면 조회기능입니다. 출력구문까지만. 3을 입력하면 입금기능입니다. 출력구문까지만. 4를 입력하면
 * 출금기능입니다. 출력구문까지만. 5를 입력하면 삭제기능입니다. 출력구문까지만. 9를 입력하면 종료합니다. 출력구문까지만. }
 */

/*
 * Step 2 추가기능 // 아이디 입력 > _입력받기 // 비밀번호 입력 > _입력받기 // 잔액입력 >_입력받기
 * 
 */

/*
 * Step 3 조회기능 2-1. 사용자에게 임시아이디와 임시비밀번호를 입력받기 2-2. 아이디와 임시아이디가 같아야하고, 비번과임시비밀번호가
 * 같다면 사용자정보출력 2-3. 다르면 정보를 확인해주세요.
 */
