package com.company.java016_javaio;

import java.io.File;

public class JavaIO001 {
	public static void main(String[]args) {
		// 1. 경로체크
		String folder_abs="C:\\file\\"; 
		//절대경로(시스템 (루트)폴더기준 C: \(C드라이브/경로 체크해서 자바에 복붙할때, '\' 추가되서 입력) )
		// =" " 안에 공백빼고 입력하기!!(안 그러면 파일 생성이 안됨.)
		String folder_rel="src/com/company/java016_javaio_ex/"; 
		//상대경로(현재작업 폴더기준/ ※ src 앞에 '/' 빠지고, 뒤에 '/'있어야함.) 
		//숨겨져있거나, 경로처리가 잘못되어 있으면, (C드라이브(위의 코드 기준으로) )에 파일이 표시가 안될수도 있음.
		String file_path="io001.txt";
		
		// 2. 폴더 + 파일 준비
		File folder = new File(folder_rel); //ctrl + shift + o
		File file = new File(folder_rel + file_path);
		//File folder = new File(folder_abs); //ctrl + shift + o
		//폴더가 없다면?            폴더 만들기
		try {
			if(!folder.exists()) {folder.mkdirs();} //mkdir(기본/ 안되면 mkdirs)
			if(!file.exists()) {file.createNewFile();}
		}catch( Exception e) { e.printStackTrace(); }	
		System.out.println("폴더/파일 준비완료!");
		 //ctrl + f11 / f5(새로고침)
		
	}//end main
}//end class
