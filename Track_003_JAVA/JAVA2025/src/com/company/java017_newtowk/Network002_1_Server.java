package com.company.java017_newtowk;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;

//////////////////////////////////////////////////////////////////////////////
public class Network002_1_Server {
	public static void main(String[]args) {
		//#1. 서버소캣 ( AS 센터 )[socket, socket, socket,,,]
		ServerSocket ascenter = null;
		Socket       socket;
		//#2. localhost(127.0.0.1) / port(80웹, 443웹자물쇠)
		try {
			ascenter = new ServerSocket(703);
			System.out.println("[Server] 1. 서버준비완료 A/S 센터 OPEN.... ");
		} catch (IOException e) {e.printStackTrace();} 
		
		//#3. 클라이언 요청(accept)오면, 상담사(Socket)연결
		try {			
			System.out.println("[Server] 2. 고객기다리는중....");
			socket = ascenter.accept();
			// 3-1. 연결요청 들어오기를 기다리는 중인데,,,, 연결이 오면 수락할게.
			// 3-2. 연결이 들어올때까지 STOP
			// 3-3. 연결이 들어오면.... Socket(전화기)으로 연결해서 데이터 주고받기.
			System.out.println("[Server] 4. 고객님 연락와서 상담사랑(socket)으로 연결함....");
			
			//#4. 데이터 주고받기
			Thread sender   = new   Sender(socket); sender.start(); 
			Thread receiver = new Receiver(socket); receiver.start();

		} catch (IOException e) { e.printStackTrace(); } 
	}
}
//////////////////////////////////////////////////////////////////////////////
//      InputStream > [프로그램] > OutputStream
class Sender   extends Thread{ //#1. 작업수행클래스
	Socket socket;   DataOutputStream out; //필수!!
	String who;      SimpleDateFormat sdf;
	public Sender() {}
	public Sender(Socket socket) { 
		this.socket = socket;  //상대방과 연결되어 있는 정보
		try {
			out = new DataOutputStream( socket.getOutputStream() ); //말하기기능 키기
			out.writeUTF("Hello....START!>> ");
			//1. WHO + 시간 (메인파트)
			this.who = "[" + (socket.getPort() == 703? "Client" : "Server");
			this.sdf = new SimpleDateFormat("hh:mm:ss]");
			
		} catch (IOException e) {e.printStackTrace();}
	}
	
	@Override public void run() { //#2. todo
		BufferedReader br = new BufferedReader( new InputStreamReader(System.in) ); //내가 키보드로 써서 말하기.
    	try {
    		while(out!= null) { //연결이 되어 있다면....?
    			String data = br.readLine(); //쓴거 읽어들이고
    			String time = sdf.format(System.currentTimeMillis()); //##
			    out.writeUTF(who + time + data); //## 출력
			}
		}catch (Exception e) { //e.printStackTrace(); 
			//2. Close
			System.out.println("통신을 마무리합니다. >> " + socket );	
		}finally {
			try {
				if(out!= null) { out.close(); }
				if(br != null) { br.close(); }
				if(!socket.isClosed() ){ socket.close(); } 
			}catch(Exception e ) {e.printStackTrace(); }
		}
	}
}
// 1명분
// 상담사 - (Server socket) - [말하기 + 듣기]
// 고객님 - (Client socket) - [말하기 + 듣기]

//////////////////////////////////////////////////////////////////////////////
class Receiver extends Thread{
	Socket socket;   DataInputStream in;
	public Receiver() {}
	public Receiver(Socket socket) {
		this.socket = socket; //각각의 상대방의 정보
		try {in = new DataInputStream( socket.getInputStream() );} //들을준비(연결)
		catch (IOException e) {e.printStackTrace();}
	}
	@Override public void run() {
		try {
			while(in != null) {System.out.println(in.readUTF() );} //실시간으로 계속 듣기
		}catch(Exception e ) { //e.printStackTrace(); 
			System.out.println("통신을 마무리합니다. >> " + socket );	
		}finally {
			try {
				if(in!= null) { in.close(); }
				if(!socket.isClosed() ){ socket.close(); } 
			}catch(Exception e ) {e.printStackTrace(); }
		}
	}	
}

/*****
1. Http   통신 - 단방향 통신(client 요청이 있을때, server가 응답하고 연결이 종료 방식. ) / jsp, spring
2. Socket 통신 - 양방향 통신(특정 포트를 통해 실시간으로 정보를 주고 받기. - tcp/udp)
3. 소캣통신 흐름 
  1) 서버소캣 (as 센터), 포트바인딩(특정(as센터) 문 열어놓기.)
  2) 클라이언트 연결요청(소캣), 수락 
  3) 클라이언트 소캣(socket/전화한 유저의 정보) 
     상담사가 읽어들이기(InputStream #(읽어들이기) > 프로그램기준(상담사기준) > OutputStream(말하기) )   
  4) 말하고 주고받기

*/