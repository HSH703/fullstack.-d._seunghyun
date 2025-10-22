package com.company.java017_newtowk;

import java.io.IOException;
import java.net.Socket;

public class Network002_2_Client {
	public static void main(String[]args) {
		//#1. Client
		Socket socket = null;
		
		try {
			//#2. 고객이 AS센터에 연락 - 127.0.0.1(루프백/내부주소)
			socket = new Socket("127.0.0.1", 703);     //("IP", 포트번호)
			System.out.println("[Client] 3. AS 센터에 고객문의~! ");
			
			//#3. 데이터주고받기 ### Sender / Receiver 나와있는 클래스명 주의!!
			Thread sender   = new Sender  (socket);   sender.start();
			Thread receiver = new Receiver(socket); receiver.start();
			
		} catch (IOException e) {e.printStackTrace();} 
		
	}
}
