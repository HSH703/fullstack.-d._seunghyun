package com.company.java005_ex;

public class RepeatEx009 {
	public static void main(String[]args) {
		//1-1. 제일 작은 단위로 나눠보기.
		//1-2. 구조
		//1-3. 코드작성
		//if(1%3==0){hap+=1;} 
		//if(2%3==0) {hap+=2;}
		//if(3%3==0) {hap+=3;}	-- 샘플 작성후 for문으로 입력
		//	(반복) {변수}
		//변수
		int hap=0;
		
		//입력+처리
		//if(1%3==0){hap+=1;} 
		//if(2%3==0) {hap+=2;}
		//if(3%3==0) {hap+=3;}
		/////////////////// for
		for(int i=1; i<=10; i++){if(i%3==0){hap+=i;}}

		//출력- 1~10까지 3의 배수의 합 : 18
		System.out.println("1~10까지 3의 배수의 합 :" + hap);
	
		/////////////////// while
		//입력 + 처리
		hap=0;
		int i = 1;
		while (i <= 10) {
			if (i % 3 == 0) { hap += i;}
			i++;
		}		
		//출력
		System.out.println("1~10까지 3의 배수의 합 :" + hap);
		////////////////// do while
		//입력 + 처리
		hap = 0;
		i = 1;
		do {
			if (i % 3 == 0) {hap += i;}
			i++;
		} while (i <= 10);
		//출력
		System.out.println("1~10까지 3의 배수의 합 :" + hap);

	}
}

/*연습문제9)  for/while/do while
패키지명 : com.company.java005_ex
클래스명 :  RepeatEx009
for , while , do while 3가지 버젼으로 
1~10까지 3의 배수의 합 : 18

힌트)
ver-1)
1이  3의 배수라면  합을더해주변수에누적
2가  3의 배수라면  합을더해주변수에누적
3이  3의 배수라면  합을더해주변수에누적

ver-2)
if( 1이  3의 배수라면 ){ 합을더해주변수에누적 }
if( 2가  3의 배수라면 ){ 합을더해주변수에누적 }
if( 3이  3의 배수라면 ){ 합을더해주변수에누적 }

*/