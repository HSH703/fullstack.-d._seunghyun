package com.company.java017_newtowk_ex;

import javax.swing.JOptionPane;

class Count32 extends Thread { //1) extends Thread , implements Runnable

	@Override
	public void run() { //2) todo
		for(int i=10; i>0; i--) {
			//1. 카운트
			if(Thread.currentThread().isInterrupted() ) { //###step2)
				System.out.println("....stop"); //방해받았니? 
				break;
			}
	
			System.out.println(i);
			
			//2. 1초마다 쉬었다가 들어가기.
			try {Thread.sleep(1000);} 
			catch (InterruptedException e) { Thread.currentThread().interrupt(); } //### step3)
		}
	}
}

public class ThreadEx003_2 {
   public static void main(String[] args) { //실행클래스 - main
	   String info = "계속 카운트합니다.";
       Thread timer1 = new Count31(); timer1.start();   //3)
       String answer = JOptionPane.showInputDialog("count stop? y/n");
   //											### step3)
       if(answer.toLowerCase().equals("y") ) {timer1.interrupt(); } //LowerCase: 소문자!
       
       //##### 3. 입력받기
       System.out.println("> main end....");

   }//end main
}// end class






