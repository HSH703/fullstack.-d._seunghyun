package com.company.java016_javaio;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class Network003_naver_news {
	public static void main(String[]args) {
		//#1. URL
		try {
			String apirul="https://openapi.naver.com/v1/search/news.json?query="
							+ URLEncoder.encode("캄보디아", "UTF-8");
			URL url = new URL(apirul);
			//#2. HeepURLConnection
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			//#3. 요청설정
//			> X-Naver-Client-Id: {애플리케이션 등록 시 발급받은 클라이언트 아이디 값}
//			> X-Naver-Client-Secret: {애플리케이션 등록 시 발급받은 클라이언트 시크릿 값}
			conn.setRequestMethod("GET");
			conn.setRequestProperty("X-Naver-Client-Id", "s1pgEViWeKgNT0Kt_d9G");
			conn.setRequestProperty("X-Naver-Client-Secret", "rNcKxjYMHM");

			//#4. 응답확인
			BufferedReader br ;
			
			if(conn.getResponseCode()==200) {
				br = new BufferedReader( new InputStreamReader( conn.getInputStream() ) );
			}else {
				br = new BufferedReader( new InputStreamReader( conn.getErrorStream() ) );
			}
			
			//#5. 응답데이터
			String line ="";
			StringBuffer sb = new StringBuffer();
			while((line = br.readLine()) !=null) { sb.append(line + "\n");}
			System.out.println(sb.toString());
			br.close(); conn.disconnect();
			
		}catch(Exception e) {e.printStackTrace();}
		
		
	}//end main
}//end class
/*
 * 1. id/ secret
s1pgEViWeKgNT0Kt_d9G
rNcKxjYMHM

2. 요청 URL  
https://openapi.naver.com/v1/search/book.xml   XML
https://openapi.naver.com/v1/search/book.json  JASON

3. HTTP 메서드  : GET

4. 파라미터  - 요청내용을 주소표시창줄에 데이터 넣어서 줄께-    파라미터를 쿼리 스트링 형식으로 전달합니다.
파라미터  - 캄보디아
query   String   Y   검색어. UTF-8로 인코딩되어야 합니다.

https://openapi.naver.com/v1/search/book.xml?query=사용자가요청한값    (쿼리 스트링 형식)
https://openapi.naver.com/v1/search/book.json?query=사용자가요청한값    (쿼리 스트링 형식)


 */