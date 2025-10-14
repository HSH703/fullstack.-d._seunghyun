package com.company.bank005_interface;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Bank_Main {
	//멤버변수 
	private List<UserInfo> users; //add, get, size, remove, contains
	private BankController[] controller;
	
	public Bank_Main() {
		users	   = new ArrayList<>();
		controller = new BankController[]{
				new Login(), new Add(), new Show(),
				new Deposit(), new Withdraw(),  new Delete()
		};
	}
	//멤버함수(메뉴판)
	public void menu() {
		//변수 
		int num = -1;
		Scanner scanner = new Scanner(System.in);
		//입력 + 처리
		//1. 메뉴판 무한반복 - 입력
		//2. 메뉴가 1 - 사용자추가 Add()
		//3. 메뉴가 2,3,4,5 - 로그인한 후에 Login()
		//   		각각의 기능 2. Show(), 3. Deposit() 4. WithDraw(), 5. Delete()
		//   controller[2].exec(users); controller[3].exec(users)'
		/*
		 Q1. 무한반복 + 각번호 입력받으면 ~ 기능입니다. 출력 
		 Q2. 입력받은 번호가 1번이면 유저추가
		 Q3. 입력받은 번호가 2,3,4,5 이면
			//1. 유저추가
			//2,3,4,5
			// 1) Login 2) 2,3,4,5 각각에서 처리해야할 일
		
		 
		  while(9가아니라면 계속하기){
		  	  //메뉴판 출력
		  	  if(입력받은 번호가 1이라면){유저추가}
		  	  else if(9면){종료출력구문}
		  	  else {입력받은 번호가 2,3,4,5번이면} 
		  }
  		  	  1) Login처리
		  	  2) 2,3,4,5각각에서 처리해야할 일
		  	      switch(번호){
		  	          2라면: 조회처리 break
		  	          3라면: 입금처리 break
		  	          4라면: 출금처리 break
		  	          5라면: 삭제처리 break
		  	      }
		*/
		
		while(num != 9) { //9가 아니라면 계속.
			//메뉴판 출력
			System.out.println(users);
			System.out.println("🌟💰WELCOME TO BANK SYSTEM💰🌟"+"\n[1] ➕ 계좌 추가" + "\n[2] 🔍 계좌 조회" +
						       "\n[3] 💵 입금하기" + "\n[4] 💸 출금하기" + "\n[5] 🗑️ 계좌 삭제 " 
						       	+ "\n👉 번호를 선택하세요:");
			num=scanner.nextInt();
			int find=1; //찾은 유저정보 or 0 로그인 or 1 계좌추가
			//add, get(유저번호), size, remove(유저번호), contains()
			//추가 
			// 1번:controller[1].exec(users); - users.add(new UserInfo("id", "pass", 1 ) );
			// 2번: 로그인해서 : users.get(번호); /users.remove(번호)
			// 조회: users.get(번호)
			// 입금: users.get(번호) / users.setBalance(입금받았음.)
			// 삭제: usrs.remove(번호)
			//controller[2].exec(users, index);
//				 if (num == 1) {System.out.println("유저추가");  }
//			else if (num == 9) {System.out.println("종료합니다.");}
			if(num>=2 && num<=5) {
				find=controller[0].exec(users,0);
				if(find == -1) {System.out.println("유저정보를 확인해주세요~!"); continue;}
				}
			
			
//			controller[num].exec(users);
			controller[num].exec(users,find);
//			UserInfo finduser = controller[0].exec(users);//로그인 
		}//end while
			//else {
				//controller[0].exec(users); //로그인
				//switch (num) {
				//case 2: /*Show*/     controller[2].exec(users); break;
				//case 3: /*Deposit*/  controller[3].exec(users); break;
				//case 4: /*Withdraw*/ controller[4].exec(users); break;
				//case 5: /*Delete*/   controller[5].exec(users); break;
				//}//end switch	  
			//}//end else
	}//end menu
/////////////////////////////////////////////////////////////	
	public static void main(String[]args) {
		new Bank_Main().menu();		//start
			//출력
			//🌟💰 WELCOME TO BANK SYSTEM 💰🌟
			//
			//[1] ➕ 계좌 추가
			//[2] 🔍 계좌 조회
			//[3] 💵 입금하기
			//[4] 💸 출금하기
			//[5] 🗑️ 계좌 삭제  
			//
			//👉 번호를 선택하세요:
		
		
		
	}//end main
}//end class
/////////////////////////////////////////////////////////////	
