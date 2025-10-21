package com.company.java017_newtowk;

// 수행클래스 1) Thread 상속 2) run 실행해야하는 내용 3) start 실행

class Cow extends Thread { //#1. 상속
	for(int i=0; i<5; i++) { //#2. 
		System.out.println("음메" + (i+1) );
		try { Thread.sleep(100);}catch (InterruptedException e ) {e. printStackTrace(); }
	} 
}

class Chicken extends Thread{
	@Override public void run() {
		for(int i=0; i<5; i++) {
			System.out.println("꼬끼오#" + (i+1) );
			try { Thread.sleep(100);}catch (InterruptedException e ) {e. printStackTrace(); }
		}
	}
}

public class Thread003_Thread_ex {
	public static void main(String[]args) {
		Thread cow     = new Cow();     cow.start(); //#3.실행클래스 시작 start
		Thread chicken = new Chicken(); chicken.start();
		
	}//end main
}//end class
