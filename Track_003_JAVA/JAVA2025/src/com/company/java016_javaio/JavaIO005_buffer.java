package com.company.java016_javaio;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Calendar;

public class JavaIO005_buffer {
	public static void main(String[]args) throws IOException {
		//#1. 경로
		Calendar today = Calendar.getInstance();
        String folder_rel="src/com/company/java016_javaio_ex/";   
        String file_path="io005" + (today.get(2)+1) + today.get(5) + "io005.txt";
        //
        File folder = new File(folder_rel); //ctrl + shift + o
	    File   file = new File(folder_rel + file_path);

		//#2. 폴더 + 파일만들기 [##]
		if(!folder.exists() ) {folder.mkdirs(); }
		if(!file.exists() ) { file.createNewFile();}
		System.out.println("1> 폴더+파일만들기.");
		
		//#3. 파일쓰기   InputStream > [프로그램] > OutputStream #
		// BufferedWriter(속도향상) - OutputStreamWriter(단어) - FileOutputStream(byte) 
		// a(입력) → a(비우기) abc(버퍼) → abc(한번에 모았다가 비우기)  
		BufferedWriter bw =
			new BufferedWriter(new OutputStreamWriter( new FileOutputStream(file) ) );
		bw.write("1, write,1200\n");
		bw.write("2, chco,1500\n");
		bw.write("3, banana,1200\n");
		bw.close();
		System.out.println(">2. 쓰기완료");
		
		//#4. 파일읽기  InputStream # > [프로그램] > OutputStream  
		// BufferedWriter(속도향상) - InputStreamWriter(단어) - FileInputStream(byte) 
		
		BufferedReader br = 
			new BufferedReader(new InputStreamReader( new FileInputStream(file) ) );
		String line = "";
		StringBuffer sb = new StringBuffer();  //##
		while( (line = br.readLine()) !=null ) {sb.append(line + "\n");}
		System.out.println(sb.toString() );
		
		br.close();
		
		
	}
}
