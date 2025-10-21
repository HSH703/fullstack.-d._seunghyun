package com.company.java017_newtowk_ex;
//1. Candy를 Mentol클래스가 상속받는 경우 1초에 1개 팔렸다라고 실행클래스 만들려고함. 
/*   Runable 				Candy  - name/sell
         △...                ↑
        MentolSeller        
*/
class Candy{
	String name; 
	public void sell() { System.out.println( name + "가 1개 팔렸습니다."); }
	public Candy() {super();}
}
class MentolSeller extends Candy implements Runnable{ //#1. Runnable
	@Override public void run() { //#2. 실행(run)내용
		while(true){
			sell();
			try {Thread.sleep(1000);} 
			catch (InterruptedException e) {e.printStackTrace();}
		break;
		}
	}
// 2. MentolSeller extends Thread 불가능, 여기서 사용할 수 있는거는 Runnable 이용 ★ 
// 3. 구현내용인 run - ★ 1초에 Thread.sleep(1000) 1개씩 팔렸다 sell() 
// 문제점 확인 : 손님이 없는데.... 1개 팔렸습니다. 계속처리됨, 끄는 방법은? 
}
public class ThreadEx002 {
	public static void main(String[]args) {
	  //4. MentolSeller start 실행해주기
      //Thread       seller = new Thread(new MentolSeller()); // name을 설정한적이 없음.
		MentolSeller seller = new MentolSeller(); seller.name="멘톨캔디";
		Thread        t     = new Thread(seller); t.start(); 
		for(int i=0; i<5; i++) {
			System.out.println(" 손님 기다리는중... ");
			try {Thread.sleep(i);}
			catch (InterruptedException e) {e.printStackTrace();}
		}//end for
	
	}//end main
}//end class

/*
멘톨캔디가 1개 팔렸습니다.
  손님 기다리는 중......
멘톨캔디가 1개 팔렸습니다.
  손님 기다리는 중.......
*/
















