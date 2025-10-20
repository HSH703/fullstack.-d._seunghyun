package com.company.java016_javaio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class JavaIO002_byte {
	public static void main(String[]args) {
		//#1. 경로               com.company.java016_javaio_ex   -- ※경로 설정 주의※
	     String folder_rel="src/com/company/java016_javaio_ex/";  //상대경로(현재작업 폴더기준)
	     String file_path="io002.txt";

		 File folder = new File(folder_rel); //ctrl + shift + o
		 File file = new File(folder_rel + file_path);
	     
		//#2. 폴더+파일만들기
			try {
				if(!folder.exists()) {folder.mkdirs();} //mkdir(기본/ 안되면 mkdirs)
				if(  !file.exists()) {file.createNewFile();}
			}catch( Exception e) { e.printStackTrace(); }	
	     
	     								//기준
		//#3. byte 파일쓰기 InputStream > [프로그램] > OutputStream # 
	     try {
	     						     //(내가 사용할 펜 준비)
			OutputStream output = new FileOutputStream(file);
			output.write('j');
			output.write('a');
			output.write('v');
			output.write('a');
			output.close();
			System.out.println("OutputStream 쓰기완료!");
//	     }catch(FileNotFoiundException e) e.printStackTrace();
	     }catch(IOException e) {e.printStackTrace();}

										   //기준
		//#4. byte 파일읽기 InputStream # > [프로그램] > OutputStream  
	     try {
			InputStream input = new FileInputStream(file);
			int cnt = 0;
			while( (cnt = input.read() ) !=-1 ) {  //-1 끝
				System.out.println( (char)cnt );
			}
			input.close();
	     }catch (FileNotFoundException e) {e.printStackTrace();
	     }catch (IOException e) {e.printStackTrace();}
		
	}
}

/*
1. Java IO
- 입력(input)과 출력(output)
- 두 대상간의 데이터를 주고 받는 것
- 스트림이란? 사용견결통로
			
   입력스트림  →  [프로그램]       →       출력스트림
   		InputStream     OutputStream
   		Reader          Writer
   
2. Java IO 분류
- byte / char단위
- byte단위(기본/input  /output) - 모든종류( 그림, 멀티미디어, 문자)
- char단위(   Reader  /Writer) - only 문자

3. 보조스트림
-------------------------------------------------------------------------------------(많이 사용!!)
						char단위					byte단위
- new BufferedReader(new InputStreamReader( new FileInputStream(file) ) )
-------------------------------------------------------------------------------------
- 1) new FileInputStream( 네트워크나, 사용자가 넣어준 값 ) byte[#]/char
- new InputStreamReader     바이트를 [문자]스트림으로 - 텍스트 처리가능하게해줌.
- new BufferedReader 	    속도향상

*/
