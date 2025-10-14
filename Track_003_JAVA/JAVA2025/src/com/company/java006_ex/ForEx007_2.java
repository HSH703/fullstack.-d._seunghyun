package com.company.java006_ex;

import java.util.Scanner;

public class ForEx007_2 {
	public static void main(String[]args) {
		//GIGO
		//변수
		String std="";
		int kor= -1, eng=-1, mat=-1, total =0; 
		double avg;
		String pass, level, jang;
		Scanner scanner = new Scanner(System.in);
		
		//입력
			//학번 입력 > std111
			//국어점수 입력 > 100    ※ 0~100사이만입력받기
			//수학점수 입력 > 100    ※ 0~100사이만입력받기
			//영어점수 입력 > 99     ※ 0~100사이만입력받기

		System.out.println("학번을 입력하세요.>"); std= scanner.next();
		for(;;) {	//1. 무한반복
			if(! (0 <= kor && kor <=100) ) {	// 2-1. 점검 :0~100사이가 아니라면
				System.out.println("국어점수를 입력하세요.>"); kor = scanner.nextInt(); //2-2. 입력받고
				continue;//2-3 아래 건너뛰기 - 2-1.으로 가서 범위맞는지 확인
			}

			if(!(0<= mat && mat <=100) ) {	// 3-1. 점검 :0~100사이가 아니라면
				System.out.println("수학점수를 입력하세요.>"); mat = scanner.nextInt(); //3-2. 입력받고
				continue; //3-3 아래 건너뛰기 - 3-1.으로 가서 범위맞는지 확인
			}
		
			if(!(0<=eng && eng <=100) ) {	// 4-1. 점검 :0~100사이가 아니라면
				System.out.println("영어점수를 입력하세요.>"); eng = scanner.nextInt(); //4-2. 입력받고
				continue; //4-3 아래 건너뛰기 - 4-1.으로 가서 범위맞는지 확인
			}
			
		break;	// 이 위치까지 왔다면 입력잘한것!
		
		}
		

		//처리
		total= kor+ eng+ mat; 
		avg = total/3.0;
		pass = avg < 60? "불합격" : kor<40 || eng<40 || mat<40 ? "불합격" : "합격";
		jang = avg < 95? "" : "장학생"; 
		level = avg >90? "수" : avg >80? "우" :avg >70? "미" :avg >60? "양" : "가";
					 
		//출력
		System.out.println("=======================================");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n",
					"학번", "국어", "영어", "수학", "총점", "평균", "합격여부", "레벨", "장학생");
		System.out.println("=======================================");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t",
					std, kor, eng, mat, total, avg, pass, level, jang);

		
	}
 }
	
	


/*클래스명 :  ForEx007
출력내용 :  성적처리 프로그램입니다.

1. 총점 구하기
2. 평균 구하기
3. 평균이 60점이상이고  각과목이 40점 미만이면 아니라면 합격/ 아니면 불합격
4. 평균이 95점이상이면 장학생
5. 평균이  90점이상이면 수, 80점이상이면 우, 70점이상이면 미, 60점이상이면 양, 아니라면 가 

학번 입력 > std111
국어점수 입력 > 100    ※ 0~100사이만입력받기
수학점수 입력 > 100    ※ 0~100사이만입력받기
영어점수 입력 > 99     ※ 0~100사이만입력받기

============================================================== 
학번   국어   영어   수학   총점   평균   합격여부   레벨   장학생
============================================================== 
std111   100   100   99   299   99.67   합격   수   장학생
*/