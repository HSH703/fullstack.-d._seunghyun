package com.thejoa703.external;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ApiScheduledTask {
	/**** 
	@Scheduled(fixedRate = 2000) // 2초마다 /1000이 1초 
	public void runTask1() {
		System.out.println("......스케쥴러 실행중 : " + System.currentTimeMillis());
	} //너무 너무거워서 컴퓨터 터질수도 있음...
	*/
	//@Scheduled(fixedDelay = ) 어떤작업이 끝난후에 지정된 시간에 시행
	//2025-12-17 12:38:00
	//2025-12-18 12:38:00
	//2025-12-19 12:38:00 ...
	@Scheduled(cron="0 39 12 * * ?") // 0초 37분 12시 일 월 요일(?: 특정하지 않음.)
	public void runTask2() {
		System.out.println("......스케쥴러 실행중 : " + System.currentTimeMillis());
	}
	
}

/***********
1. 스케쥴링 구동
@SpringBootApplication
@EnableScheduling
public class Boot001Application {  }

2. 스케쥴부품
@Component
public class ApiScheduledTask {
	@Scheduled(fixedRate = 2000) // 2초마다 실행/1000이 1초 

	//@Scheduled(fixedDelay = ) 어떤작업이 끝난후에 지정된 시간에 시행
	@Scheduled(cron="0 0 10 * * ?")  // 0초 37분 12시 일 월 요일
	public void runTask2() {
		System.out.println("......스케쥴러 실행중 : " + System.currentTimeMillis());
	}
	cron="0 0 0 * * ?"    // 0초 0분 0시 일 월 요일(?: 특정하지 않음.) - 매일 자정
	cron="0 0 12 * * ?"   // 0초 0분 0시 일 월 요일(?: 특정하지 않음.) - 매일 정오
	cron="0 30 18 * * ?"  // 매일 오후 6시 30분
	cron="0 0 0 1 * ?"    // 매월 1일 자정
	cron="0 0 0 * * MON"  // 매주 월요일 자정 

	* 제한없는 모든값
	* ? 특정값 없음
	* 자바에서 요일 씉때는 ↓ 이렇게 쓰기.
	SUN 일, MON 월, TUE 화 , WED 수 , THU 목 , FRI 금 , SAT 토
	
}


************/


/* > 아이디어싸움...
- 스케쥴링 ( ex.정해진 시간대에 사용자에게 약관을 받는다.)
- naver 개발자 (api보기 기본/ex. 정해진 naver개발자사이트에서 정보가져오기)
- mail
- 크롤링 (크롤링 잘못하면 위법. 3일내에 단답변해주기_언제내리겠습니다. ~~에 참고하겠습니다. etc.)
- map
- chatgpt ★ (무조건 걸기!!/ ex. 키워드 몇개만으로 자동 글쓰기기능 etc.)
- kma(기상청 api)
- coolsms( 모바일인증번호...건당 20원, 30원... )
- kakaopay(api 보기 가능하면/여유가되면...)
....
*/
