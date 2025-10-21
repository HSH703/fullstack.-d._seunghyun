package com.company.java017_newtowk_ex;

import javax.swing.JOptionPane;

//1. 프로세스 - 실행중인 프로그램
//2. 프로세스 - 자원(데이터, 메모리) + Thread(실제작업수행)
//3. 작업수행클래스 만드는 법 - Thread(상속 - run - start), Runable

// ■ Todo2 - 실행클래스1
class Count extends Thread{
    //#1. 수행클래스 Thread 상속
	//#2. run 구현 - 10부터 거꾸로 카운트
	@Override public void run() {
		for(int i=10; i>0; i--) {
			System.out.println(i);
			try {Thread.sleep(10000);}catch(InterruptedException e) {e.printStackTrace();}
		}
	} 	
}

//■ Todo1 지문정답인지 확인가능 - 실행클래스2
class Question extends Thread{
	@Override public void run() {
		// 사과알파벳을 입력하세요.   		//"Apple".tolowerCase();
		// 사과를 입력을 받으면 정답입니다. / 정답이 아닙니다.
		String answer=JOptionPane.showInputDialog("사과알파벳을 입력하세요.");
		System.out.println(answer.toLowerCase().equals("apple")? "정답":"오답");
		
//		for(int i=0; i<5; i++) {
//			String upper, lower;
//			Scanner scanner = new Scanner(System.in);
//			
//			System.out.println("알파벳을 입력하세요.");
//			upper=scanner.next();
//			System.out.println("알파벳을 입력하세요.");
//			lower=scanner.next();
//		}
	}
}

public class ThreadEx001 {
	public static void main(String[]args) { //실행클래스 0
		//#3. start로 수행클래스 시작
		Thread question = new Question(); question.start();
		Thread count    = new Count();   count.start();
		
		
	}//end main
}//end class


/*
연습문제1)  Thread
패키지명 : com.company.java017_newtowk_ex
클래스명 : ThreadEx001
1.  QuestionCount  - 10부터 1까지 
      카운트 1초에 10 ,
                2초에 9, 
                3초에  8.....

2. 사과알파벳을 입력하세요.
   사과를 입력을받으면 정답입니다 / 정답이 아닙니다.
*/








