## Track003 - JAVA (20250825 ~ 20250829)
1. java?
- 한 번 작성하면 어디서든 실행된다.
- JDK 설치 -> 작성 -> 컴파일 -> 실행
- JVM 운영체제의 다른차이점을 처리해줘 
  개발자는 프로그램 작성만 집중
- 객체지향언어

2. java setting  (1) 자바다운로드 및 설치
1) java.sun.com    
2) https://www.oracle.com/java/technologies/?er=221886
3) 설치
4) C:\Program Files\Java  폴더찾기
   C:\Program Files\Java\jdk-11

3. java setting  (2) 환경설정
1) 내컴퓨터 - [속성] - 시스템속성 - 환경변수 - 시스템변수
   JAVA_HOME      
   C:\Program Files\Java\jdk-11

   Path           
   %JAVA_HOME%\bin

2) cmd
   java  -version   

4. java setting  (3) ECLIPSE 설치
1) eclipse.org
2) [download] - Eclipse IDE for Java EE Developers

5. java setting  (4) ECLIPSE 셋팅
1) perspective : 개발에 유용한 view들 만 묶어놓은 작업창
   window - perspective - open perspective - [java]
2) utf-8
   window - preferences - 검색 [enc] 
3) 이클립스 단축키
  - 명령어 불러오기  ctrl + space
  - 주석           ctrl + shift + /     (\)
  - import        ctrl + shift + o
  - 정렬           crtl + shift + f
  - 한줄정렬       ctrl + alt + j

6. 처음으로 작성해본 자바
```bash
package com.company.java001;  // 1.부품의 위치

// 주석 , 설명
public class A000 { // 2. 어디에서든지 접근 , 부품객체 , 부품이름(클래스이름)
      public          static          void main(String[] args) { 
// 3. 어디에서든지 접근 , 바로사용가능 메모리 , void main(String[] args) 전원버튼이름 
    	  System.out.println("Hello Java");
    	//4.운영체제부품객체. 출력(cmd) . println("하고싶은말") 출력
      }
} // end class   

// ctrl + f11 ( 실행 )
```

> Q) 패키지명 : com.company.java001_ex
>    클래스명 : A000_ex.java
>    "한 번 작성하면 어디서든 실행된다."  출력
```bash
package com.company.java001_ex;  //경로위치

public class A000_ex {// 아무데서나 접근가능 , 부품객체
	public static void main(String [] args) {
		System.out.println("한 번 작성하면 어디서든 실행된다.");
	}
}
//> Q) 패키지명 : com.company.java001_ex
//>    클래스명 : A000_ex.java
//>    "한 번 작성하면 어디서든 실행된다."  출력
```

# ■ Java
### 7. 출력
System.out.print("Hello");   // 줄바꿈안됨.
System.out.println("Hello");   // 줄바꿈 됨.
System.out.println("Hello\nSally");   // 줄바꿈.
// 포맷형식  %s , %d
System.out.printf("이름 : %s  나이: %d " , "길동"  , 12 );

```bash
package com.company.java001;

public class A002 {
	public static void main(String[] args) {
		System.out.println("A");
		System.out.println("AB");
		System.out.println("ABC"); // 여러줄사용
		
		// 한줄로만드는 방법은?
		System.out.println("A\nAB\nABC");  // 줄바꿈  \n
		
		// 포맷형식  %s , %d
		System.out.printf("이름 : %s  나이: %d " , "길동"  , 12 );
	}
}

```
```bash
Q1
package : com.company.java001_ex
class   : A001_ex
출력내용  : Hello World! 
```

```bash
Q2
package : com.company.java001_ex
class   : A002_ex
문제 : 다음을 한줄로, 포맷형식에 맞게 처리하시오
	// 다음을 한 줄 출력
		System.out.println("X");
		System.out.println("XY");
		System.out.println("XYZ");
	// 포맷형식이용해서 출력	

출력내용  : 
	X
	XY
	XYZ

	도시 : 인천  ,  인구:1000000
```
```java
package com.company.java001_ex;

public class A003_ex {
	public static void main(String[] args) {
		System.out.printf("이름 : %s  나이: %d", "길동", 12);
	}
}
```

```bash
# ■ Java
 package com.company.java002;  //저장위치
public class Print001 {//어디서든지  부품객체  Print001
	
	public static void main(String[]args) {
		//1. System.out.println()
		System.out.println("1. 줄바꿈");
		
		//2. System.out.print()
		System.out.print("2. 줄바꿈안됨.");
		System.out.print("줄바꿈 특수 \\n이용");
		
		//3. System.out.printf() %s "abc"  %d 1  %f 1.23
		System.out.printf("\n3.정수 %d, 실수 %f, 문자열 %s", 1 , 1.2 , "abc");
		
		//4. +의 의미 
		System.out.println(10+3);  //13  
		System.out.println(10+3     +"+" + 1+2); 
		//아래의 결과는?    숫자+숫자 + 문자열
		//					  13 +  "+"  +1(출력) + 2(출력)
    	//					  13     +    12
		System.out.println(10+3 	+"+" + (1+2)); //13+3
		//					   13     +    (1+2)먼저
		
		//Q. System.out.println( 1+2=3 );
		//	 1+2=3  로 출력해주세요!
		System.out.println("1+2=3");  //이부분을
		System.out.println(1+"+"+2+"="+3); 
		System.out.printf("%d+%d=%d" , 1, 2, 1+2);

		
	}
}  // ctrl + f11


#### ■7. 출력 (1)   println, print, printf
 1)  System.out.println("문자열-하고싶은말");  // \n줄바꿈
 2)  System.out.print("문자열-하고싶은말");   //줄바꿈처리안됨
 3)  System.out.printf("내나이%d ,  내이름%s , 좋아하는 숫자  파이 %f" , 10 , "ab" , 1.23 );
     %d 숫자정수 : 10,20,30  ( 소수점 안붙음)
     %s  문자열   :  "abc"
     %f 숫자실수 :  1.23 , 1.5, 3.14
     
   System.out.println("A");   
   System.out.println("AB");   
   System.out.println("ABC");   

   System.out.println("A\nAB\nABC");   
```
   

```bash
#### ■7. 출력 (2)   + 의미 , ()
System.out.println( 1+ 2 );    //3
System.out.println( 1+ 2 + "+" + 3 +4);  // 3 + 34    ?
System.out.println( "" + 1+ 2);  // 12

1)            +    연산(더하기)
2)     숫자 +   숫자        - 더하기연산
3)     숫자 +   문자열 ,   문자열 + 숫자   - 출력
 

연습문제1)  
패키지명 : com.company.java002_ex
클래스명 : PrintEx001
출력내용 : 
     println, print, printf를 이용해서 
   
    좋아하는 색상은 RED입니다.


연습문제2)  
패키지명 : com.company.java002_ex
클래스명 : PrintEx002
출력내용 : 
   다음의 코드를 10+3=13  나오게 도전!
   System.out.println(  10+3=10+3  );   

### 8.  변수
1. 값?
- 토큰 : 특정의미를 가진문자
- 리터럴, 키워드, 식별자, 연산자,구분자

  System.out.println("hello");

2. 값의 보관
- 값의 보관 == 메모리확보
- 변수 : 변하는 수 (오픈박스) ,  한개의 값
- 상수 : 변하지 않는(상) 수  (밀봉박스)
- 변수이름규칙 :   $_소문자7

3. 변수사용법
   자료형  변수명   

   int       a;         -       int  정수 1,2,3             a[ ]
   double b;         - double  실수 1.23              b[ ]
   
   a=10;                                                      a[10]
   a=20;                                                      a[20]

※ 상수    final   int    JAVA_HOME ;   - 수정못해!


기본문제1)  Var001


연습문제1)  
패키지명 : com.company.java002_ex
클래스명 : VarEx001
출력내용 : 
   1-1.  apple라는 변수만들기
   1-2.  1-1.에서 만든 변수에 1000이라는 데이터 대입하시오.  ( 자료형 int )
   1-3.  1-1.에서 만든 변수이용해서 
           사과가격은 1000원입니다 출력
   1-4.  1-1.에서 만든 변수에 2000이라는 데이터 대입하시오.  
   1-5.  1-1.에서 만든 변수이용해서 
           사과가격은 2000원입니다 출력

연습문제2)  
패키지명 : com.company.java002_ex
클래스명 : VarEx002
출력내용 : 
   1-1.  정수형데이터를 담을수 있는 변수 a 만들고   
   1-2.  a에 10대입하시오
   1-3.  정수형데이터를 담을수 있는 변수 b 만들고   
   1-4.  b에 3대입하시오
   1-5.  System.out.println 을 4번사용해서 
     10 + 3 = 13
     10  - 3 = 7
     10  * 3 = 30
     10  / 3 = 3

     package com.company.java002_ex;

public class PrintEX001 {
	public static void main(String[]args) {
		//A1
		//println
		System.out.println("좋아하는 색상은 RED입니다");	
		//print		print+\n ->  println
		System.out.print("좋아하는 색상은 RED입니다\n");
		//printf
		System.out.printf("좋아하는 색상은 %s입니다", "RED"); 

	}
}

package com.company.java002_ex;

public class PrintEx002 {
	public static void main(String[]args) {
		//A2.
		System.out.print("\n10+3=13\n");
		System.out.println(10+"+"+3+"="+13);
		System.out.printf("%d+%d=%d", 10,3 ,13);
	}
}

package com.company.java002_ex;

public class Var {
	public static void main(String[]args) {
		//1. 변수? 자료형 변수명
		int a = 0;	//%d	1 2 3 	a[	]
		System.out.println("1:" + a);
		
		a = 1000000; // A=B  (=대입해주세요)  a[1000000]
		System.out.println("2:" + a); 	//1000000
		
		a = a-90000; //a[1000000-90000] 변하는 수
		System.out.println("3:" + a);
		
		//2. 변수의 범위
		{ int b=20; System.out.println(b); }
		//b=1000;  b cannot be resolved to a variable 
		
		//3. 변수명  $_소문자
		//오픈박스(변수)
		int $1=1;   int _2 = 2;  int a3bc=3; 
		final int HOME=4;
		//int static;  Syntax error on token "static", invalid VariableDeclarator
		//package;
		//int void
		int main; 
		
	}
} 


package com.company.java002_ex;

public class VarEx001 { 
	public static void main(String[]args) {
		//연습문제1)
		int apple = 1000;
		System.out.println("사과가격은 " + apple + "원입니다" );
		
		apple = 2000;
		System.out.printf("사과가격은 %d원입니다" , apple);		
		
	}
}
/*
 연습문제1)  
패키지명 : com.company.java002_ex
클래스명 : VarEx001
출력내용 : 
   1-1.  apple라는 변수만들기
   1-2.  1-1.에서 만든 변수에 1000이라는 데이터 대입하시오.  ( 자료형 int )
   1-3.  1-1.에서 만든 변수이용해서 
           사과가격은 1000원입니다 출력
   1-4.  1-1.에서 만든 변수에 2000이라는 데이터 대입하시오.  
   1-5.  1-1.에서 만든 변수이용해서 
           사과가격은 2000원입니다 출력
*/


package com.company.java002_ex;

public class VarEx002 {
	public static void main(String[]args) {
		int a=10;
		int b=3;
		
		System.out.println(a + "+" + b + "=" + (a+b));
		System.out.println(a + "-" + b + "=" + (a-b));
		System.out.println(a + "*" + b + "=" + (a*b));
		System.out.println(a + "/" + b + "=" + (a/b));
		
		System.out.println();
		System.out.printf("%d+%d=%d\n" , a , b, a+b );
		System.out.printf("%d-%d=%d\n" , a , b, a-b );
		System.out.printf("%d*%d=%d\n" , a , b, a*b );
		System.out.printf("%d/%d=%d\n" , a , b, a/b );
	}
}

/*
연습문제2)  
패키지명 : com.company.java002_ex
클래스명 : VarEx002
출력내용 : 
   1-1.  정수형데이터를 담을수 있는 변수 a 만들고   
   1-2.  a에 10대입하시오
   1-3.  정수형데이터를 담을수 있는 변수 b 만들고   
   1-4.  b에 3대입하시오
   1-5.  System.out.println 을 4번사용해서 
     10 + 3 = 13
     10  - 3 = 7
     10  * 3 = 30
     10  / 3 = 3
*/
```


```bash
# ■ Java
 
#### ■9. 자료형 (1)
1) 자료형의 구분
- 기본형 : 실제값 저장
- 참조향 : 주소값 저장 ( String )

2) 기본자료형
- 논리형 - boolean  true/false 
- 정수형 - byte(1byte) - short(2byte) - int(4byte) ★ - long(8byte) 
                                                       long 1 = 4L;
- 실수형 - float(4byte)      - double(8byte) ★
          float f= 3.14f;     double d = 3.l4;

 ***★ 자바 기본처리단위 *** 
 ***★ 실수는 정수보다 크다(표현가능한 값의 범위와 타입의 복잡성) *** 
   long(8byte)         <         float(4byte)  소수점 포함한 실수표현 
   큰물통(딱 물정량-정수)           고압탱크(압축해서 엄청난 물 담기 - 실수+지수)

package com.company.java002;

import java.util.Scanner;

public class Input001 {
	public static void main(String[]args) {
		// 자료형의 분류 : 기본형(값) / 참조형(주소) 
		// 기본형 : 논리형(boolean), 정수형(byte-short-int-long), 실수형(float-double) 
		
		// OOP? 클래스(부품객체) 조립해 완성해가는 프로그램
		//변수
		int     like    = 0;   //like  [  0  ]  기본형
		Scanner scanner = new Scanner(System.in); //참조 : ctrl + shift + o 
		//1. new 공간빌리기         heap 1000 번지 [    ]
		//2. Scanner(System.in)  Scanner() 사용할수 있게 초기화 - System.in 키보드입력 
		//3. 사용법 : scanner.   변수명.
		//입력
		System.out.println("정수(1,2,3)를 입력하세요>");
		like = scanner.nextInt();  //입력받기를 커서가 깜박
		//처리 X 
		//출력
		System.out.println("입력한 정수는" + like + "입니다."); 
	}
}

package com.company.java002_ex;

import java.util.Scanner;

public class InputEx001 {
	public static void main(String[]args) {
		//변수
		int age = 20; 
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("당신의 나이를 입력하세요>.");
		age = scanner.nextInt();
		//처리
		//출력
		System.out.println("내 나이는" + age + "입니다.");
	
	}
}
/* 1-1.  나이를 입력받을 자료형 선택후  변수명  age로 하시오.  예) 10,20
   1-2.  Scanner이용해서 나이 입력받고 출력하시오.
  
    당신의 나이를 입력하시오 > _입력받기
    내 나이는 ** 입니다.
*/

package com.company.java002_ex;

import java.util.Scanner;

public class InputEx002 {
	public static void main(String[]args) {
		//변수
		int num = 20;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("좋아하는 수를 입력하시오.>");
		num = scanner.nextInt();
		//처리
		//출력
		System.out.println("좋아하는 숫자는" + num + "입니다.");
	
		
	}
}
/*연습문제2)
패키지명 : com.company.java002_ex
클래스명 : InputEx002
출력내용 :  Scanner이용해서 나이 입력받고 출력하시오.
    좋아하는 수(정수)   입력하시오 > _입력받기
    좋아하는 숫자는 ** 입니다.
*/

package com.company.java002_ex;

import java.util.Scanner;

public class InputEx002_번외 {
	public static void main (String[]args) {
		//변수
		int num = 2001;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("태어난 연도를 입력하세요.>");
		num = scanner.nextInt();
		
		//처리
		num = 2025 - num;   //2025 - 2001
		
		//출력
		System.out.println("당신의 나이는" + num + "살 입니다."); 
	}

}
```
## Track003 - JAVA (20250905 ~ 20250905)
---
# ■ Java
#### ■9. 자료형 (1)
1) 자료형의 구분
- 기본형 : 실제값 저장
- 참조형 : 주소값 저장 ( String ) 

2) 기본자료형 
- 논리형 - boolean  true/false
- 정수형 - byte(1byte) -short(2byte) - int(4byte) ★  - long(8byte)  
													   long l = 4L;
- 실수형 - float(4byte)      - double(8byte) ★
		  float f= 3.14f;     double d = 3.14;

***★ 자바 기본처리단위 *** 
***★ 실수는 정수보다 크다(표현가능한 값의 범위와 타입의 복잡성) *** 
ㅁ long(8byte)           <   float(4byte) 소수점 포함한 실수표현
  큰물통(딱물정량-정수)         고압탱크(압축해서 엄청난 물 담기 - 실수+지수)
 


## 📚 day006복습  
Q1. 복습문제 - GITHUB
복습문제1) FORK 와 팀원을 초대했을때의 차이점은?

복습문제2) 팀원들을 EMAIL로 초대해서 작성시 다음부분을 코드 채우시오. 
1-1. 팀원 -  팀장이 만든 상자를 내컴퓨터로 가져오기 - 폴더명은  portfolio

1-2. 팀원 - 브랜치 만들어서 파일한개 올리기

1-3. 팀원 - pr하는방법은?
 

Q2. 복습문제 - WEB 
- 다음 TEST에 해당하는 CSS 코드를 작성하시오.
<div>TEST</div>
✅ <div> 카드
1) 배경색 흰색 →    #fff
2) 너비 250px
3) 페이지 가운데 정렬 →   0 auto 
4) 모서리 둥글게 →   20px
5) 그림자 효과 →  0 4px 12px rgba(0,0,0,0.1)
6) 텍스트 가운데 정렬 →   center
7) 안쪽 여백 20px


Q3. 복습문제 - JAVA
복습문제1) 
1) 자료형의 구분
- 기본형 : [ ① ] 저장
- 참조형 : [ ② ] 저장 ( String ) 

2) 기본자료형 
- 논리형 - [ ③ ]  true/false
- 정수형 - [ ④  ](1byte) -[ ⑤  ](2byte) - [  ⑥ ](4byte) ★  - [ ⑦  ](8byte)  
													   long l = 4L;
- 실수형 - float(4byte)      - double(8byte) ★
		  float f= 3.14f;     double d = 3.14;
 

복습문제2)  다음에 해당하는 프로그리밍을 작성하시오.
패키지명 : com.company.java002_ex
클래스명 : DataTypeEx002
출력내용 :  Scanner이용해서 나이 입력받고 출력하시오.
	좋아하는 수(정수)   입력하시오 > _입력받기
	좋아하는 숫자는 ** 입니다.


## 📚 day006복습  - Answer

Q1. 복습문제 - GITHUB
복습문제1) FORK 와 팀원을 초대했을때의 차이점은?
```
FORK: 원본 저장소를 복사해서 내 계정으로 가져오는 방식. 독립적으로 작업 가능하며, 
원본 저장소에는 직접 수정 권한이 없음.

팀원 초대: 팀장이 저장소에 직접 초대하면, 해당 저장소에 직접 커밋, 브랜치 생성, PR 등을 할 수 있는 권한을 부여받음.
```

복습문제2) 팀원들을 EMAIL로 초대해서 작성시 다음부분을 코드 채우시오. 
1-1. 팀원 -  팀장이 만든 상자를 내컴퓨터로 가져오기 - 폴더명은  portfolio
```
git clone  https://github.com/sally03915/fullstack_20250825  portfolio 
```
1-2. 팀원 - 브랜치 만들어서 파일한개 올리기
```
cd  portfolio 
git checkout -b   dev-소문자이름
dev-소문자이름.md      파일만들기 - teacher폴더안
git add dev-소문자이름.md
git commit -m "first dev-소문자이름"
git push origin  dev-소문자이름
```
1-3. 팀원 - pr하는방법은?
```
1. 팀장 깃허브주소
2. Compard & pull  request 클릭
3. 제목과 메시지 작성 - 작업마무리완료입니다. 제안
```
 

Q2. 복습문제 - WEB 
- 다음 TEST에 해당하는 CSS 코드를 작성하시오.
<div>TEST</div>
✅ <div> 카드
1) 배경색 흰색 →    #fff
2) 너비 250px
3) 페이지 가운데 정렬 →   0 auto 
4) 모서리 둥글게 →   20px
5) 그림자 효과 →  0 4px 12px rgba(0,0,0,0.1)
6) 텍스트 가운데 정렬 →   center
7) 안쪽 여백 20px

<div style="
  background-color: #fff;
  width: 250px;
  margin: 0 auto;
  margin-bottom: 20px;
  border-radius: 20px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  text-align: center;
  padding: 20px;
">
  TEST
</div>


Q3. 복습문제 - JAVA
자료형의 구분
기본형 : [ ① 값 ] 저장
참조형 : [ ② 주소 ] 저장 (예: String)

기본자료형
논리형 - [ ③ boolean ]
정수형
[ ④ byte ] (1byte)
[ ⑤ short ] (2byte)
[ ⑥ int ] (4byte) ★
[ ⑦ long ] (8byte)
```


복습문제2)  다음에 해당하는 프로그리밍을 작성하시오.
패키지명 : com.company.java002_ex
클래스명 : DataTypeEx002
출력내용 :  Scanner이용해서 나이 입력받고 출력하시오.
	좋아하는 수(정수)   입력하시오 > _입력받기
	좋아하는 숫자는 ** 입니다.

```java
package com.company.java002_ex;
import java.util.Scanner;

public class DataTypeEx002 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("나이를 입력하시오 > ");
		int age = scanner.nextInt();
 
		System.out.println("내 나이는 " + age + " 입니다.");
	}
}
```
---
# ■ Java
Q3. 복습문제 - JAVA
복습문제1) 
1) 자료형의 구분
- 기본형 : [ ① 값   ] 저장
- 참조형 : [ ② 주소 ] 저장 ( String ) 

2) 기본자료형 
- 논리형 - [ ③ boolean ]  true/false
- 정수형 - [ ④ byte ](1byte) -[ ⑤ short ](2byte) 
				  - [  ⑥ int ](4byte) ★  - [ ⑦ long ](8byte)  
- 실수형 - float(4byte)  - double (8byte)

복습문제2)  다음에 해당하는 프로그래밍을 작성하시오.
패키지명 : com.company.java002_ex
클래스명 : DataTypeEx002
출력내용 :  Scanner이용해서 숫자 입력받고 출력하시오.
	좋아하는 수(정수)   입력하시오 > _입력받기
	좋아하는 숫자는 ** 입니다.
```java
package  com.company.java002_ex;
import java.util.Scanner;

public class DataTypeEx002{
   public static void main(String[] args){
	  Scanner scanner = new Scanner(System.in); // ctrl + shift + o
	  System.out.println("좋아하는 수(정수)   입력하시오 >");
	  int num = scanner.nextInt();
	  System.out.println("좋아하는 숫자는 "+num+" 입니다.");
   }
}
``` 



#### ■9. 자료형 (1)
1) 자료형의 구분
- 기본형 : 실제값 저장
- 참조형 : 주소값 저장 ( String ) 

2) 기본자료형 
- 논리형 - boolean  true/false
- 정수형 - byte(1byte) -short(2byte) - int(4byte) ★  - long(8byte)  
													   long l = 4L;
- 실수형 - float(4byte)      - double(8byte) ★
		  float f= 3.14f;     double d = 3.14;

***★ 자바 기본처리단위 *** 
***★ 실수는 정수보다 크다(표현가능한 값의 범위와 타입의 복잡성) *** 
ㅁ long(8byte)           <   float(4byte) 소수점 포함한 실수표현
  큰물통(딱물정량-정수)         고압탱크(압축해서 엄청난 물 담기 - 실수+지수)
 

Float 입력받기 연습문제

1.  실수형입력 -  Input002
2.  연습문제 1 - InputEx2001
3.  연습문제 2 - InputEx2002

연습문제1)
패키지명 : com.company.java002_ex
클래스명 : InputEx2001
출력내용 :  Scanner이용해서 파이값을 입력받고 출력하시오. 
	 파이값을 입력하시오 > _입력받기    3.141592    ( 자료형선택 )
	 파이값은 **입니다.
 
연습문제2)
패키지명 : com.company.java002_ex
클래스명 : InputEx2002
출력내용 :  Scanner이용해서  성적처리를 입력받고 출력하시오.
   국어점수를 입력하시오.  _입력받기    100 
   영어점수를 입력하시오.  _입력받기    100 
   수학점수를 입력하시오.  _입력받기    99

   총점 :  299
   평균 :  99



####  ■10. 형변환
 
1.  실수형입력 -  Input002


복습문제1)
<div class="card jack"></div>

내부적용방법으로 다음을 작성하시오.
Q1. .card 너비 : 250px, 여백 : 아래쪽 30px 중앙정렬, 테두리 둥글게 : 20px, 그림자효과, 중앙정렬, 안쪽여백 : 20px,  
Q2. .jack 배경 : 그라디언트 #dbeafe → #f0f9ff 


복습문제2)
패키지명 : com.company.java002_ex
클래스명 : InputEx2002
주어진조건 : 
   //변수
   int kor, eng, mat, total;
   double avg;
   Scanner scanner = new Scanner(System.in);

출력내용 :  Scanner이용해서  성적처리를 입력받고 출력하시오.
   국어점수를 입력하시오. 100
   영어점수를 입력하시오. 100
   수학점수를 입력하시오. 99
   총점 : 299
   평균 : 99.66666666666667


■ 복습문제 -답안
복습문제1)
<div class="card jack"></div>

내부적용방법으로 다음을 작성하시오.
Q1. .card 너비 : 250px, 여백 : 아래쪽 30px 중앙정렬, 테두리 둥글게 : 20px, 그림자효과, 중앙정렬, 안쪽여백 : 20px 
Q2. .jack 배경 : 그라디언트 #dbeafe → #f0f9ff 
```
<style>

.card {  width:250px; margin:30px  auto; border-radius:20px;
	   box-shadow: 0 0 10px rgba(0,0,0, 0.1);  text-align: center;  padding:20px;  }
.jack{  background-image: linear-gradient(135deg, #dbeafe , #f0f9ff);}
</style>
```






복습문제2)
패키지명 : com.company.java002_ex
클래스명 : InputEx2002
주어진조건 : 
   //변수
   int kor, eng, mat, total;
   double avg;
   Scanner scanner = new Scanner(System.in);

출력내용 :  Scanner이용해서  성적처리를 입력받고 출력하시오.
   국어점수를 입력하시오. 100
   영어점수를 입력하시오. 100
   수학점수를 입력하시오. 99
   총점 : 299
   평균 : 99.66666666666667


```java
package com.company.java002_ex;

import java.util.Scanner;

public class InputEx2002 {
   public static void main(String[] args) {
	  //변수
	  int kor, eng, mat, total;
	  double avg;
	  Scanner scanner = new Scanner(System.in);
	  //입력
	  System.out.print("국어점수를 입력하시오. "); 
	  kor = scanner.nextInt();
	  System.out.print("영어점수를 입력하시오. "); 
	  eng = scanner.nextInt();
	  System.out.print("수학점수를 입력하시오. "); 
	  mat = scanner.nextInt();
	  //처리
	  total = kor + eng + mat;   // A=B
	  avg   = total/3.0;   //정수 = 정수/정수  →  실수 = 정수/실수
	  //출력
	  System.out.println("총점 : " + total);
	  System.out.println("평균 : " + avg); 
   }
}
 
```
---
---
## Java
package com.company.java003;

import java.util.Scanner;

public class Reapeat007 {
	public static void main(String[] args) {
		//변수
		int kor, eng, mat, total;
		double avg;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("국어 점수를 입력하시오.");
		kor = scanner.nextInt();
		System.out.println("영어점수를 입력하시오."); 
		eng = scanner.nextInt();
		System.out.println("수학점수를 입력하시오.");
		mat = scanner.nextInt();

		//처리
		total = kor+ eng+ mat;
		avg= total/3.0;
		//출력
		System.out.println("총합:" + total);
		System.out.println("평균:" + avg);
	}
}
---

---

/*연습문제1)
패키지명 : com.company.java003_ex
클래스명 : CastingEx001
출력내용 :  Scanner이용해서 나누기 프로그램만들기 
   숫자입력1>  _입력받기  10   ( ☆자료형을 int )
   숫자입력2>  _입력받기  3     ( ☆자료형을 int )              
   
   10 / 3 = 3.33

   1단계)  변수 - 입력- 처리 - 출력
   2단계)  정수/정수 = 정수
              정수/실수 = 실수
              실수/정수 = 실수
              실수/실수 = 실수    
      ※  형변환법 :    by = (byte) in;   나 잠깐만 byte할게.... 데이터 누수있을수 있음!
*/
```

---
답안 
package com.company.java003_ex;

import java.util.Scanner;

public class CastingEx001 {
	public static void main(String[]args) {
		//변수
		int num1, num2;
		double result;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("숫자입력>");
		num1 = scanner.nextInt();
		System.out.println("숫자입력>");
		num2 = scanner.nextInt();
	
		//처리
		result = (double)num1/num2; // 실수= 실수/정수 
		
		//출력
		System.out.println(num1 + "/" + num2 + "=" + String.format("%.2f",result) );
		System.out.printf("%d/%d=%.2f" , num1 ,num2 , result );
	}
}
---

```bash
/*연습문제2)
패키지명 : com.company.java003_ex
클래스명 : CastingEx002
출력내용 :  Scanner이용해서  성적처리를 입력받고 출력하시오.
 1.  국어, 영어, 수학, 총점☆자료형을 int 
 2.  레벨 - 평균이 90점대이면 레벨 9, 80점대면 8, 70점대면 7, 60점대면 6,,,,

국어점수 입력 > 100
영어점수 입력 > 100
수학점수 입력 > 99

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: GOOD  IT SCORE ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
국어   영어   수학   총점   평균   레벨
100   100   99   299   99.67   9
*/
```

---
답안
package com.company.java003_ex;

import java.util.Scanner;

public class CastingEx002 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int kor, eng, mat, total, level;
		double avg; 
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("국어점수 입력>");
		kor = scanner.nextInt();
		System.out.println("영어점수 입력>");
		eng = scanner.nextInt();
		System.out.println("수학점수 입력>");
		mat = scanner.nextInt();
		//처리
		total = kor + eng + mat;
		avg = total / 3.0; //정수/실수    99.67    →  9.967		→ 9
		level = (int) (avg/10);	    	//			99.67/10	→ (int)9.967
		//출력
		System.out.println("::::::::::::::::::::::::");
		System.out.println(":::::::GOOD IT SCORE::::");
		System.out.println("::::::::::::::::::::::::");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n" , "국어","영어","수학","총점","평균","레벨");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n" , "100","100","99","299","99.67","9");
	}
}

---

---
package com.company.java003;

public class Casting002_char {
	public static void main(String[]args) {
		//#1. 문자 초기화
		//문자는 저장시 숫자 / 출력시 문자
		char ch1 = ' '; //공백한개라도 있어야 오류가 안남.
		char ch2 = '\u0000'; 
		
		System.out.println("step1 : "  + ch1 + "\t" + ch2);
		System.out.println("step2 : "  + (int)ch1 + "\t" + (int)ch2);	
		
		//#2. 문자의 연산
		char c	= 'A';
		System.out.println("step3 : " + c + "\t" + (int)c);
		System.out.println("step4 : " + (c+1));	//다음의 결과물은?
		//2-1)	'A'+1
		//2-2)	int	=	char(65|2byte)	+	int(1|4byte) (넓은 곳에 넣기.)
		//2-3)	66
		
		System.out.println("step5 : " + (char)(c+1));	

		//Q1) 대문자 'A'를 손문자 'a'로 변환시키기
		System.out.println("hint : " + 'A' + "\t" + (int)'A'); //A 65
		System.out.println("hint : " + 'a' + "\t" + (int)'a'); //A 97
		// 'a' = 'A' 어떻게 처리
		// 97 = 65+32
		char q1 = 'A';
		char a1 = (char) (q1+32);	//int(4byte)	+	char(2byte)	+	int(4byte)
		System.out.println(q1 + "소문자로 변환시키려면 + 32 :"  + a1);
		
		
		//#3. 문자열
		//자료형의 분류는 기본형(값) 과 참조형 (주소)
		String str1 = "abc";
		String str2 = "abc";
		String str3 = new String("abc");
		
		System.out.println( 	System.identityHashCode(str1) 	);
		System.out.println( 	System.identityHashCode(str2) 	);
		System.out.println( 	System.identityHashCode(str3) 	);
		
		System.out.println(str1 == str3);		//주소값비교	-	false
		System.out.println(str1.equals (str3)); //문자값비교 ★
		
	} // end main
} // end class

---

---
package com.company.java003_ex;

import java.util.Scanner;

public class CastingCharEx {
	public static void main(String[]args) {
		//변수
		char upper = ' ';
		char lower = ' ';
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.print("대문자를 입력해주세요.>"); 
		upper = scanner.next().charAt(0); //next() 문자열입력 charAt(0) 첫번재 문자
		
		// 처리 대문자 'A' 65 , '0' 66 / 'a' 97 , 'b' 98,,, 
		// 97 = 65 + 32
		//char= char  + int
		lower = (char) (upper + 32);
		
		//출력
		System.out.println("입력하신 대문자 : " + upper + " , 소문자 변환  : " + lower);
	}
}

/*연습문제1)
클래스명 : CastingCharEx 
- 대문자입력받아서 소문자로 변경프로그램을 작성하시오.
*/
---

---
package com.company.java003_ex;

public class CastingIntegerEx {
	public static void main(String[]args) {
		// 1) 기본형 / 참조형
		// 2) boolean . 참조형(byte < short, char < int) ,  실수형(float < double★)
		
		short sh1 = 1;	//sh1 [ 1 ] 2byte
		short sh2 = 2;	//sh2 [ 2 ] 2byte
		
		//산술연산시(+) 자동으로 int로 변환
		// int 보다 작은타입을 다 적용함 - byte, short, char
		short result1 = (short) (sh1 + sh2);	// 1(int) + 2(int)
		int   result2 = sh1 + sh2;
		
	}
}

/*연습문제2)
클래스명 : CastingIntegerEx
  short sh1 = 1;
  short sh2 = 2;
  short result = sh1 +sh2;
*/
---

---
package com.company.java003;

import java.util.Scanner;

public class Operator001 {
	public static void main(String[]args) {
		// 먼저() 값(+,-,*,/,%,++,--) 비교(>.<) 조건(&& . || , ? :) 대입
		
		//1.값
		int a = 10, b = 3;
		System.out.println(a+b);
		System.out.println(a-b);
		System.out.println(a*b);
		System.out.println(a/b);	//몫 3
		System.out.println(a%b);	//나머지 3
		
		//Q1. 나머지연산자 - 짝수니? 홀수니?
		// 0%2	 1%2 2%2	3%2
		System.out.println(0%2 + "\t" + 1%2 +"\t" +	 2%2 +"\t" + 3%2); //0 1 0 1
		
		//Q2. 3의 배수? 		0			1			  2			  0
		// 3으로 나눴을때 0 / 나머지 0 1 2 
		System.out.println(0%3 + "\t" + 1%3 +"\t" +	 2%3 +"\t" + 3%3); //0 1 0 1
		
		//2. 비교 ( == , !=, < , > , >= , <=  )
		System.out.println( 10	>	3);	//true
		System.out.println( 10 ==	3);	//false
		//Q1. a가 짝수니?
		System.out.println(a%2 == 0);	//true 
		//Q2. b가 3의 배수니?
		System.out.println(b%3 == 0);	//true
		
		
		//3. && (모든조건만족시)  ||	(여러조건중에 하나라도 만족시 true)
		System.out.println(true & true);	// true
		System.out.println(true && true);	// 모든조건만족시 true
		System.out.println(false & true);	// & 처음에 false 뒤에조건까지 읽음
		System.out.println(false && true);	// Dead code
		
		System.out.println(true  |  true);	// true
		System.out.println(true  || true);	// true : Dead code
		System.out.println(false |  true);	// true
		System.out.println(false || true);	//false
		
		//Q1.	a가 2의 배수이면서 5의 배수라면 true / false
		//Q2. 	a가 2의 배수이거나 3의 배수라면 true / false
		System.out.println( a%2 == 0 && a%5 ==0);	//true
		System.out.println( a%2 == 0 || a%3 ==0);	//true
		
		//4. 삼항연산자  (조건)? 참: 거짓
		System.out.println(a==10 ? "10이다." : "10이 아니다.");
		
		//Q3.	숫자를 입력받아 0보다 크면 양수, 0보다 작으면 음수, 아니라면 0
		Scanner scanner = new Scanner(System.in);
		int q3 = scanner.nextInt(); 
		//				조건    ? 참		:		거짓
		String result = q3 > 0 ? "양수"  : (  q3	< 0 ?"음수" : "0"   );
		
	}
}

---


```bash
■ 복습문제
복습문제1) 
1. 자바의 자료형은 (     /     )
2. 자바 기본형의 분류는 - boolean ,  (     )  , (    )
3. 정수형의 종류는(   ,   ,   ,   )    
4. 실수형의 종류는(   ,    )    


복습문제2)  다음코드에 문제가 있다. 이유를 적고 해결하시오.
short sh1 = 1;
short sh2 = 2;
short result = sh1 + sh2;  


복습문제3)  eclipse
패키지명 : com.company.java003_ex
클래스명 : CastingEx001
출력내용 :  Scanner이용해서 나누기 프로그램만들기 
   숫자입력1>  _입력받기  10   ( ☆자료형을 int )
   숫자입력2>  _입력받기  3     ( ☆자료형을 int )              
   
   10 / 3 = 3.33




■ 복습문제 -  answer

복습문제1)
1. 자바의 자료형은기본형(Primitive Type) / 참조형(Reference Type)  
2. 자바 기본형의 분류는 - boolean,정수형,실수형  
3. 정수형의 종류는byte, short, int, long  
4. 실수형의 종류는float, double


복습문제2)
```java
short sh1 = 1;
short sh2 = 2;
short result = sh1 + sh2;
```

###  문제점
자바에서는short + short` 연산 결과가자동으로 int 타입으로 변환됩니다. 
따라서sh1 + sh2`는int` 타입이 되고, 
이를short` 타입 변수에 저장하려고 하면컴파일 오류가 발생합니다.

###   해결 방법
명시적 형 변환(casting)을 사용해야 합니다:

short result = (short)(sh1 + sh2);
 

복습문제3)  eclipse
패키지명 : com.company.java003_ex
클래스명 : CastingEx001
출력내용 :  Scanner이용해서 나누기 프로그램만들기 
   숫자입력1>  _입력받기  10   ( ☆자료형을 int )
   숫자입력2>  _입력받기  3     ( ☆자료형을 int )              
   
   10 / 3 = 3.33

```java
package com.company.java003_ex;

import java.util.Scanner;

public class CastingEx001 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("숫자입력1> ");
        int num1 = scanner.nextInt();

        System.out.print("숫자입력2> ");
        int num2 = scanner.nextInt();

        double result = (double) num1 / num2;

        System.out.printf("%d / %d = %.2f\n", num1, num2, result);
    }
}
```

### 🧾 출력 예시
```
숫자입력1> 10  
숫자입력2> 3  
10 / 3 = 3.33
```
 
```
---
---
# ■JAVA
```bash
package com.company.java003;

import java.util.Scanner;

public class Operator001 {
	public static void main(String[]args) {
		// 먼저() 값(+,-,*,/,%,++,--) 비교(>.<) 조건(&& . || , ? :) 대입
		
		//1.값
		int a = 10, b = 3;
		System.out.println(a+b);
		System.out.println(a-b);
		System.out.println(a*b);
		System.out.println(a/b);	//몫 3
		System.out.println(a%b);	//나머지 3
		
		//Q1. 나머지연산자 - 짝수니? 홀수니?
		// 0%2	 1%2 2%2	3%2
		System.out.println(0%2 + "\t" + 1%2 +"\t" +	 2%2 +"\t" + 3%2); //0 1 0 1
		
		//Q2. 3의 배수? 		0			1			  2			  0
		// 3으로 나눴을때 0 / 나머지 0 1 2 
		System.out.println(0%3 + "\t" + 1%3 +"\t" +	 2%3 +"\t" + 3%3); //0 1 0 1
		
		//2. 비교 ( == , !=, < , > , >= , <=  )
		System.out.println( 10	>	3);	//true
		System.out.println( 10 ==	3);	//false
		//Q1. a가 짝수니?
		System.out.println(a%2 == 0);	//true 
		//Q2. b가 3의 배수니?
		System.out.println(b%3 == 0);	//true
		
		
		//3. && (모든조건만족시)  ||	(여러조건중에 하나라도 만족시 true)
		System.out.println(true & true);	// true
		System.out.println(true && true);	// 모든조건만족시 true
		System.out.println(false & true);	// & 처음에 false 뒤에조건까지 읽음
		System.out.println(false && true);	// Dead code
		
		System.out.println(true  |  true);	// true
		System.out.println(true  || true);	// true : Dead code
		System.out.println(false |  true);	// true
		System.out.println(false || true);	//false
		
		//Q1.	a가 2의 배수이면서 5의 배수라면 true / false
		//Q2. 	a가 2의 배수이거나 3의 배수라면 true / false
		System.out.println( a%2 == 0 && a%5 ==0);	//true
		System.out.println( a%2 == 0 || a%3 ==0);	//true
		
		//4. 삼항연산자  (조건)? 참: 거짓
		System.out.println(a==10 ? "10이다." : "10이 아니다.");
		
		//Q3.	숫자를 입력받아 0보다 크면 양수, 0보다 작으면 음수, 아니라면 0
		Scanner scanner = new Scanner(System.in);
		int q3 = scanner.nextInt(); 
		//				조건    ? 참		:		거짓
		/*
		 String result = q3 > 0 ? "양수"  : (  q3	< 0 ?"음수" : "0"   );
	 	*/
		//5. 대입연산자
		a = 10; b=3;
		System.out.println(	"1:" + (a+=b) );	    //1)  a+b  2)  a=13
		System.out.println( "2:" + (a-=b) );		//1)  a-b  2)  a=10
		
		//6. 단항
		int a1 = 1,  b1=1  ,   c1=1,  d1=1 ;
		
		System.out.println(  ++a1   );		//2   증가출력
		System.out.println(    a1   );		//2   
		
	    System.out.println(  b1++   );		//1   츨력증가
	    System.out.println(    b1   );		//2  	

		System.out.println(  --c1   );		//0   감소출력
		System.out.println(    c1   );      //0
		
		System.out.println(  d1++   );		//1   출력감소
		System.out.println(    d1   );		//0

	}
}

```
---
package com.company.java003_ex;

public class OperatorEx001 {
	public static void main(String[]args) {
		//  먼저          값        비교       조건        대입
		//   ()     ++, +,-,*,/    >,<      && ||      =  +=
		int a=3, b=10;   //a[3] ,  b[10]
		System.out.println(  b+=10 - a-- );   // 17
		//1. a--     맨마지막   a[3] ,  b[10]  
		//2. 10-a     10-3=7 
		//3. b+=7     10+=7    b=10+7   →  17
		//4. ; a--    a[2]
		System.out.println(  a+=5 );	// 7 
		//1. a+=5  →  a=a+5  → a=2+5
		//2. 7
	    System.out.println(  a>=10 || a<0 && a>3);// false
		//1.    7>=10   ||   7<0   &&   7>3 
    	//2.    false   ||  false  &&   true
	    //3.                   false
	    //4.    false   ||   false
	}
}

/*연습문제1)
클래스명 : OperatorEx001
    int a=3, b=10;
    System.out.println(  b+=10 - a-- );   
    System.out.println(  a+=5 );
    System.out.println(  a>=10 || a<0 && a>3);
*/
---
---
package com.company.java003_ex;

public class OperatorEx002 {
	public static void main(String[]args) {
		int x=5;   char  ch='\u0000';
		//q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
		System.out.println( x > 3  &&   x < 10  );
		
		//q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
		ch = 'a'; 
		System.out.println( ch == 'a'  ||   ch == 'A');
		
		//q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식  
		ch  =  '5';
		System.out.println(  ch >=  '0'   &&  ch  <=  '9');
		
        //q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식
		ch = '4'; 
		System.out.println(  ch>= 'A' &&  ch<= 'Z'  ||  ch>= 'a' &&  ch<=  'z');
		
	}
}

/*연습문제2)  다음에 해당하는 클래스의 조건을 출력하시오.
클래스명 : OperatorEx002
q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식     
q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식
*/
---


```bash
package com.company.java004;

public class ClassIf001 {
	public static void main(String[]artgs) {	
		//1. 1형식
		int axe = 1;
		System.out.println("1형식 - 조건을 무조건 읽음");
		// axe 가 1이라면 금도끼, 2라면 은도끼, 3이라면 낡은도끼
		// if(axe가 1이라면){금도끼} , 2라면 (axe 가 2라면) {은도끼} 3이라면 (axe가 3이라면) {낡은도끼}
		if( axe == 1) {System.out.println("금도끼");}
		if( axe == 2){System.out.println("은도끼");}  // 조건을 처리했는지 알수 x
		if( axe == 3){System.out.println("낡은도끼");} // 조건을 처리했는지 알수 x
		
		//2. 2형식  else 뒤에는 조건이 못옴.
		System.out.println("■2형식 - 맞다/틀리다");
		axe=2;
		if( axe==1) {System.out.println("금도끼");}
		else{System.out.println("금도끼가 아니다.");}
		
		//3. 다형식
		System.out.println("■다형식");
		axe=3;
		     if(axe==1)  {System.out.println("금도끼");}
		else if(axe ==2) {System.out.println("은도끼");}
		else if(axe ==3) {System.out.println("낡은도끼");}
		else{    System.out.println("모두 도끼가 아니다.");}
	}
}
```
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx001 {
	public static void main(String[]args) {
		//변수
		int avg ;  String result = "불합격";
		Scanner scanner = new Scanner(System.in); 
		
		//입력 - 평균을 입력받아
		System.out.println("평균을 입력하세요.");
		avg = scanner.nextInt();
		
		//처리 + 출력
		System.out.println(avg >= 60? "합격" : "불합격");

	}
}

/*연습문제1)
패키지명 : com.company.java004_ex
클래스명 :  IfEx001
출력내용 : 평균을 입력받아 60점이상이면 합격,  불합격여부를 출력하는 프로그램을 IF로 작성하시오.
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;


public class IfEx002 {
	public static void main(String[]args) {
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		//입력 - 숫자 한개를 입력받아
		System.out.println("숫자를 입력하세요.");
		num = scanner.nextInt();
		//처리 - 양수라면 양수, 음수라면 음수, 0이라면 zero를 출력하는 프로그램.
		     if (num > 0) {System.out.println("양수");}
		else if (num < 0) {System.out.println("음수");}
		else if (num ==0) {System.out.println("zero");}

		//출력
		     
	}
}

/*연습문제2)
패키지명 : com.company.java004_ex
클래스명 :  IfEx002
출력내용 : 숫자 한개를 입력받아 
   양수라면 양수  , 음수라면 음수  ,0이라면 zero를 출력하는 프로그램을 작성하시오.
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx003 {
	public static void main(String[]args) {
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자 한개 입력>");
		num = scanner.nextInt();
		//처리
		     if(num == 1) {System.out.println("one");}
	    else if(num == 2) {System.out.println("two");}
	    else if(num == 3) {System.out.println("three");}
	    else			  {System.out.println("1,2,3이 아니다.");}
		//출력
	}
}

/*연습문제3)
패키지명 : com.company.java004_ex
클래스명 :  IfEx003
출력내용 : 숫자한개를 입력받아 
   만약 1을 입력했다면   one ,   
   만약 2을 입력했다면   two ,
   만약 3을 입력했다면   three ,
   1,2,3이 아니라면  1,2,3이 아니다를 출력하는 프로그램을 작성하시오.
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx004 {
	public static void main(String[]args) {
		//변수
		char ch='\u0000';
		Scanner scanner = new Scanner(System.in);
		
		//입력 - 문자 한개를 입력받아
		System.out.println("영문소문자 또는 대문자를 입력해주세요.>");
		ch = scanner.next().charAt(0) ; //  "abc"
		
		//처리 + 출력 - 대문자인지,	소문자인지 판별하는 프로그램
		if(ch >= 'A'  && ch<= 'Z' )
		     System.out.println("대문자");
		else if(ch >= 97  && ch <= 122) 
		     System.out.println("소문자");
		else System.out.println("영문 소문자, 대문자 아닙니다.");
	}
}
		
/*연습문제4)
패키지명 : com.company.java004_ex
클래스명 :  IfEx004
출력내용 : 문자한개를 입력받아 
   대문자인지,  소문자인지 판별하는 프로그램을 작성하시오.
   ※  대문자  ch>='A' && ch<='Z' / 소문자  ch>='a'  &&  ch<='z'  
*/
---

---
연습문제1)
클래스명 : OperatorEx001
    int a=3, b=10;
    System.out.println(  b+=10 - a-- );   
    System.out.println(  a+=5 );
    System.out.println(  a>=10 || a<0 && a>3);

연습문제2)  다음에 해당하는 클래스의 조건을 출력하시오.
클래스명 : OperatorEx002
q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식     
q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식



■1. Web  Basic  복습문제
■1. Web  Basic  복습문제
■1. Web  Basic  복습문제
■1. Web  Basic  복습문제

### 1. block vs inline

1) box model  
- 콘텐츠가 자리하는 영역을 의미하며, 박스의 구성 요소는 ______________, ______________, ______________, ______________로 이루어진다.

2) block 요소  
- width/height 설정이 (O/X): __________  
- 앞뒤 줄바꿈이 (O/X): __________  
- 대표 태그: __________, __________, __________

3) inline 요소  
- width/height 설정이 (O/X): __________  
- 앞뒤 줄바꿈이 (O/X): __________  
- 대표 태그: __________, __________, __________


### 2. 배치(1) - float

- 요소를 좌우로 배치할 때 사용하는 속성은 __________이다.  
- 다음 요소의 흐름을 정리하려면 __________ 속성을 사용한다.  
- float를 끊는 대표적인 방법은 클래스명으로 __________를 사용한다.


### 3. 배치(2) - position

- 자식 요소를 부모 기준으로 위치시키려면 부모에 __________, 자식에 __________를 설정한다.  
- 브라우저 전체 기준으로 고정하려면 __________ 속성을 사용한다.  
- position의 주요 값 4가지는 __________, __________, __________, __________이다.


### 4. 배치(3) - display

- 요소의 기본 속성을 바꾸려면 __________ 속성을 사용한다.  
- block 요소를 inline처럼 보이게 하려면 __________,  
  inline 요소를 block처럼 보이게 하려면 __________ 값을 사용한다.


 

■1. Web  Basic  복습문제 - Answer
■1. Web  Basic  복습문제 - Answer
■1. Web  Basic  복습문제 - Answer
■1. Web  Basic  복습문제 - Answer

### 1. block vs inline

1) box model  
- 콘텐츠가 자리하는 영역을 의미하며, 박스의 구성 요소는 __content, padding, border, margin__ 로 이루어진다.

2) block 요소  
- width/height 설정이 (O/X): __O__  
- 앞뒤 줄바꿈이 (O/X): __O__  
- 대표 태그: __div, h3, p__

3) inline 요소  
- width/height 설정이 (O/X): __X__  
- 앞뒤 줄바꿈이 (O/X): __X__  
- 대표 태그: __a, span, strong__
 

### 2. 배치(1) - float

- 요소를 좌우로 배치할 때 사용하는 속성은 __float__ 이다.  
- 다음 요소의 흐름을 정리하려면 __clear__ 속성을 사용한다.  
- float를 끊는 대표적인 방법은 클래스명으로 __clear__ 를 사용한다.

 

### 3. 배치(2) - position

- 자식 요소를 부모 기준으로 위치시키려면 부모에 __relative__, 자식에 __absolute__ 를 설정한다.  
- 브라우저 전체 기준으로 고정하려면 __fixed__ 속성을 사용한다.  
- position의 주요 값 4가지는 __static, relative, absolute, fixed__ 이다.

 

### 4. 배치(3) - display

- 요소의 기본 속성을 바꾸려면 __display__ 속성을 사용한다.  
- block 요소를 inline처럼 보이게 하려면 __inline__,  
  inline 요소를 block처럼 보이게 하려면 __block__ 값을 사용한다. 
---

---
■1. Java  복습문제
■1. Java  복습문제
■1. Java  복습문제

복습문제1) 
1. 자바의 자료형은 (     /   )
2. 자바 기본형의 분류는 - boolean ,  (   )  , (   )
3. 정수형의 종류는(    ,     ,    ★    ,    )    
4. 실수형의 종류는(    ,    ★  )    


복습문제2)   다음에 해당하는 클래스의 조건을 출력하시오.
클래스명 : OperatorEx002
q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식     
q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식 


복습문제3) eclipse
클래스명 :  Repeat010
출력내용 : 숫자한개를 입력받아 
   만약 1을 입력했다면   one ,   
   만약 2을 입력했다면   two ,
   만약 3을 입력했다면   three ,
   1,2,3이 아니라면  1,2,3이 아니다를 출력하는 프로그램을 작성하시오.




■1. Java  복습문제 - Answewr
■1. Java  복습문제 - Answewr
■1. Java  복습문제 - Answewr

## 복습문제1: 자료형

1. 자바의 자료형은 ( 기본형 / 참조형 )  
2. 자바 기본형의 분류는 - boolean , ( 숫자형 ) , ( 문자형 )  
3. 정수형의 종류는 ( byte , short , ★int , long )  
4. 실수형의 종류는 ( float , ★double )

 

## 복습문제2: 조건식 

// q1-1 int형 변수 x가 3보다 크고 10보다 작을 때
if (x > 3 && x < 10)

// q1-2 char형 변수 ch가 'a' 또는 'A'일 때
if (ch == 'a' || ch == 'A')

// q1-3 char형 변수 ch가 숫자('0'~'9')일 때
if (ch >= '0' && ch <= '9')

// q1-4 char형 변수 ch가 영문자(대문자 또는 소문자)일 때
if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))
 
## 복습문제3 : if 
 
```java
import java.util.Scanner;

public class Repeat010 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("숫자 한 개를 입력하세요: ");
        int num = sc.nextInt();

        if (num == 1) {
            System.out.println("one");
        } else if (num == 2) {
            System.out.println("two");
        } else if (num == 3) {
            System.out.println("three");
        } else {
            System.out.println("1,2,3이 아니다");
        }
    }
}
---
---
## ■JAVA
```bash
package com.company.java004_ex;

import java.util.Scanner;

public class Reapeat010 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자 한개를 입력하세요>");
		num = scanner.nextInt();
		//처리
		     if(num==1) {System.out.println("one");}
		else if(num==2) {System.out.println("two");}
		else if(num==3) {System.out.println("three");}
	    else			{System.out.println("1,2,3이 아니다.");}
		//출력
		
	}
}

```

---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx005 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char ch='\u0000' ;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		ch = scanner.next(). charAt(0);
		//처리  
			if(ch >= 'A' && ch <= 'Z') {System.out.println((char)(ch += 32));} 
			//ch = (char) (ch += 32)  
	   else if(ch >= 'a' && ch <= 'z') {System.out.println((char)(ch -=32));}
		//출력
			System.out.println("변경된 문자 >" + ch);
	}
}

/*연습문제5)
패키지명 : com.company.java004_ex
클래스명 :  IfEx005
출력내용 : 문자한개를 입력받아 
   대문자인지 이면 소문자로,  소문자이면 대문자로 변경하는 프로그램을 작성하시오.
   ※  a = 'A' + 32    
   
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx006 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char num; 
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		num = scanner.next() . charAt(0);
		//처리
		     if(num%2==0) {System.out.println("여자");}
		else if(num%2==1) {System.out.println("남자");}
		//출력
		     
	}
}

/*연습문제6)
패키지명 : com.company.java004_ex
클래스명 :  IfEx006
출력내용 : 숫자를입력을받아
   홀수면 남자, 짝수면 여자를 출력하는 프로그램을 작성하시오.
   ※  num%2==0  짝수


*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx007 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1,num2; String result = "";
		char op;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("정수를 하나 입력하세요.>");
		num1 = scanner.nextInt();
		System.out.println("정수를 하나 입력하세요.>");
		num2 = scanner.nextInt();
		System.out.println("문자를 입력하세요.>");
		op = scanner.next() .charAt(0);
		//처리   출력   숫자   연산자  숫자    =
		result = "" + num1 + op + num2 + "=";
			 if(op == '+') {result += (num1+num2);}
		else if(op == '-') {result += (num1-num2);}
		else if(op == '*') {result += (num1*num2);}
		else if(op == '/') {result += String.format("%.2f" , (double) num1/num2);}
		//출력 
		 System.out.println(result);
	}
}
/*연습문제7)   
패키지명 : com.company.java004_ex
클래스명 :  IfEx007
출력내용 :  계산기

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > -
10-3=7 
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class IfEx008 {
	public static void main(String[]args) {
			//GIGO
			//변수
			String std;
			int kor, eng, mat, total;
			double avg;
			String pass = "", lv="", jang="" ;
			Scanner scanner = new Scanner(System.in);
			//입력
			System.out.println("학번 입력.>");
			std = scanner.next();
			System.out.println("국어 점수를 입력하세요.>");
			kor = scanner.nextInt();
			System.out.println("영어 점수를 입력하세요.>");
			eng = scanner.nextInt();
			System.out.println("수학 점수를 입력하세요.>");
			mat = scanner.nextInt();
			//처리
			//1. 총점 구하기
			total = kor + eng + mat;
			//2. 평균 구하기
			avg = total/3.0;
			//3. 평균이 60점이상이고  각과목이 40점 미만이면 아니라면 합격/ 아니면 불합격
			pass = avg < 60? "불합격"
					:  kor >= 40 && eng >= 40 && mat >= 40?  pass = "합격" : "";
			//4. 평균이 95점이상이면 장학생 
			if(avg >= 95) { jang = "장학생";}
			//5. 평균이  90점이상이면 수, 80점이상이면 우, 70점이상이면 미, 60점이상이면 양, 아니라면 가 
			     if(avg >= 90) { lv = "수";}
			else if(avg >= 80) { lv = "우";}
			else if(avg >= 70) { lv = "미";}
			else if(avg >= 60) { lv = "양";}

			//출력
			System.out.println("========================================");
			System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n" 
								,"학번","국어","영어","수학","총점","평균","합격여부","레벨","장학생");
			System.out.println("========================================");
			System.out.printf("%-5s\t%-5d\t%-5d\t%-5d\t%-5d\t%.2f\t%-5s\t%-5s\t%-5s\n" 
								,std, kor, eng, mat, total, avg, pass, lv, jang);

			
		
		
	}
}
/*연습문제8)  
패키지명 : com.company.java004_ex
클래스명 :  IfEx008
출력내용 :  성적처리 프로그램입니다.

1. 총점 구하기
2. 평균 구하기
3. 평균이 60점이상이고  각과목이 40점 미만이면 아니라면 합격/ 아니면 불합격
4. 평균이 95점이상이면 장학생
5. 평균이  90점이상이면 수, 80점이상이면 우, 70점이상이면 미, 60점이상이면 양, 아니라면 가 

학번 입력 > std111
국어점수 입력 > 100
수학점수 입력 > 100
영어점수 입력 > 99
=================================================================================== 
학번   국어   영어   수학   총점   평균   합격여부   레벨   장학생
=================================================================================== 
std111   100   100   99   299   99.67   합격   수   장학생

*/
---

---
■ 복습문제
■1. Java  복습문제
■1. Java  복습문제
■1. Java  복습문제

복습문제1) 
1. 자바의 자료형은 ( 기본형 / 참조형 )
2. 자바 기본형의 분류는 - boolean ,  ( 정수형 )  , ( 실수형 )
3. 정수형의 종류는( byte   , short    ,  int  ★    , long   )    
4. 실수형의 종류는( float   , double   ★  )    

복습문제2)   다음에 해당하는 클래스의 조건을 출력하시오. 
q1-1 int형 변수 x가 3보다 크고 10보다 작을때 true인 조건식 
    if(  x>3  && x<10  )
q1-2 char형 변수 ch가 'a' 또는 'A'일때   true인 조건식    
    if(  ch == 'a' ||  ch == 'A' )
q1-3 char형 변수 ch가 숫자('0'~'9')일때   true인 조건식   
    if(  ch >= '0' && ch <='9'  )  
q1-4 char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식   
    if(  ch >= 'A' && ch <='Z'   ||
         ch >= 'a' && ch <='z'    )  
()   값( ++ , -- , + , - )  비교(>,<, == ) 조건(&& ||)   대입(=)


복습문제3) eclipse
클래스명 :  Repeat010
출력내용 : 숫자한개를 입력받아 
   만약 1을 입력했다면   one ,   
   만약 2을 입력했다면   two ,
   만약 3을 입력했다면   three ,
   1,2,3이 아니라면  1,2,3이 아니다를 출력하는 프로그램을 작성하시오.


연습문제5)
패키지명 : com.company.java004_ex
클래스명 :  IfEx005
출력내용 : 문자한개를 입력받아 
   대문자인지 이면 소문자로,  소문자이면 대문자로 변경하는 프로그램을 작성하시오.
   ※  a = 'A' + 32    
   

연습문제6)
패키지명 : com.company.java004_ex
클래스명 :  IfEx006
출력내용 : 숫자를입력을받아
   홀수면 남자, 짝수면 여자를 출력하는 프로그램을 작성하시오.
   ※  num%2==0  짝수


연습문제7)   
패키지명 : com.company.java004_ex
클래스명 :  IfEx007
출력내용 :  계산기

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > -
10-3=7 


연습문제8)  
패키지명 : com.company.java004_ex
클래스명 :  IfEx008
출력내용 :  성적처리 프로그램입니다.

1. 총점 구하기
2. 평균 구하기
3. 평균이 60점이상이고  각과목이 40점 미만이면 아니라면 합격/ 아니면 불합격
4. 평균이 95점이상이면 장학생
5. 평균이  90점이상이면 수, 80점이상이면 우, 70점이상이면 미, 60점이상이면 양, 아니라면 가 

학번 입력 > std111
국어점수 입력 > 100
수학점수 입력 > 100
영어점수 입력 > 99
=================================================================================== 
학번   국어   영어   수학   총점   평균   합격여부   레벨   장학생
=================================================================================== 
std111   100   100   99   299   99.67   합격   수   장학생
 

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

■ 복습문제 (1)
1. 자바 우선순위를 적으시오.


■ 복습문제 (2)
2. 다음코드에서 오류나는 부분을 찾아 해결하시오.
char ch = 'A';
ch = ch+32;


■ 복습문제 (3)
3. 다음 조건식을 작성하시오.
char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식    

■ 복습문제 (4)  eclipse
클래스명 :  Repeat011
출력내용 :  계산기

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13 


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

■ 복습문제 (1)
1. 자바 우선순위를 적으시오.
()   값( ++ , -- , + , - )  비교(>,<, == ) 조건(&& ||)   대입(=)

■ 복습문제 (2)
2. 다음코드에서 오류나는 부분을 찾아 해결하시오.
char ch = 'A';
ch = ch+32;

> 해결
ch = (char) ch+32;

■ 복습문제 (3)
3. 다음 조건식을 작성하시오.
char형 변수 ch가 영문자(대문자 또는 소문자) 일때   true인 조건식   
if(  ch >= 'A' && ch <='Z'   ||  ch >= 'a' && ch <='z'    )  

■ 복습문제 (4)  eclipse
클래스명 :  Repeat011
출력내용 :  계산기

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13 

```
package com.company.java004_ex;
import java.util.Scanner;

public class IfEx007_1 {
	public static void main(String[] args) {
		//변수
		int num1, num2; String result ="";
		char op;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.print("1. 정수를 하나 입력해주세요 >");
		num1 = scanner.nextInt();
		System.out.print("2. 정수를 하나 입력해주세요 >");
		num2 = scanner.nextInt();
		System.out.print("3. 연산자를 입력해주세요(+,-,*,/) >");
		op = scanner.next().charAt(0);
		//처리    출력  숫자   연산자  숫자    = 
		
		result = "" + num1 + op + num2 + "=";  
 
		if(op == '+') {  result += (num1+num2);  }
		else if(op == '-') {  result += (num1-num2);  }
		else if(op == '*') {  result += (num1*num2);  }
		else if(op == '/') {  result += String.format("%.2f"  , (double)num1/num2);  }
		 
		     
		//출력
		System.out.println(result);
	}
}
```

---
---

---
 ## Track003 - JAVA (20250908 ~ 20250912)
package com.company.java004_ex;

import java.util.Scanner;

public class Repeat011 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1, num2; String result="";
		char op;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("1. 정수를 하나 입력하세요.>");
		num1 = scanner.nextInt();
		System.out.println("2. 정수를 하나 입력하세요.>");
		num2 = scanner.nextInt();
		System.out.println("3. 연산자를 입력하세요.>");
		op = scanner.next().charAt(0);

		//처리
		result="" + num1 + op + num2 + "=";
		
		     if(op=='+') {result+=(num1+num2);}
	    else if(op=='-') {result+=(num1-num2);}
	    else if(op=='*') {result+=(num1*num2);}
	    else if(op=='/') {result+=String.format("%.2f" , (double)num1/num2);}

		//출력
     	System.out.println(result); 
		
	}
}

---
---
package com.company.java004_ex;

import java.util.Scanner;

public class SwitchEx001 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num; 
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("좋아하는 월을 입력하세요.>");
		num = scanner.nextInt();
		//처리 + 출력
		switch (num) {
		case 3: System.out.println("봄이다."); break;
		case 6: System.out.println("여름이다."); break;
		case 9: System.out.println("가을이다."); break;
		case 12: System.out.println("겨울이다."); break;

		}
	}
}
/*연습문제1)  
패키지명 : com.company.java004_ex
클래스명 :  SwitchEx001
출력내용 :  switch 이용
     숫자한개 입력받아
     3이면 봄
     6이면 여름
     9이면 가을
     12이면 겨울

*/
---	
---
package com.company.java004_ex;

import java.util.Scanner;

public class SwitchEx002 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("좋아하는 월을 입력하세요.>");
		num = scanner.nextInt();
		
		//처리 + 출력
		switch (num) {
		case 3:  case 4: case 5:  System.out.println("봄이다"); break;
		case 6:  case 7: case 8:  System.out.println("여름이다"); break;
		case 9:  case 10: case 11:  System.out.println("가을이다"); break;
		case 12:  case 1: case 2:  System.out.println("겨울이다"); break;


		}
	}
}
/*연습문제2)  
패키지명 : com.company.java004_ex
클래스명 :  SwitchEx002
출력내용 :   switch 이용
     숫자한개 입력받아
     3,4,5이면 봄
     6,7,8이면 여름
     9,10,11이면 가을
     12,1,2이면 겨울
*/
---
---
package com.company.java004_ex;

import java.util.Scanner;

public class SwitchEx003 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1, num2;
		char op;
		Scanner scanner = new Scanner(System.in);
		
		//입력
		System.out.println("1. 정수를 입력하세요.>");
		num1= scanner.nextInt();
		System.out.println("2. 정수를 입력하세요.>");
		num2= scanner.nextInt();
		System.out.println("3. 연산자를 입력하세요.>");
		op= scanner.next().charAt(0); 

		//처리+출력
		
		switch (op) { 
		case '+' : System.out.printf("%d %c %d=%d" , num1, op,num2, num1+num2); break;
		case '-' : System.out.printf("%d %c %d=%d" , num1, op, num2, num1-num2); break;
		case '*' : System.out.printf("%d %c %d=%d" , num1, op, num2, num1*num2); break;
		case '/' : System.out.printf("%d %c %d=%.2f" , num1, op, num2, (double)num1/num2); break;

		}
	}
}


 /*연습문제3)  3
패키지명 : com.company.java004_ex
클래스명 :  SwtichEx003
출력내용 :  계산기

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13

1. 정수를 하나 입력해주세요 > 10
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > -
10-3=7 
  */
---
---
package com.company.java005;

public class Repeat001_For {
	public static void main(String[]args) {
		//step1 System.out.println() 3번 사용해서 1 2 3 출력		
		System.out.println("step 1");
		System.out.println(1 + "\t");	// 복사할 구문 → {   }
		System.out.println(2 + "\t");	// ctrl + c, ctrl+ v = 2번 { 구문 }
		System.out.println(3 + "\t");	// 안에 숫자 2,3 → { 구문 변수 }
		//for(시작; 종료; 변화){구문}
		//(for문 안에 if문 사용해도 됨.)

		//step2
		System.out.println("\n\nstep2");	//{변수}  for(시작; 종료; 변화)
		for (int i=1; i<=3; i++){ System.out.println(1 + "\t"); }
		
		//step3
		System.out.println("\n\nstep3");
		// 1 ~ 5
		for (int i=1; i<=5; i++){System.out.print(1 + "\t");}
		System.out.println();
		// 11 ~ 20
		for (int i=11; i<=20; i++){System.out.print(1 + "\t");}
		System.out.println();
		// 3 ~ 8
		for (int i=3; i<=8; i++){System.out.print(1 + "\t");}
		System.out.println();
		// 1 3 5
		for (int i=1; i<=5; i=i+2){System.out.print(1 + "\t");}
		System.out.println();
		// Hello1 Hello2 Hello3
		System.out.println("Hello" + 1 +"\t");
		System.out.println("Hello" + 2 +"\t");
		System.out.println("Hello" + 3 +"\t");
		
		for (int i=1; i<=3; i++){System.out.print("Hello" + i +"\t");  }

		
	} //end main
 }//end class

---
---
package com.company.java005_ex;

public class ForEx001 { 
	public static void main(String[]args) {
		//q1 for문을 이용해서 다음과 같이 출력하시오 :   1 2 3 4 5 
		System.out.println("\n\nq1");
		for (int i=1; i<=5; i++) {		System.out.print(i + "\t"); }
		
		//q2 for문을 이용해서 다음과 같이 출력하시오 :   5 4 3 2 1 
		System.out.println("\n\nq2");
		for (int i=5; i>=1; i--) {		System.out.print(i + "\t"); }
		
		//q3 for문을 이용해서 다음과 같이 출력하시오 :   JAVA1   JAVA2  JAVA3  
		System.out.println("\n\nq3");
		for (int i=1; i<=3; i++) {		System.out.print("JAVA" + i + "\t"); }
		
		//q4 for문을 이용해서 다음과 같이 출력하시오 :   HAPPY3   HAPPY2  HAPPY1  
		System.out.println("\n\nq4");
		for (int i=3; i>=1; i--) {		System.out.print("HAPPY" + i + "\t"); }

		//q5 for문을 이용해서 다음과 같이 출력하시오 :   0,1,2  
		System.out.println("\n\nq5 -1");
		System.out.print(""+ 0 + "\t");
		System.out.print(","+ 1 + "\t");
		System.out.print(","+ 2 + "\t");
		
		System.out.println("\n\nq5 -2");
		for (int i=0; i<=2; i++) {		System.out.print( (i==0? "": ",")  + i ); }

		//q6 for문을 이용해서 다음과 같이 출력하시오 :   0,1,2, ,,,중간생략 ,,, 99  
		System.out.println("\n\nq6");
		for (int i=0; i<=99; i++) {		System.out.print(  (i==0? "": ",")  +  i); }

		//q7 for문을 이용해서 다음과 같이 출력하시오 :   10, 9,,,,중간생략 ,,, , 1 
		System.out.println("\n\nq7");
		for (int i=10; i>=1; i--) {		System.out.print(   (i==0? "": ",")  +  i); }

		//q8 for문을 이용해서 다음과 같이 출력하시오 :   0, 2, 4, 6, 8 
		System.out.println("\n\nq8");
		for (int i=0; i<=8; i=i+2) {		System.out.print( (i==0? "": ",")  +  i); }
		
		//q9 for문을 이용해서 다음과 같이 출력하시오 :   0, 2, 4, 6, 8 ,,,중간생략 ,,, 18 
		System.out.println("\n\nq9");
		for (int i=0; i<=9; i++) {		System.out.print(  i*2 + "\t"); }

	}
}

/*연습문제1)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx001
출력내용 :   for 이용
*/
---
---
package com.company.java005_ex;

import java.util.Scanner;

public class ForEx002 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int dan=0; 
		Scanner scanner = new Scanner(System.in) ;
		//입력
		System.out.println("구구단 중 원하는 단을 입력하세요.>");
		dan = scanner.nextInt();
		
		//처리+출력 (1)
		//2*1=2
		//2*2=4
		//2*3=6
		//System.out.println(2+"*"+ 1 +  "=" + 2*1);
		//System.out.println(2+"*"+ 2 +  "=" + 2*2);
		//System.out.println(2+"*"+ 3 +  "=" + 2*3);

		//처리+출력 (2) 2단 말고 사용자에게 입력받은 단 {반복} {변수} for(시작; 종료; 변화;)
		for(int i=1; i<=9; i=i+1) {	System.out.println(dan +"*"+ i +  "=" + dan*i);}
		
	}
}

/*연습문제2)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx002
출력내용 :   for 이용

   사용자에게 구구단을 입력받아 해당하는 
   구구단을 출력해주는 프로그램을 작성하시오. FOR문을 이용하시오.
*/
---
---
package com.company.java005_ex;

import java.util.Scanner;

public class ForEx003 {
	public static void main(String[]args) {
		//GIGO
		//변수 1~10까지의 합
		int hap=0;	//hap을 담을 변수
		
		//입력 + 처리
		//hap 변수에 1달기
		//hap 변수에 2달기	
		//hap = hap+1;	//hap[1]	0+1
		//hap = hap+2;	//hap[2]	1+2
		//hap = hap+3;	//hap[3]	3+3
		//   {반복} 	{변수} 	for{시작; 종료; 변화;}
		for (int i =1; i<=10; i++){ hap = hap+i;}
		
		//출력
		//"" 1:	+2	+3	+4 +5	+6	+7	+8	+9	+10		=55
		System.out.println("1~10까지의 합을 구하시오.>" + hap);

	}
}

/*연습문제3)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx003
출력내용 :   for 이용
1~10까지의 합을 구하시오.

upgrade)  시간나면 도전!
1+2+3+4+5+6+7+8+9+10=55
*/
---
---
package com.company.java005_ex;

import java.util.Scanner;

public class ForEx003_2 {
	public static void main(String[]args) {
		//GIGO
		//변수 1~10까지의 합
		int hap=0;	//hap을 담을 변수
		
		//입력 + 처리
		//hap 변수에 1달기
		//hap 변수에 2달기	
		//hap = hap+1;	//hap[1]	0+1
		//hap = hap+2;	//hap[2]	1+2
		//hap = hap+3;	//hap[3]	3+3
		//   {반복} 	{변수} 	for{시작; 종료; 변화;}
		for (int i =1; i<=10; i++){ 
			hap = hap+i;
			System.out.println((i==1? "":"+")  +i);
		}
		
		//출력
		//"" 1:	+2	+3	+4 +5	+6	+7	+8	+9	+10		=55
		System.out.println("1~10까지의 합을 구하시오.>" + hap);

	}
}

/*연습문제3)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx003
출력내용 :   for 이용
1~10까지의 합을 구하시오.

upgrade)  시간나면 도전!
1+2+3+4+5+6+7+8+9+10=55
*/
---
---
package com.company.java005_ex;

public class ForEx004 {
	public static void main(String[]args) {
		//변수
		int cnt =0; // 1~10까지의 3의 배수의 갯수 카운트 담을 횟수
		
		//입력+처리(1) 문제파악
		//1이 3의 배수라면 카운트
		//2이 3의 배수라면 카운트
		//3이 3의 배수라면 카운트

		//입력+처리(2) 구조작성
		//if(1이 3의 배수라면) {카운트}
		//if(2이 3의 배수라면) {카운트}
		//if(3이 3의 배수라면) {카운트}

		//입력+처리(3) 코드변환
		//if(1%3 ==0) { cnt++; }
		//if(2%3 ==0) { cnt++; }
		//if(3%3 ==0) { cnt++; }
		for(int i=1; i<=10; i++) {		if(i%3 ==0) { cnt++; } }
		
		//출력
		System.out.println("1~10 까지의 3의배수의 갯수: " + cnt);
		
		
	}
}

/*연습문제4)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx004
출력내용 :   for 이용
1~10까지 3의 배수 갯수를 출력   

upgrade)  시간나면 도전!
3의배수 : 3,6,9    
갯수 : 3개

*/
---
---
package com.company.java005_ex;

public class ForEx004_2 {
	public static void main(String[]args) {
		//변수
		String result="";
		int cnt =0; // 1~10까지의 3의 배수의 갯수 카운트 담을 횟수
		
		//입력+처리(1) 문제파악
		//1이 3의 배수라면 카운트
		//2이 3의 배수라면 카운트
		//3이 3의 배수라면 카운트

		//입력+처리(2) 구조작성
		//if(1이 3의 배수라면) {카운트}
		//if(2이 3의 배수라면) {카운트}
		//if(3이 3의 배수라면) {카운트}

		//입력+처리(3) 코드변환
		//if(1%3 ==0) { cnt++; }
		//if(2%3 ==0) { cnt++; }
		//if(3%3 ==0) { cnt++; }
		for(int i=1; i<=10; i++) {		
			if(i%3 ==0) { cnt++; result += (i==3? "": "," )+ i;} //()3	,	6, 9
		}
		
		//출력
		System.out.println("3의 배수:" + result);
		System.out.println("1~10 까지의 3의배수의 갯수: " + cnt);
		
		
	}
}//3의배수 : 3,6,9    

/*연습문제4)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx004
출력내용 :   for 이용
1~10까지 3의 배수 갯수를 출력   

upgrade)  시간나면 도전!
3의배수 : 3,6,9    
갯수 : 3개

*/
---
---
package com.company.java005_ex;

public class ForEx005 { 
	public static void main(String[]args) {
		//변수	문제파악
		int cnt=0; // a~z까지 모음의 갯수를 카운트
		//입력 + 처리(1)
		//a가 모음이면 (a,e,i,o,u) 카운트
		//b가 모음이면 (a,e,i,o,u) 카운트
		//c가 모음이면 (a,e,i,o,u) 카운트

		//입력 + 처리(2) 구조   || 코드작성 {반복} {변수} 
		//if(a가 모음이라면(a.e.i.o.u)   ){카운트}
		//if(b가 모음이라면(a.e.i.o.u)   ){카운트}
		//if(c가 모음이라면(a.e.i.o.u)   ){카운트}

		//입력 + 처리(3)
		//if('a' == 'a' || 'a' == 'e' || 'a' == 'i' || 'a' == 'o' || 'a' == 'u'){cnt++;}
		//if('b' == 'a' || 'b' == 'e' || 'b' == 'i' || 'b' == 'o' || 'b' == 'u'){cnt++;}
		//if('c' == 'a' || 'c' == 'e' || 'c' == 'i' || 'c' == 'o' || 'c' == 'u'){cnt++;}
	   for(char i='a'; i<='z'; i++)
		{if(i == 'a' || i == 'e' || i == 'i' || i == 'o' || i == 'u'){cnt++;} }

		//출력
		System.out.println("a~z까지 모음의 갯수" + cnt);
		
	}
}

/*연습문제5)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx005
출력내용 :   for 이용
소문자 a~z까지 모음의 갯수를 출력하시오. 
*/
---
---
package com.company.java005_ex;

public class ForEx005_2 { 
	public static void main(String[]args) {
		//변수	문제파악
		int cnt=0; // a~z까지 모음의 갯수를 카운트
		//입력 + 처리(1)
		//a가 모음이면 (a,e,i,o,u) 카운트
		//b가 모음이면 (a,e,i,o,u) 카운트
		//c가 모음이면 (a,e,i,o,u) 카운트

		//입력 + 처리(2) 구조   || 코드작성 {반복} {변수} 
		//if(a가 모음이라면(a.e.i.o.u)   ){카운트}
		//if(b가 모음이라면(a.e.i.o.u)   ){카운트}
		//if(c가 모음이라면(a.e.i.o.u)   ){카운트}

		//입력 + 처리(3)
		//if('a' == 'a' || 'a' == 'e' || 'a' == 'i' || 'a' == 'o' || 'a' == 'u'){cnt++;}
		//if('b' == 'a' || 'b' == 'e' || 'b' == 'i' || 'b' == 'o' || 'b' == 'u'){cnt++;}
		//if('c' == 'a' || 'c' == 'e' || 'c' == 'i' || 'c' == 'o' || 'c' == 'u'){cnt++;}
	   for(char i='a'; i<='z'; i++)
		{ 
		   switch(i) {case 'a' : case 'e' : case 'i' : case 'o' : case 'u' :  cnt++;}
		}
		//출력
		System.out.println("a~z까지 모음의 갯수" + cnt);
		
	}
}

/*연습문제5)  
패키지명 : com.company.java005_ex
클래스명 :  ForEx005
출력내용 :   for 이용
소문자 a~z까지 모음의 갯수를 출력하시오. 
*/
---


## JAVA
```bash

package com.company.java004_ex;

import java.util.Scanner;

public class Repeat012_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int a=0;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		a = scanner.nextInt();
		//처리
		     if(a==1) {System.out.println("one");}
		else if(a==2) {System.out.println("two");}
		else if(a==3) {System.out.println("three");}

		//출력
	}
}

```
---
package com.company.java004_ex;

import java.util.Scanner;

public class Repeat012_2 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int a = 0;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		a = scanner.nextInt();
		//처리 + 출력
		switch(a) {
		case 1:/*a==1*/ {System.out.println("one");} break;
		case 2:/*a==2*/ {System.out.println("two");} break;
		case 3:/*a==1*/ {System.out.println("three");} break;

		}
	}
}

---
---
package com.company.java004_ex;

public class Repeat012_3 {
	public static void main(String[]args) {
		//Q1.
		System.out.println("\n\nq1");
		for(int i=1; i<=5; i++){System.out.print(i + "\t");}
		//Q2
		System.out.println("\n\nq2");
		for(int i=5; i>=1; i--){System.out.print(i + "\t");}

		//Q3
		System.out.println("\n\nq3");
		for(int i=1; i<=3; i++){System.out.print("JAVA" + i + "\t");}

	}
}
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class ForEx006_1 { 
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1 ,num2; double result = 0;
		char op;
		Scanner scanner = new Scanner(System.in);
		
		//입력	101   -1   무한반복 for(;;) {  빠져나올조건 }
		/* for(;;){	//무한반복 1-4
		 
		 if(num1>=0 && num1<=100) {break ;}	//0~100사이면 잘쓴거~! 잘썼으면 나와!
		 
		 }
		 */
		for(;;) {
			System.out.println("1. 정수를 입력하세요.>");
			num1 = scanner.nextInt();
			if(num1 >=0 && num1<=100 ) {break;}
		}
			
		for(;;) {
			System.out.println("2. 정수를 입력하세요.>");
			num1 = scanner.nextInt();
			if(num2 >=0 && num2<=100 ) {break;}
		}
			
		for(;;) {
			System.out.println("3. 연산자를 입력하세요.>");
			num1 = scanner.nextInt();
			if(op=='+' || op=='-' || op=='*' || op=='/' ) {break;}
		}
				
		
		//처리 
		switch(op) {
			case '+' : result = num1+num2; break;
			case '-' : result = num1-num2; break;
			case '*' : result = num1*num2; break;
			case '/' : result = num1/(double)num2; break;
		}
		
		//출력
		System.out.println("" + num1 + op + num2 + "="
				+ (op='/' ? "" + (int) result: String.format("%.2f" ,result)));

		
		
		}
	}



/*연습문제6)  for 무한반복
패키지명 : com.company.java006_ex
클래스명 :  ForEx006
출력내용 :  계산기

1)  각 연산자에 맞게 계산처리
2)  숫자1, 숫자2는 0~100사이만 입력가능하게 아니면 무한반복
3)  연산자는 +, - ,*, /만 입력가능하게 아니면 무한반복
     

1. 정수를 하나 입력해주세요 > 10   
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13
 */
 
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class ForEx006_2 { 
	public static void main(String[]args) {
		//GIGO
		//변수
		int num1=-1 ,num2= -1; double result = 0;
		char op=' ';
		Scanner scanner = new Scanner(System.in);
		
		//입력	101   -1   무한반복 for(;;) {  빠져나올조건 }
		/* for(;;){	//무한반복 1-4
		 
		 if(num1>=0 && num1<=100) {break ;}	//0~100사이면 잘쓴거~! 잘썼으면 나와!
		 
		 }
		 */
		for(;;) {
			if(!(num1 >=0 && num1 <=100 )) {		//1-1 0~100 범위가 아니라면
				System.out.println("1. 정수를 입력하세요.>");  //1-2 입력받기
				num1 = scanner.nextInt();
				continue;	//1-3 아래쪽 진행하지 말것! skip 건너뛰기!
				//잘썼으면 나와 ! 0~100사이면
			}
			
			if (!(num2 >=0 && num2<=100 )) { //0~100 범위가 아니라면 2-1. num2=1
				System.out.println("2. 정수를 입력하세요.>"); // 2-2 입력받기
				num2 = scanner.nextInt();
					continue;// 2-3. 아래쪽 진행하지 말것! skip 건너뛰기!잘썼으면 나와 
			}
			
			if (!(op=='+' || op=='-' || op=='*' || op=='/' )) { //3-1
			System.out.println("3. 연산자를 입력하세요.>"); //3-2. 입력받기
			op = scanner.next().charAt(0);
				continue;//3-3. 아래쪽 진행하지 말것! skip 건너뛰기!잘썼으면 나와
			}
			
			break; // break 만났다면 num1, num2, op를 쓴 경우
		}
				
		//처리 
		switch(op) {
			case '+' : result = num1+num2; break;
			case '-' : result = num1-num2; break;
			case '*' : result = num1*num2; break;
			case '/' : result = num1/(double)num2; break;
		}
		//출력
		System.out.println("" + num1 + op + num2 + "="
				+ (op!='/' ? "" + (int) result: String.format("%.2f" ,result)));

		
		
		}
	}



/*연습문제6)  for 무한반복
패키지명 : com.company.java006_ex
클래스명 :  ForEx006
출력내용 :  계산기

1)  각 연산자에 맞게 계산처리
2)  숫자1, 숫자2는 0~100사이만 입력가능하게 아니면 무한반복
3)  연산자는 +, - ,*, /만 입력가능하게 아니면 무한반복
     

1. 정수를 하나 입력해주세요 > 10   
2. 정수를 하나 입력해주세요 > 3
3. 연산자를 입력해주세요(+,-,*,/) > +
10+3=13
 */
 
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class ForEx007_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		String std="";
		int kor, eng, mat, total; 
		double avg;
		String pass, level, jang;
		Scanner scanner = new Scanner(System.in);
		
		//입력
			//학번 입력 > std111
			//국어점수 입력 > 100    ※ 0~100사이만입력받기
			//수학점수 입력 > 100    ※ 0~100사이만입력받기
			//영어점수 입력 > 99     ※ 0~100사이만입력받기

		System.out.println("학번을 입력하세요.>");
		std= scanner.next();
		for(;;) {
			System.out.println("국어점수를 입력하세요.>");
			kor = scanner.nextInt();
			if( 0<=kor && kor <=100) {break;}
		}

		for(;;) {
			System.out.println("수학점수를 입력하세요.>");
			mat = scanner.nextInt();
			if( 0<=mat && mat <=100) {break;}
		}
		for(;;) {
			System.out.println("영어점수를 입력하세요.>");
			eng = scanner.nextInt();
			if( 0<=eng && eng <=100) {break;}
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
---
---
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
---
---
package com.company.java005_ex;

import java.util.Scanner;

public class Bank_ver1_Step1_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		int num=-1; String id = " ", pass = " "; double balance = 0;
		Scanner scanner = new Scanner(System.in);
		
		for(;;) {
			System.out.print("\n\n=======SH_BANK=========\n*" 
					+ "1.추가\n* 2.조회\n* 3.입금\n* 4.출금\n* 5.삭제\n* 9.종료\n입력>>>");
			num = scanner.nextInt();
			if(num==9) {  System.out.println("ATM기를 종료합니다."); break;  }
			
			switch (num) {
				case 1: {
					System.out.println("추가기능입니다.");
					System.out.println("아이디를 입력하세요."); 
					id = scanner.next();	
					System.out.println("비밀번호를 입력하세요."); 
					pass = scanner.next();	
					System.out.println("잔액을 입력하세요."); 
					balance = scanner.nextDouble();	
				}break;
				
				case 2: {
					System.out.println("조회기능입니다.");
					//변수
					String tempid, tempass;
					//입력	2-1. 사용자에게 임시아이디와 임시비밀번호를 입력받기
					System.out.println("아이디를 입력하세요.>");
					tempid = scanner.next();
					System.out.println("비밀번호를 입력하세요.>");
					tempass = scanner.next();
					//처리 + 입력
					//  	2-2. 아이디와 임시아이디가 같아야하고, 비번과 임시비밀번호가 같다면 사용자정보출력
					if(tempid.equals(id)  && tempass.equals(pass)) 
					     {System.out.println("🛠Welome to SH_BANK");
					      System.out.println("🛠id>" + id);
					      System.out.println("🛠pass>" + pass);
					      System.out.println("🛠balance>" + balance);}
			     		
					//	    2-3. 다르면 정보를 확인해주세요.
				    else {System.out.println("정보를 확인해주세요.>");}
			  }break;
			
				case 3: {System.out.println("입금기능입니다.");
					//변수
					String tempid, tempass, price;
					//입력	사용자에게 임시아이디와 임시비밀번호 입력받기
					System.out.println("아이디를 입력하세요.>");
					tempid = scanner.next();
					System.out.println("비밀번호를 입력하세요.>");
					tempass = scanner.next();
				    //처리	if( 아이디와 임시아이디가 같고 비번과 임시비밀번화가 같다면) {돈 입력받아서, 잔액에 추가}
					 if(tempid.equals(id) && tempass.equals(pass))
					 	{System.out.println("금액을 입력하세요.>");
					 	 price = scanner.next();
					 	 System.out.println("잔액에 추가합니다.>");}
					//출력	else{아니라면 정보를 확인해주세요.}
					else {System.out.println("정보를 확인해주세요.");}
			  }break;
					 
				case 4: {System.out.println("출금기능입니다.");
					//변수
					String tempid, tempass, price;
					//입력	사용자에게 임시아이디와 임시비밀번호 입력받기
					System.out.println("아이디를 입력하세요.>");
					tempid = scanner.next();
					System.out.println("비밀번호를 입력하세요.>");
					tempass = scanner.next();
					//처리	if( 아이디와 임시아이디가 같고 비번과 임시비밀번화가 같다면) {돈 입력받아서, 잔액에서 빼기}
					 if(tempid.equals(id) && tempass.equals(pass))
					 	{System.out.println("금액을 입력하세요.>");
					 	  price = scanner.next();
					 	 System.out.println("잔액에서 빼겠습니다.>");}
					//출력	else{아니라면 정보를 확인해주세요.}
					else {System.out.println("정보를 확인해주세요.");}
				} break;
				
				case 5: {System.out.println("삭제기능입니다.");
					//변수
					String tempid, tempass, delete;
					//입력	사용자에게 임시아이디와 임시비밀번호 입력받기
					System.out.println("아이디를 입력하세요.>");
					tempid = scanner.next();
					System.out.println("비밀번호를 입력하세요.>");
					tempass = scanner.next();
					//처리	if( 아이디와 임시아이디가 같고 비번과 임시비밀번화가 같다면) {삭제하시겠습니까? 묻고 y라면 정보삭제}
					 if(tempid.equals(id) && tempass.equals(pass))
					 	{System.out.println("삭제하시겠습니까?>");
					 	delete=scanner.next();
					 	 System.out.println("정보를 삭제합니다.");}

					//출력	else{아니라면 정보를 확인해주세요.}
						else {System.out.println("정보를 확인해주세요.");}
				} break;
				
				}
		
			//입력	+ 처리	+ 출력	
			
			
		} //end for
	} // end main
} // end class

/*
  하루에 하나씩 힌트나가요~~~! 천천히 정리하면서 익히면서 도전이요~~! 이번주 다음주해서 숙제~!
  
  Step 1. 무한반복으로 만드는 메뉴 만들기
  
  for(;;){//1-1 무한반복 //1-2 빠져나올조건 9 //1-3 입력 받은 번호가 if or switch 1을 입력하면
  추가기능입니다. 출력구문까지만. 2를 입력하면 조회기능입니다. 출력구문까지만. 3을 입력하면 입금기능입니다. 출력구문까지만. 4를 입력하면
  출금기능입니다. 출력구문까지만. 5를 입력하면 삭제기능입니다. 출력구문까지만. 9를 입력하면 종료합니다. 출력구문까지만. }
 */

/*
  Step 2 추가기능 // 아이디 입력 > _입력받기 // 비밀번호 입력 > _입력받기 // 잔액입력 >_입력받기
  
*/

/* Step 3 조회기능 2-1. 사용자에게 임시아이디와 임시비밀번호를 입력받기 
                 2-2. 아이디와 임시아이디가 같아야하고, 비번과임시비밀번호가 같다면 사용자정보출력 
                 2-3. 다르면 정보를 확인해주세요.
 */

---
---
package com.company.java006_ex;

import java.util.Scanner;

public class IfEx001_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char input;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		input = scanner.next().charAt(0);
		//처리
			 if (input=='a') {System.out.println("apple");}
		else if (input=='b') {System.out.println("banana");}
		else if (input=='c') {System.out.println("coconut");}
		else	{System.out.println(   "a,b,c가 아니다."     );}
		//출력
		
	}
}
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class SwitchEx001_1 {
	public static void main(String[]args) {
		//GIGO
		//변수
		char input;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		input = scanner.next().charAt(0);
		//처리 + 출력
		switch(input) {
		case 'a': {System.out.println("apple");} break;
		case 'b': {System.out.println("banana");} break;
		case 'c': {System.out.println("coconut");} break;
		default : {System.out.println("a,b,c가 아니다.");}
		
		}
	}
}
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class ForIfEx001_1 {
	public static void main(String[] args) {
		// GIGO
		// 변수
		int input;
		Scanner scanner = new Scanner(System.in);
		// 입력 + 처리 + 출력
		for (;;) {
			System.out.println("숫자를 입력하세요.>(1이면 종료)");
			input = scanner.nextInt();
			if (input == 1) {
				System.out.println("종료합니다.");
				break; 
			}
		}
	}
}
---
---
package com.company.java006;

public class Repeat003_While_Dowhile {
	public static void main(String[]args) {
		//1. for (반복횟수 일때)
		// 1 2 3
		System.out.println("1. for");
		for (int i=1; i<=3; i++){  System.out.print(i + "\t");  }
		
		//2. while (반복횟수 모를때 - 게시판 조건)
		System.out.println("2. while");
		int i=1;	//2-1 초기문은 위로
		while ( i<=3){ //2-2 조건문만 봄.
			System.out.print(i + "\t");  
			 i++;
		}	//2-3 증감문-} 맨 끝으로
		
		//3. do while (무조건 1번은 실행해야할때)
		System.out.println("3. do while");
		i = 1;	//3-1 초기문은 위로
		do{ //3-2 do 일단 실행.
			System.out.print(i + "\t");  
			 i++;
		}  while ( i<=3);	//3-3 증감문-} 맨 끝으로
	}
}
---
---
package com.company.java005_ex;

public class ForEx008 {
	public static void main(String[]args) {
		//Q1.
		System.out.println("1-1. for");
		for (int i=1; i<=5; i++){System.out.print(i + "\t");}
		System.out.println();
		
		System.out.println("1-2. while");
		int i1=1;
		while (i1<= 5) {
			System.out.print(i1 + "\t");
			i1++;
		}
		System.out.println();

		System.out.println("1-3. do while");
		i1=1;
		do {
			System.out.print(i1 + "\t");
			i1++;
		} while(i1<=5);
		System.out.println();

		//Q2.
		System.out.println("2-1. for");
		for (int i2=5; i2>=1; i2--){System.out.print(i2 + "\t");}
		System.out.println();

		System.out.println("2-2. while");
		int i2=5;
		while (i2 >= 1) {
			System.out.print(i2 + "\t");
			i2--;
		}
		System.out.println();

		System.out.println("2-3. do while");
		i2 = 5;
		do {
			System.out.print(i2 + "\t");
			i2--;
		} while (i2 >= 1);
		System.out.println();
		//Q3.
		System.out.println("3-1. for");
		for (int i3=1; i3<=3; i3++){System.out.print("JAVA" + i3 + "\t");}
		System.out.println();

		System.out.println("3-2. while");
		int i3 = 1;
		while (i3 <= 3) {
			System.out.print("JAVA" + i3 + "\t");
			i3++;
		}
		System.out.println();

		System.out.println("3-3. do while");
		i3 = 1;
		do {
			System.out.print("JAVA" + i3 + "\t");
			i3++;
		} while (i3 <= 3);		

		
	}
}

/*연습문제8)  for, while, do while
패키지명 : com.company.java005_ex
클래스명 :  ForEx008 
1.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  1 2 3 4 5
2.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  5 4 3 2 1
3.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  JAVA1   JAVA2  JAVA3
*/
---
---
package com.company.java005_ex;

public class RepeatEx010 {
	public static void main(String[]args) {
		/*for , while , do while 3가지 버젼으로 
		ABCDE   
		FGHIJ
		KLMNO
		PQRST
		UVWXY
		Z 
		 */
		//ver-1 눈에 보이는 그대로
		//System.out.println();
		//System.out.println("A"); System.out.println("B"); System.out.println("C");System.out.println("D");System.out.println("E");
		//System.out.println();
		//System.out.println("F"); System.out.println("G"); System.out.println("H");System.out.println("I");System.out.println("J");
		//ver-2 구조{ 반복 } { 변수 } for(시작; 종료; 변화)
		//ver-3 특별한 문제풀이 조건
		System.out.println("\nfor-ver");
		for(char i='A'; i<='Z'; i++) {if (i%5==0) {System.out.println();} System.out.print(i);}
		System.out.println("\nwhile-ver");
		char i='A'; while ( i<='Z') {if (i%5==0) {System.out.println();} System.out.print(i); i++;}
		System.out.println("\ndo while-ver");
		i='A'; do{if (i%5==0) {System.out.println();} System.out.print(i); i++;} while ( i<='Z');

	}
}

/*연습문제10)  for/while/do while
패키지명 : com.company.java005_ex
클래스명 :  RepeatEx010
for , while , do while 3가지 버젼으로 
ABCDE   
FGHIJ
KLMNO
PQRST
UVWXY
Z 
*/
---
---
package com.company.java005_ex;

public class RepeatEx010 {
	public static void main(String[]args) {
		/*for , while , do while 3가지 버젼으로 
		ABCDE   
		FGHIJ
		KLMNO
		PQRST
		UVWXY
		Z 
		 */
		//ver-1 눈에 보이는 그대로
		//System.out.println();
		//System.out.println("A"); System.out.println("B"); System.out.println("C");System.out.println("D");System.out.println("E");
		//System.out.println();
		//System.out.println("F"); System.out.println("G"); System.out.println("H");System.out.println("I");System.out.println("J");
		//ver-2 구조{ 반복 } { 변수 } for(시작; 종료; 변화)
		//ver-3 특별한 문제풀이 조건
		System.out.println("\nfor-ver");
		for(char i='A'; i<='Z'; i++) {if (i%5==0) {System.out.println();} System.out.print(i);}
		System.out.println("\nwhile-ver");
		char i='A'; while ( i<='Z') {if (i%5==0) {System.out.println();} System.out.print(i); i++;}
		System.out.println("\ndo while-ver");
		i='A'; do{if (i%5==0) {System.out.println();} System.out.print(i); i++;} while ( i<='Z');

	}
}

/*연습문제10)  for/while/do while
패키지명 : com.company.java005_ex
클래스명 :  RepeatEx010
for , while , do while 3가지 버젼으로 
ABCDE   
FGHIJ
KLMNO
PQRST
UVWXY
Z 
*/
---
---
## JAVA
---
package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_1 {
	public static void main(String[] args) {
		// 변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.print("문자를 입력하세요.>");
		ch = scanner.next().charAt(0);
		// 처리
		if (ch == 'x') {
			System.out.println("x-ray");
		} else if (ch == 'y') {
			System.out.println("yogurt");
		} else if (ch == 'z') {
			System.out.println("zebra");
		} else {
			System.out.println("x,y,z가 아닙니다.");
		}
		// 출력
	}
}
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_2 {
	public static void main(String[] args) {
		// 변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.print("문자를 입력하세요.>");
		ch = scanner.next().charAt(0);
		// 처리
		switch (ch) {
		case 'x': {
			System.out.println("x-ray");
		}
			break;
		case 'y': {
			System.out.println("yogurt");
		}
			break;
		case 'z': {
			System.out.println("zebra");
		}
			break;
		default: {
			System.out.println("x,y,z가 아닙니다.");
		}
		}
		// 출력
	}
}
---
---
package com.company.java006_ex;

import java.util.Scanner;

public class Repeat014_3 {
	public static void main(String[] args) {
		// 변수
		int num;
		Scanner scanner = new Scanner(System.in);
		// 입력 + 처리 + 출력
		for (;;) {
			System.out.print("숫자를 입력하세요.(7을 입력하면 종료)");
			num = scanner.nextInt();
			if (num == 7) {
				System.out.println("종료합니다.");
				break;
			}
			
		}

	}
}
---
---
package com.company.java006_ex;

public class Repaet014_4 {
	public static void main(String[] args) {
		// for
			System.out.println("for문 출력");
		for (int i = 1; i <= 5; i++) {
			System.out.print(i + " ");
		}
		System.out.println();
		// while
		System.out.println("while문 출력");
		int j = 1;
		while (j <= 5)
		{
			System.out.print(j + " ");
			j++;
		}
		System.out.println();
		// do while
		System.out.println("do while문 출력");
		int k = 1;
		do{
			System.out.print(k + " ");
			k++;
		}while (k <= 5);
	}
}
---
---
package com.company.java006;

public class Arr001 {
	public static void main(String[]args) {
		// 1.변수활용시
		int a=1, b=2, c=3;
		
		//2. 배열?
		// [같은 타입]의 데이터를 [연속 공간에 저장] 하는 자료구조
		// 각 데이터의 저장위치 [인덱스]를 통해서 접근
		// 1) int []arr 주소를 보관할준비됐어요~!  2) 공간은 있지만 값이 없어요! 
		int []  arr	= null ;
		System.out.println(arr);
		
		// [stack]	arr2(참조형변수) 주소보관  =	{heap} 1,2,3 연속된 공간에 저장
		int 		[] arr2 	 =  {1,2,3};		
		//      arr2(1000번지) 	 →	1000번지 ~ {1,2,3} 보관
		//									  [0] [1] [2]
		System.out.println(arr2);
		System.out.println("1 꺼내쓰기>" + arr2[0]);
		System.out.println("2 꺼내쓰기>" + arr2[1]);
		System.out.println("3 꺼내쓰기>" + arr2[2]);

		//3. 배열예시	: arr3 1 2 3 4 5
		int [] arr3 = {1,2,3,4,5};	//0~4 System.out.println(arr3[2]);
		
		//3. 배열예시(2)	: arr4 100 200 300
		int [] arr4 = {100, 200, 300}; System.out.println(arr4 [0]);
		
		//3. 배열예시(3)	: arr5 1.1 1.2 1.3
		double[]  arr5 = {1.1, 1.2, 1.3,};	//0~2 System.out.println(arr5[2]);
		
		//3. 배열예시(4)	: arr6 'a', 'b', 'c'
		char [] arr6= {'a', 'b', 'c'};
		System.out.println(arr6[0]);
		System.out.println(arr6[1]);
		System.out.println(arr6[2]);

		//4. 배열.length
		System.out.println( "배열의 갯수>" + arr6.length   );  //배열의 갯수를 출력
		//{반복}	{변수} for(시작;종료;변화)
		for(int i=0; i<=2; i++) {System.out.println(arr6[i]);}
		
		for(int i=0; i<arr6.length; i++)	{System.out.println(arr6[i]);} //0, arr6.length

		
	}//end main
}//end class
---
---
package com.company.java006_ex;

public class ArrayEx001 {
	public static void main(String[]args) {
		//변수
		double[] arr = { 1.1, 1.2, 1.3, 1.4, 1.5 };
		//입력
		//처리
		//출력
		//{System.out.println(arr[0]);}
		//{System.out.println(arr[1]);}
		for(int i=0; i<arr.length; i++) {System.out.print((i==0? "":  ",")  + arr[i]);}

	}
}

/*연습문제1)  array
패키지명 : com.company.java006_ex
클래스명 :  ArrayEx001
    1. 배열명 : arr
    2. 값 넣기 : 1.1  , 1.2  , 1.3  , 1.4  , 1.5
    3. for + length 로 출력
*/
---
---
package com.company.java006_ex;

public class ArrayEx002 {
	public static void main(String[]args) {
		
		char [] arr = {'A', 'B', 'C', 'D'};
		
		for (int i=0; i<arr.length; i++){System.out.print(  (i==0? "":  ",")  +  arr[i]);}

	}

}
/*연습문제2)  array
패키지명 : com.company.java006_ex
클래스명 :  ArrayEx002
    1. 배열명 : arr
    2. 값 넣기 : 'A' , 'B' , 'C' , 'D'
    3. for + length 로 출력
*/
---
---
package com.company.java006_ex;

public class ArrayEx003 {
	public static void main(String[]args) {
		
		String [] arr = {"아이언맨", "헐크", "캡틴"};
		
		for(int i = 0; i< arr.length; i++) {System.out.print((i==0? "":  ",")  + arr[i]);}
	}
}
/*연습문제3)  array
패키지명 : com.company.java006_ex
클래스명 :  ArrayEx003
    1. 배열명 : arr
    2. 값 넣기 : "아이언맨" , "헐크" , "캡틴"
    3. for + length 로 출력
*/
---
---
package com.company.java006_ex;

public class ArrayEx004 {
	public static void main(String[]args) {
		//변수
		int cnt=0;

		//입력
		char [] ch = {'B', 'a', 'n', 'a', 'n', 'a'};
		
		//처리
		//ver-1.만약 'B'가 'a'라면 카운트, 만약 'a'가 'a'라면 카운트
		//ver-2.if (만약'B'가 'a'라면) {카운트}, if (만약'a'가 'a'라면) {카운트}
		//ver-3.if (ch[0] == 'a') {cnt++;}, if (ch[1]=='a') {cnt++;}
		for(int i=0; i<ch.length; i++){if (ch[i] == 'a') {cnt++;}}
		//출력
		System.out.println("ch 배열에서 갯수는>" + cnt);
	}

}
/*연습문제4)  array
패키지명 : com.company.java006_ex
클래스명 :  ArrayEx004
    1. 배열명 : ch
    2. 값 넣기 : 'B' , 'a' , 'n' , 'a', 'n' , 'a'
    3. ch 배열에서 a의 갯수 세기
*/
---
---
package com.company.java006_ex;

public class ArrayEx005 {
	public static void main(String[]args) {
		//변수
		int upper=0, lower=0;
		//입력
		char [] ch = {'B','a','n','a','n','a'};
		//처리
		//ver-1.만약 'B'가 대문자라면 대문자 카운트, 만약 소문자라면 소문자 카운트
		//ver-2.if (만약'B'가 대문자라면) {대문자 카운트}, if (만약 소문자라면) {소문자 카운트}
		//ver-3. if (ch[0] >= 'A' && ch<='Z') {upper++;}, 
		//	else if (ch[1]>='a'&& ch<='z') {lower++;}
		for(int i = 0; i<ch.length; i++)
		{    if(ch[i]>='A' && ch[i]<='Z' ) {upper++;}
		else if (ch[i] >='a' && ch[i]<='z') {lower++;} }
		//출력
		System.out.println("대문자>" + upper + "소문자>" + lower);

	}

}
/*연습문제5)  array
패키지명 : com.company.java006_ex
클래스명 :  ArrayEx005
    1. 배열명 : ch
    2. 값 넣기 : 'B' , 'a' , 'n' , 'a', 'n' , 'a'
    3. ch 배열에서 대문자의 갯수카운트, 소문자의 갯수 카운트
*/
---
---
package com.company.java006;

import java.util.Arrays;

public class Arr002 {
	public static void main(String[]args) {
		//1. new 
		// 주소담을꺼야!	     1000번지 - 같은자료형 연달아서 저장
		// arr(1000번지)	     [0][1][2]
		  int [] arr    =    {1,2,3};
		   
		  int [] arr2   = new int[3]; //new 공간빌리기  int형태의 자료형 맞게
		  System.out.println(arr2); //[1@Saaa6d82]
		  System.out.println(Arrays.toString(arr2)); //[0, 0, 0]
		  
		  //arr2[0] = 10; arr2[1] = 20; arr2[2] = 30;	//for로 줄이기
		  int data= 10;
		  //arr2[0] = data; /*10*/ data +=10; /*data(20)*/
		  //arr2[1] = data; /*20*/ data +=10; /*data(30)*/
		  //arr2[2] = data; /*30*/ data +=10; /*data(40)*/
		  for(int i =0; i<arr2.length; i++) {arr2[i] =data; data+=10;} // 데이터 넣고. 10증가

		  for(int i =0; i<arr2.length; i++) {System.out.print(arr2[i] + "");}

	}
}

---
---
package com.company.java007_ex;

public class ArrayEx006 {
	public static void main(String[]args) {
		//변수
		//int [] arr2   = new int[3];
		double [] arr = new double[5];
		//입력
		// ver-1
		//arr[0] = 1.1;
		//arr[1] = 1.2;


		// ver-2
		 double data=1.1;
		// arr[0] = data; data+=0.1; - 1.1 넣고 0.1증가;
		 for(int i=0; i<arr.length; i++){arr[i] = data; data+=0.1;}
		// arr[1] = data; data+=0.1; - 1.2 넣고 0.1증가;
		//처리
		//출력
		for(int i=0; i<arr.length; i++) {System.out.printf(" %.1f " ,arr[i]);}
	}
}

/*연습문제6)  array
패키지명 : com.company.java007_ex
클래스명 :  ArrayEx006
    new 연산자 이용해서 배열만들기
    1. 배열명 : arr     
    2. 값 넣기 : 1.1  , 1.2  , 1.3  , 1.4  , 1.5    for+length 이용해보기
    3. for + length 로 출력
*/
---
---
package com.company.java007_ex;

public class ArrayEx007 {
	public static void main(String[]args) {
		//변수
		//입력
		// ver-1 
		// arr[0] = 'A';
		// arr[1] = 'B';
		char [] arr = {'A', 'B', 'C', 'D', 'E'};
	    // ver-2
		 char data = 'A';
		// arr[0] = data++;	- 'A'넣고 1증가
		// arr[1] = data++; - 'B'넣고 1증가
		for(int i=0; i<arr.length; i++){arr[i] = data++;}
		//처리
		//출력
		for(int i=0; i<arr.length; i++){System.out.print(arr[i]);}
	}
}

/*연습문제7)  array
패키지명 : com.company.java007_ex
클래스명 :  ArrayEx007
    new 연산자 이용해서 배열만들기
    1. 배열명 : arr     
    2. 값 넣기 : A   B   C   D   E    for+length 이용해보기
    3. for + length 로 출력
*/
---
---
package com.company.java007_ex;

public class Array008 {
	public static void main(String[]args) {
		//변수 + 입력
		String[] name = {"아이언맨", "헐크", "캡틴", "토르", "호크아이"};
		int[] kor = {100, 20,90,70,35};
		int[] eng = {100, 50,90,80,100};
		int[] mat = {100, 30,90,60,100};
		int[] aver = new int[5];
		String[] pass = new String[5];
		String[] jang = new String[5];
		//처리
		/////////처리1.
	   // 1-1. (국어+영어+수학)/3
	   // 1-2.  아이언맨의 평균 =  아이언맨의 국의 + 아이언맨의 영어 + 아이언맨의 수학 
	   // 1-3.  aver[0] = kor[0] + eng[0] + mat[0]
		for(int i=0; i<name.length; i++){
			aver [i] = (kor[i] + eng[i] + mat[i]) /3;
			pass [i] = aver[i] >= 60? "합격": "불합격";
			jang [i] = aver[i] >=95? "----": "장학생";
		}

		//출력
		System.out.println("   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n " ,  "이름", "국어", "영어", "수학", "평균", "합격여부", "장학생");		
		System.out.println("   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");

		for(int i=0; i<name.length; i++)
		{System.out.println(name[i] + "\t" + kor[i] + eng[i] + mat[i] + aver[i] + pass[i] + jang[i]);}
	}
}

/*연습문제8)  array
패키지명 : com.company.java007_ex
클래스명 :  ArrayEx008
배열을 이용하여 다음의 프로그램을 작성하시오.   

    String[] name={"아이언맨","헐크","캡틴","토르","호크아이"};
    int[] kor={100,20,90,70,35};   
    int[] eng={100,50,95,80,100};
    int[] mat={100,30,90,60,100};
    int[] aver=new int[5];

     1. 평균구하시오.
     2. 합격,불합격   -  평균이 60점이상이면 합격, 아니면 불합격으로 처리하시오.
     3. 장학생   - 평균 95점이상이면 장학생으로 처리하시오. 
      
3.출력예시:     
   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
   이름      국어   영어   수학   평균   합격여부   장학생   
   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
   아이언맨   100   100   100   100      합격   장학생   
   헐크      20   50   30   33   불합격   ----   
   캡틴      90   95   90   91   합격   ----   
   토르      70   80   60   70   합격   ----   
   호크아이   35   100   100   78      합격   ----   
   :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

   ※ 힌트1)    
    /////// 처리1 : 평균구하기  
    1-1. (국어+영어+수학)/3
   1-2.  아이언맨의 평균 =  아이언맨의 국의 + 아이언맨의 영어 + 아이언맨의 수학 
   1-3.  aver[0] = kor[0] + eng[0] + mat[0]
   
   1-2.  헐크의 평균 =  아이언맨의 국의 + 아이언맨의 영어 + 아이언맨의 수학 
   1-3.  aver[1] = kor[1] + eng[1] + mat[1]

   /////// 처리2 : 합격,불합격 
   2-1. 평균이 60점이상이면 합격    아니면 불합격
   2-2. 어디다가 합격, 불합격을 담아놓을 것인가? ※ 필요한것 : 합격,불합격을 담을 배열     
   2-3. 아이언맨의 평균이 60점 이상이라면 합격 / 아니면 불합격
   2-4. if(aver[0] >=60){   합격 } else{불합격} 

   /////// 처리3 : 장학생
   3-1. 평균 95점이상 장학생
   3-2. 어디다가 장학생을 담아놓을 것인가? ※ 필요한것 :  장학생 여부를 저장할 배열 
   3-3. 아이언맨의 평균이 95점이상이면 장학생 / 아니라면 ----
   3-4.  if(aver[0] >=95){ 장학생 } else{ ---- } 

*/
---
---
package com.company.java007_ex;

import java.util.Scanner;

public class Repeat015_1 {
	public static void main(String[]args) {
		//변수
		char ch;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("문자를 입력하세요.>");
		ch=scanner.next().charAt(0);
		//처리
		     if(ch=='m') {System.out.println("mango");}
		else if(ch=='n') {System.out.println("noodle");}
		else if(ch=='o') {System.out.println("orange");}
		else {System.out.println("m,n,o가 아닙니다.");}

		//출력
	}
}

---
---
package com.company.java007_ex;

import java.util.Scanner;

public class Repeat015_2 {
	public static void main(String[]args) {
		//변수
		int num;
		Scanner scanner = new Scanner(System.in);
		//입력
		System.out.println("숫자를 입력하세요.>");
		num=scanner.nextInt();
		//처리
		switch (num) {
		case 1: {System.out.println("mango");} break;
		case 2: {System.out.println("noodle");} break;
		case 3: {System.out.println("orange");} break;
		default : {System.out.println("숫자가 아닙니다.");}
		break;
		}
		
		//출력
	}
}

---
---
package com.company.java007_ex;

public class Repeat015_3 { 
	public static void main(String[]args) {
		//for
		System.out.println("for 문으로 출력");
		for (int i=5; i>=1; i--){System.out.print(i + " ");}
		System.out.println();
		//while
		System.out.println("while 문으로 출력");
		int j=5; 
		while(j>=1){
			System.out.print(j + " "); 
			j--;
			}
		
		System.out.println();
		//do while
		System.out.println("do while 문으로 출력");
		int k=5;
		do {
			System.out.print(k + " ");
			k--;
			} while(k>=1);
		
		System.out.println();

		
	}

}

---
---
package com.company.java007_ex;

public class Repeat015_4 {
	public static void main(String[]args) {
		int [] nums = new int[3];
		int data =10;
		
		//값 넣기
		for(int i=0; i<nums.length; i++)
		{nums[i]=data; data+=10;}
		
		//값 출력
		for(int i=0; i<nums.length; i++)
		{System.out.println(nums[i] + "");}
		
		
		
	}

}
---
package com.company.java005_ex_MiniProject_Bank; 
import java.util.Scanner;

public class Bank001_Control {
   public static void main(String[] args) {
      //변수
      int num = -1; String id = "", pass="";  double balance=0;
      Scanner scanner = new Scanner(System.in);
      
      //입력+처리+ 출력
       for(;;){  
          //■기능 1. 메뉴판
          System.out.print("\n\n== BANK ==" + 
             "\n1. 추가" + "\n2. 조회" + "\n3. 입금" + "\n4. 출금" + "\n5. 삭제 > "     
          );  
          num= scanner.nextInt();
          //■기능 2. 
               if(num==9){ System.out.println("종료합니다.");  break;   }
          else if(num==1){ 
             System.out.print("ID   입력 > "); id=scanner.next();
             System.out.print("PASS 입력 > "); pass=scanner.next();
             System.out.print("금액  입력 > "); balance=scanner.nextDouble();    
          }else if(num==2 || num==3|| num==4|| num==5){ 
             //   ■1. 사용자 인증
             System.out.print("ID   입력 > "); String tempId=scanner.next();
             System.out.print("PASS 입력 > "); String tempPass=scanner.next();
             if( !(id.equals(tempId)  && pass.equals(tempPass) )) {
                System.out.println("아이디와 비밀번호를 확인해주세요!");
                continue; // 아래꺼 진행하지마!
             }
            //2. 2,3,4,5 각각에 해당하는 처리
             switch(num){
                case 2 : 
                   System.out.println("\nID >"+id + "\nPASS > "+ pass + "\n잔액 > "+ balance); 
                break;
                case 3 : 
                   System.out.print("입금할 금액 > ");  double input = scanner.nextDouble();
                   balance +=input;  
                   System.out.println("입금을 완료했습니다.");
                break;
                case 4 : 
                   System.out.print("출금할 금액 > ");  double output = scanner.nextDouble();
                   if(output>balance) { System.out.println("잔액이 모자랍니다.");  continue; }
                   balance -=output;  
                   System.out.println("출금을 완료했습니다."); 
                break;
                case 5 : 
                   System.out.println("삭제하시겠습니까?"); String answer = scanner.next();  
                   if(!answer.toLowerCase().equals("y")) {
                      System.out.println("삭제를 취소했습니다."); continue;
                   }
                   id=pass=""; balance=0;
                   System.out.println("삭제를 완료했습니다.");
                break;
             }
         } // end else if
           
      }// end for 
   }// end main
}//end class

/*
 for(;;){ 무한반복
    ■기능 1. 메뉴판
    ■기능 2. 
         if(9){ 빠져나오기   }
    else if(1){ 사용자에게 추가}
    else if(2,3,4,5){ 
       ■1. 사용자 인증
        2. 2,3,4,5 각각에 해당하는 처리
          switch(){
             case 2 : 정보출력 break;
             case 3 : 입금 break;
             case 4 : 출금 break;
             case 5 : 삭제 break;
          }
    } // end else if
 }// end for
 
 */






/*  하루에 하나씩 힌트나가요~~~!
   천천히 정리하면서 익히면서 도전이요~~!  이번주~ 다음해서 숙제~!

Step1. 무한반복으로 만드는 메뉴만들기   
   for(;;){ //1-1 무한반복
      //1-2 빠져나올조건 9
      //1-3 입력받은번호가   if   or  switch
      1을 입력하면 추가기능입니다. 출력구문까지만
      2를 입력하면 조회기능입니다. 출력구문까지만
      3을 입력하면 입금기능입니다. 출력구문까지만
      4를 입력하면 출금기능입니다. 출력구문까지만
      5를 입력하면 삭제기능입니다. 출력구문까지만
      9를 입력하면 종료합니다.    출력구문까지만
   }
   
   ■ 힌트
   for(;;) { 
      System.out.println("숫자1을 입력하세요.");
      int a = scanner.nextInt();
      if(a == 1) { break;}
   }
   
Step 2 추가
               //아이디입력  > _입력받기
               //비밀번호입력 > _입력받기
               //잔액입력    > _입력받기         
Step 3 조회
               System.out.println("2.조회기능입니다."); 
               //변수
               String tempid, temppass;
               //입력  2-1. 사용자에게 임시아이디와 임시비밀번호 입력받기
               System.out.print("아이디입력  >");      tempid=scanner.next();
               System.out.print("비밀번호입력  >");   temppass=scanner.next();
               //처리+출력
               //     2-2. if( 아이디와 임시아이디가 같아야하고 비번과 임시비밀번호가 같다면 ){ 사용자정보출력 }
               //          else {다르면 정보를 확인해주세요.}
*/
---
---
package com.company.java005_ex_MiniProject_Bank;

import java.util.Arrays;
import java.util.Scanner;

public class Bank002_Array {
	public static void main(String[] args) {
		// 변수 0 1 2
		String[] id = new String[3]; // one two three
		String[] pass = new String[3]; // 1111 2222 3333
		double[] balance = new double[3];// 1100 2200 3300
		int num = -1;
		Scanner scanner = new Scanner(System.in);

		// + 입력+ 처리 + 출력
		while (num != 9) { // 9가 아니라면 계속 무한반복
			System.out.println(Arrays.toString(id));
			System.out.println(Arrays.toString(pass));
			System.out.println(Arrays.toString(balance));
			// ■ 기능 1. 메뉴판
			System.out.println("\n\n WELCOME BANK SYSTEM\n" + "\n[1] 계좌추가" + "\n[2] 계좌조회" + "\n[3] 입금하기"
					+ "\n[4] 출금하기" + "\n[5] 계좌삭제" + "\n\n번호를 선택하세요:");
			num=scanner.nextInt();
			     if(num==1) {//1-1. 빈칸인지 확인 후 
			    	 //ver-1 if(0번이 빈칸이라면){find는 0} if(1번이 빈칸이라면){find는 1}
			    	 //ver-2 if(0번이 빈칸이라면){find는 0} if(1번이 null){find는 1}
		    	 	 //ver-3 if(id[0] == null){  find=0; } if( id[1] ==null ){ find-1;}
			    	 //ver-4 찾았으면 나오기 추가 - 백만개의 자료있다고하면 ~! 시간 오래걸림.
			    	 int find=-1;
			    	 for(int i=0; i<id.length; i++) {if(id[1] ==null) {find=1; break;}}
	 			 //1-2/ 유저 계정에 입력받기}
		    	 System.out.print("[1]아이디   입력>");   id[find] = scanner.next();
		    	 System.out.print("[2]비밀번호  입력>");   pass[find] = scanner.next();
		    	 System.out.print("[3]금액    입력>");   balance[find] = scanner.nextDouble();
			     }
			else if(num==2||num==3||num==4||num==5){
						/*  >>> 2-1. 인증정보,*/ 
						//변수 
						int find =-1; String tempId="", tempPass="";
						//1. 사용자에게 아이디 입력받기	 + 2. 사용자에게 비밀번호 입력받기
						System.out.println("[1]아이디   입력> ");  tempId = scanner.next();
						System.out.println("[2]비밀번호   입력> "); tempPass = scanner.next();
						
						//처리
						//3. ver-0 int find =1;   없는 번호   /문자열 비교는 equals 
						//3. ver-1 사용자에게 입력받은아이디와 id[0]번이 같고 사용자에게입력받은 비밀번호와 pass[0]번이면 사용자번호는 0
						//3. ver-1 사용자에게 입력받은아이디와 id[1]번이 같고 사용자에게입력받은 비밀번호와 pass[1]번이면 사용자번호는 1
  						//3. ver-2 if(사용자에게 입력받은아이디와 id[2]번이 같고 사용자에게입력받은 비밀번호와 pass[2]번이면) {사용자번호는 2}
  						if(사용자에게 입력받은아이디와 id[2]번이 같고 사용자에게입력받은 비밀번호와 pass[2]번이면) {사용자번호는 2}
						//출력
						//4. 만약 find==-1이라면 유저정보 못찾음!
						if(find ==1) {System.out.println("아이디와 비밀번호를 입력해주세요!"); continue;}
						
						 /* 2-2. 각각의 처리*/
				}
			     
			else{  System.out.println("메뉴를 확인하세요.");}

		}
		

	}// end main
}// end class

---
---
## Track003 - JAVA (20250915 ~ 20250919)
package com.company.java007_ex;

public class ArrayPractice {
	public static void main(String[]args) {
		char data='a';
		char [] chars = new char[3];
		
		for (int i=0; i<chars.length; i++){chars[i]=data++;}
		
		for (int i=0; i<chars.length; i++){System.out.println(chars[i]);}
		
	}
}
---
---
package corm.comapny.java007;

import java.util.Arrays;

public class Arr2_001 {
	public static void main(String[]args) {
		int [] [] arr = {	{1,2,3}, //00 01 02 
							{4,5,6}	//10 11 12
						}; 
		System.out.println(arr); //[[I@5aaa6d82
		System.out.println( Arrays.toString(arr)); //[[I@73a28541, [I@6f75e721]
		System.out.println( Arrays.deepToString(arr));//[[1, 2, 3], [4, 5, 6]]
		
		//ver-1 눈에 보이는 대로
		System.out.println("ver-1");
		System.out.print(arr[0][0] +'\t');	System.out.print(arr[0][1] +'\t'); 	System.out.print(arr[0][2] +'\t');
		System.out.println();
		System.out.print(arr[1][0] +'\t');	System.out.print(arr[1][1] +'\t'); 	System.out.print(arr[1][2] +'\t');
		System.out.println(); 

		//ver-2 칸정리 {반복} {변수} for(시작ㅣ 종료; 변화) 
		System.out.println("ver-2");
		for (int kan=0; kan<=2; kan++){System.out.print(arr[0][kan] +'\t');}
		System.out.println();
		for (int kan=0; kan<=2; kan++){System.out.print(arr[1][kan] +'\t');}
		System.out.println();

		//ver-3 총정리
		System.out.println("ver-3");
		for(int ch=0; ch<=1; ch++) {
		for (int kan=0; kan<=2; kan++){System.out.print(arr[0][kan] +'\t');}
		System.out.println();
		}
		
		System.out.println("ver-4");
		//배열명(아파트) , length층	/ 배열명[0] [층].length 칸
		for(int ch=0; ch<arr.length; ch++) { //아파트.층수
				//층의 칸수
		for (int kan=0; kan<arr[ch].length; kan++){System.out.print(arr[ch][kan] +'\t');}
		System.out.println();

		}


		
	} //end main
} //end class
---
---
package com.company.java007_ex;

import java.util.Arrays;

public class Array2Ex001 {
	public static void main(String[]args) {
		//변수 + 입력
		int [] [] arr2= { {100,200,300,}, //00 01 02
						  {400,500,600}	  //10 11 12
		};
		
		System.out.println(arr2);
		System.out.println(Arrays.toString(arr2));
		System.out.println(Arrays.deepToString(arr2));
		
		//처리 + 출력
		System.out.println("ver-1");
		System.out.print(arr2 [0][0] + "\t"); System.out.print(arr2 [0][1] + "\t");	System.out.print(arr2 [0][2] + "\t");
		System.out.println();
		System.out.print(arr2 [1][0] + "\t"); System.out.print(arr2 [1][1] + "\t");	System.out.print(arr2 [1][2] + "\t");
		System.out.println();
		
		System.out.println();
		
		System.out.println("ver-2");
		for (int kan=0; kan<=2; kan++){System.out.print(arr2[0] [kan] + "\t");}
		System.out.println();
		for (int kan=0; kan<=2; kan++){System.out.print(arr2[1] [kan] + "\t");}
		System.out.println();
		
		System.out.println("ver-3");
		for(int ch=0; ch<=1; ch++) {		
			for (int kan=0; kan<=2; kan++){System.out.print(arr2[ch] [kan] + "\t");}
			System.out.println();
		}
		
		System.out.println("ver-4 .length");
      	for(int ch=0; ch<arr2.length; ch++) { //아파트의 층	
			for (int kan=0; kan<arr2[ch].length; kan++) //층의 칸수
			{System.out.print(arr2[ch] [kan] + "\t");}
			System.out.println();
		}

		
		
	}

}
/*연습문제1)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex001
배열을 이용하여 다음의 프로그램을 작성하시오.   
  
   int[][] arr2={{100,200,300},{400,500,600}};

   이중for 이용해서 출력하기
*/
---
---
package com.company.java007_ex;

import java.util.Arrays;

public class Array2Ex002 {
	public static void main(String[]args) {
		
		int[][] arr2= {
					  {101,102,103}, //00 01 02
					  {201,202,203}  //10 11 12
					  };
		
		
		System.out.println(arr2);
		System.out.println(Arrays.toString(arr2));
		System.out.println(Arrays.deepToString(arr2));
		
		System.out.println("ver-1");
		System.out.print(arr2[0][0] + "\t"); System.out.print(arr2[0][1] + "\t"); System.out.print(arr2[0][2] + "\t");
		System.out.println();
		System.out.print(arr2[1][0] + "\t"); System.out.print(arr2[1][1] + "\t"); System.out.print(arr2[1][2] + "\t");
		System.out.println();

		System.out.println();
		
		System.out.println("ver-2");
		for(int kan=0; kan<=2; kan++){System.out.print(arr2[0][kan] + "\t");}
		System.out.println();
		for(int kan=0; kan<=2; kan++){System.out.print(arr2[1][kan] + "\t");}
		System.out.println();
		
		System.out.println();
		
		System.out.println("ver-3");
		for(int ch=0; ch<=1; ch++) {	//아파트의 층수   아파트 length
			for(int kan=0; kan<=2; kan++){System.out.print(arr2[ch][kan] + "\t");} //층의 칸수 층의 칸 .length
			
			System.out.println();
				}
		System.out.println();

		System.out.println("ver-4");
		for(int ch=0; ch<arr2.length; ch++) {	
			for(int kan=0; kan<arr2[ch].length; kan++){System.out.print(arr2[ch][kan] + "\t");}
			System.out.println();
				}


		
	}
}

/*연습문제2)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex002
배열을 이용하여 다음의 프로그램을 작성하시오.   
  
   int[][] arr2={{101,102,103},{201,202,203}};

   이중for 이용해서 출력하기
*/
---
---
package corm.comapny.java007;

public class Arr2_002 {
	public static void main(String[] args) {
		int[][] arr = new int[2][3]; // 2층 3칸
										// 00 01 02
										// 10 11 12
										// 20 21 22
		// ver-1 arr[0][0] = 1; arr[0][1] = 2; arr[0][2] = 3;
		// ver-2
		// int data=1;
		// arr[0][0] = data++; arr[0][1] = data++; arr[0][2] = data++;
		// arr[1][0] = data++; arr[1][1] = data++; arr[1][2] = data++;
		// ver-3
		// int data=1;
		// for(int ch=0; ch<arr.length; ch++){arr[0][kan] = data++;} //아파트.층(몇층이니?)
		// for(int kan=0; kan<arr[ch].length; kan++) {arr[1][kan] = data++;}
		// ver-4

		int data = 1;
		for (int ch = 0; ch < arr.length; ch++) {
			for (int kan = 0; kan < arr[ch].length; kan++) {
				arr[ch][kan] = data++;
			}
		}

		for (int ch = 0; ch <= arr.length; ch++) { // 아파트 .층(몇층이니?)
			for (int kan =0; kan<arr[ch].length; kan++) { // 층은 몇칸이니?
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println();
		}

	}// end main
}// end class
---
---
package com.company.java007_ex;

public class Array2Ex003 {
	public static void main(String[]args) {
		//변수 + 대입
		int [][] arr = new int[2] [3]; // 00 01 02
								       // 10 11 12
				
		//System.out.println("ver-1");
		//arr [0][0] = 101; arr[0][1] = 102; arr[0][2] = 103;
		
		//System.out.println("ver-2");
		//int data=1;
		//arr[0][0] = data++; arr[0][1] = data++; arr[0][2] = data++;
		//arr[1][0] = data++; arr[1][1] = data++; arr[1][2] = data++;
		
		//		System.out.println("ver-3");
		//		int data=1;
		//		for(int kan = 0; kan<arr[0].length; kan++) {arr[0][kan] = data++;}
		//		for(int kan = 0; kan<arr[1].length; kan++) {arr[1][kan] = data++;}

		System.out.println("ver-4");
		int data=101;
		for( int ch=0; ch<arr.length; ch++) {
			for( int kan=0; kan<arr[ch].length; kan++) {arr[ch][kan] = data++;}
		}
		
		for(int ch =0; ch<arr.length; ch++ ) {
			for(int kan =0; kan<arr[ch].length; kan++){
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println();
		}
		
		
		
	}
}

/*연습문제3)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex003
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. new 연산자 이용하여 다차원배열만들기
2. for + length 이용해서 대입   
3. for + length 이용해서 출력 
   101       102       103
   104    105    106
*/
---
---
package com.company.java007_ex;

public class Array2Ex004 {
	public static void main(String[]args) {
		//변수
		char arr[] [] =new char[2] [3]; //00 01 02
									    //10 11 12
		
		
		//		System.out.println("ver-1");
		//		arr[0][0] = 'A'; arr[0][1] = 'B'; arr[0][2] = 'C'; 
		
		//		System.out.println("ver-2");
		//		char data='A';
		//		for(int ch=0; ch<arr.length; ch++) {
		//			for(int kan =0; kan<arr[ch].length; kan++) 
		//			{arr[0][kan]= data++;
		//			}
		//		}

		//		System.out.println("ver-3");
		//		char data = 'A'; 
		//		for(int ch=0; ch<arr.length; ch++) {
		//			for(int kan =0; kan<arr[ch].length; kan++)
		//			{arr[ch][kan] = data++;
		//			}
		//
		//		}
		
		//System.out.println("ver-4");
		//입력
		char data ='A';
		for(int ch=0; ch<arr.length; ch++) {
			for(int kan=0; kan<arr[ch].length; kan++) {arr[ch][kan] = data++;}
			data='B'; //한 층이 끝나면 해야할 일
		}
		
		//출력
		for(int ch =0; ch<arr.length; ch++ ) {
			for(int kan=0; kan<arr[ch].length; kan++) {
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println(); //한 층이 끝나면 해야할 일
		}

		
		
	}

}
/*연습문제4)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex004
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. new 연산자 이용하여 다차원배열만들기
2. for + length 이용해서 대입   
3. for + length 이용해서 출력 
   A   B   C
   B   C   D
*/
---
---
package com.company.java007_ex;

public class Array2Ex005 {
	public static void main(String[]args) {
		//변수 + 입력
		int [][] arr = {
				{1,1,1},
				{2,2,2},
				{3,3,3}, 
				{4,4,4}
		};
		
		int total=0; double avg=0;
		
		
		//처리-1 (총점구하기)
		//total += arr[0][0];
		//total += arr[0][1];	데이터 누적
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[j].length; j++) { 
				System.out.print(total+=arr[i][j]);
						}
			System.out.println();
		}
		
		//처리-2 12 = 층*칸 = arr.length * arr[0].length
		 avg = (double)total/(arr.length * arr[0].length);
		 
		//출력
		 System.out.println("총점> " + total);
		 System.out.println("평균> " + avg);
		
		
		
		
	}//end main
}//end class

/*연습문제5)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex005
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. 다음의 주어진조건을 이용하여 총점과 평균을 구하시오.

 int[][] arr = {
   { 1, 1, 1,},
   { 2, 2, 2,},
   { 3, 3, 3,},
   { 4, 4, 4,},
 };
 int total=0;  double avg=0.0;
 출력내용:
총점 : 30
평균 : 2.5
*/
---
---
package com.company.java007_ex;

public class Array2Ex006 {
	public static void main(String[] args) {
		int[][] arr = new int[5][5];
		int data = 1;
		
		for (int ch = 0; ch < arr.length; ch++) {
			for (int kan = 0; kan < arr[ch].length; kan++) {
				arr[ch][kan] = data++;
			}

		}

		for (int ch = 0; ch < arr.length; ch++) {
			for (int kan = 0; kan < arr[ch].length; kan++) {
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println();
		}

	}

}
/*
 * 연습문제6) array 패키지명 : com.company.java007_ex 클래스명 : Array2Ex006 > 2차원배열 1. new
 * 로 만들고 5*5 2. 데이터 넣기 for+length 3. 데이터 출력 for+length
 * 
 * 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
 */
---
---
package com.company.java007_ex;

public class Array2Ex007 {
	public static void main(String[]args) {
		int [][] arr = new int [4][4];
		
		int data=1;
		for(int ch=0; ch<arr.length; ch++) {
			for(int kan=0; kan<arr[ch].length;kan++ ) {arr[ch][kan] = data++;}
			data=1;
		}
		
		
		for(int ch=0; ch<arr.length; ch++) {
			for(int kan=0; kan<arr[ch].length; kan++) {
				System.out.print(arr[ch][kan] + "\t");
				}
		System.out.println();
		}
	}
}
/*연습문제7)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex007
> 2차원배열   4*4
1.  new 로 만들고 
2.  데이터 넣기  for+length
3.  데이터 출력  for+length
1   2   3   4
1   2   3   4
1   2   3   4
1   2   3   4
*/
---
---
package com.company.java007_ex;

public class Array2Ex008 {
	public static void main(String[]args) {
		//변수
		int[][] datas = { {  10, 10, 10 ,10},    //00 01 02 03 04 # → 04+=00 04+=01...
						  {  20, 20, 20 ,20},    //10 11 12 13 14 # → 14+=10 14+=11...
						  {  30, 30, 30 ,30},    //20 21 22 23 24 # → 24+=20 24+=21...
				};  //3줄 4칸				     //30 31 32 33 34 
											     //#↓ 30 += 00 30+=00....
	int[][] result = new int[datas.length+1][datas[0].length+1];
	//입력 result[0][0] = datas[0][0] 
	//	  새로운 result 아파트 = 기준 datas 아파트
	for(int ch=0; ch<datas.length; ch++) {
		for(int kan =0; kan<datas[ch].length; kan++) {//아파트의 칸수
			result[ch] [kan] = datas[ch][kan];
		}
	}

	//처리(1) 가로방향		10 10 10 10 0	//00 01 02 03 04
	//ver-1
	//	result[0][4] += result[0][0];
	//	result[0][4] += result[0][1];
	//	result[0][4] += result[0][2];
	//	result[0][4] += result[0][3];
	
	//	result[1][4] += result[1][0];
	//	result[1][4] += result[1][1];
	//	result[1][4] += result[1][2];
	//	result[1][4] += result[1][3];
	//	
	//	result[2][4] += result[2][0];
	//	result[2][4] += result[2][1];
	//	result[2][4] += result[2][2];
	//	result[3][4] += result[2][3];

	//ver-2
	//for (int kan=0; kan<result[0].length; -1 kan ++ ){result[0][4] += result[0]kan;  }
	//for (int kan=0; kan<result[0].length; -1 kan ++ ){result[0][4] += result[0]kan;  }
	//for (int kan=0; kan<result[0].length; -1 kan ++ ){result[0][4] += result[0]kan;  }

	//ver-3
	for(int ch = 0; ch < result.length; ch++) {
		for(int kan = 0; kan<result[ch].length; kan++) {result [ch][4] += result[ch][kan];}
	}
	
	//처리 (2) 세로방향
	//ver-1
	//result [3][0] += result[0][0];result [3][0] += result[1][0]; result [3][0] += result[2][0];
	//result [3][1] += result[0][1];result [3][1] += result[1][1]; result [3][1] += result[2][1];
	//result [3][2] += result[0][2];result [3][2] += result[1][2]; result [3][2] += result[2][2];
	//result [3][2] += result[0][3];result [3][3] += result[1][3]; result [3][3] += result[2][3];
	//ver-2
	//for(int ch=0; ch<result.length-1; ch++) { result[3][0] += result[ch][0];   }
	//for(int ch=0; ch<result.length-1; ch++) { result[3][1] += result[ch][0];   }
	//for(int ch=0; ch<result.length-1; ch++) { result[3][2] += result[ch][0];   }
	//for(int ch=0; ch<result.length-1; ch++) { result[3][3] += result[ch][0];   }
	//ver-3
	//for(int kan=0; kan<result[0].length; kan++) {
	//	for(int ch=0; ch<result.length; ch++ ) {  result[3][kan] += result[ch][0];}}
	//ver-4
	/*for(int ch=0; ch<result.length; ch++) {
		for(int kan=0; kan<result[ch].length; kan++) {
			result[3][kan] += result[ch][0]
		}
	}
	//처리 (3) 전체데이터
	for (int ch =0; ch<result.length - 1; ch++) {
		for(int kan=0; kan<result[ch].length - 1; kan++) {
			result[3][4] += result[ch][kan];
		}
	}*/
	
	for (int ch =0; ch<result.length - 1; ch++) {
		for(int kan=0; kan<result[ch].length - 1; kan++) {
			result[ch][4] += result[ch][kan];	//4칸
			result[3][kan] += result[ch][0];	//3층
			result[3][4] += result[ch][kan];	//3층 4칸

		}
	}

	//출력
	for(int ch=0; ch<result.length; ch++) {// 아파트의 층
		for(int kan=0; kan<result[ch].length; kan++ ) {//아파트의 칸수
			System.out.print(result [ch][kan] + "\t");
		}
		System.out.println();
	}
	
	
	
	}
}

/*연습문제8)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex008
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. 다음의 주어진조건을 이용하여 총점과 평균을 구하시오.

int[][] datas = {  {  10, 10, 10 ,10}, 
            {  20, 20, 20 ,20}, 
            {  30, 30, 30 ,30},  
};  // 3층 4칸 
int[][] result = new int[datas.length+1][datas[0].length+1];

#1. result 에 datas데이터 복사하기
#2. 가로방향누적데이터
#3. 세로방향데이터누적
#4. 총합

출력내용:
10   10   10   10   40   
20   20   20   20   80   
30   30   30   30   120   
60   60   60   60   240   
*/
---
---
package com.company.java007_ex;

public class Repeat017_1 {
	public static void main(String[]args) {
		
		int [][] arr = new int [2][3];
		int num=101;
		
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				arr[i][j] = num++;
			}
		}
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
		
		
		
		
	}

}
---
---
package com.company.java007_ex;

public class Repaet017_2 {
	public static void main(String[]args) {
		
		char [][] arr = new char[2][3];
		char ch = 'A';
		
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				arr[i][j] = ch++;
			}
			ch='B';
		}
		
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
		
		
		
	}

}
---
---
package com.company.java005_ex_MiniProject_Bank;

import java.util.Scanner;

public class Bank_arr_1_ver {

   public static void main(String[] args) {
      //변수
      int num = -1; String id = "", pass="";
      String genre = " ";  
      Scanner scanner = new Scanner(System.in);
      
      //입력+처리+ 출력
      for(;;){  
         //■기능 1. 메뉴판
         System.out.print("\n\n==AutoMusicPlaylist==" + 
            "\n1. 계정생성" + "\n2. 음악추가" + "\n3. 플레이리스트 생성" + "\n4. 실행" + "\n5. 계정삭제 > "     
         );  
         num = scanner.nextInt();
         scanner.nextLine(); // 버퍼 정리

         //■기능 2. 
         if(num==9){ 
            System.out.println("종료합니다.");  
            break;   
         }
         else if(num==1){ 
            System.out.print("ID   입력 > "); id = scanner.nextLine();
            System.out.print("PASS 입력 > "); pass = scanner.nextLine();
            System.out.print("관심있는 음악장르 입력> "); genre = scanner.nextLine();    
         }
         else if(num==2 || num==3|| num==4|| num==5){ 
            //   ■1. 사용자 인증
            System.out.print("ID   입력 > "); String tempId = scanner.nextLine();
            System.out.print("PASS 입력 > "); String tempPass = scanner.nextLine();
            
            if( !(id.equals(tempId)  && pass.equals(tempPass)) ) {
               System.out.println("아이디와 비밀번호를 확인해주세요!");
               continue; // 아래꺼 진행하지마!
            }

            //2. 2,3,4,5 각각에 해당하는 처리
            switch(num){
               case 2 : 
                  System.out.println("\nID >" + id + "\nPASS > "+ pass + "\n음악장르 > "+ genre); 
               break;
               case 3 : 
                  System.out.print("플레이리스트에 추가하실 음악을 입력해주세요. ");  
                  String input = scanner.nextLine();
                  genre += " " + input;  
                  System.out.println("추가가 완료됐습니다.");
               break;
               case 4 : 
                  System.out.print("플레이리스트를 실행합니다. 실행할 음악 입력 > ");  
                  String output = scanner.nextLine();
                  if(!genre.contains(output)) { 
                     System.out.println("Error: 플레이리스트에 해당 음악이 없습니다.");  
                     continue; 
                  }
                  // 음악 실행 완료 메시지 (실제 삭제는 없음)
                  System.out.println("플레이리스트 실행 완료: " + output); 
               break;
               case 5 : 
                  System.out.println("계정을 삭제하시겠습니까? (y/n)"); 
                  String answer = scanner.nextLine();  
                  if(!answer.toLowerCase().equals("y")) {
                     System.out.println("계정 삭제를 취소했습니다."); 
                     continue;
                  }
                  id = pass = genre = " ";
                  System.out.println("계정삭제를 완료했습니다.");
               break;
            }
         } // end else if
      }// end for 
   }// end main
}//end class
---
---
package com.company.java005_ex_MiniProject_Bank;

import java.util.Arrays;
import java.util.Scanner;

public class Bank_arr_2_ver {
   public static void main(String[] args) {
      //변수                       		    0   1    2
      String []id= {"id","pass","music"};       //  one two three
      String []pass ={"id","pass","music"};  // 1111 2222 3333
      String []music = {"id","pass","music"};// 1100 2200 3300   
      int num=-1;  
      Scanner scanner = new Scanner(System.in);
      
      //입력 + 처리 + 출력
      //Q1. 9가 아니라면 계속무한반복  for(;;)  while(조건)
      while(num != 9) {
    	  System.out.println(Arrays.toString(id));
         System.out.print("\n\n 🎸🎧MUSIC DICTIONARY🎧🎸" + 
             "\n[1] ➕ 계정 추가" + "\n[2] 🔍 음악 조회" + "\n[3] 🙆‍♂️‍음악 입력 " + "\n[4] 🧏‍♂️음악내보내기" + "\n[5] 🗑️ 계정 삭제  "
             +"\n\n👉 번호를 선택하세요:"
          );
         num = scanner.nextInt();
         
         //Q2. if / else if(  전체적인 큰틀  )
         if(num==1) { 
        	 //1. 빈칸인지 확인 > if(만약 0번째가 빈칸이라면) {find는 0} 원하는 한줄, 구조,  코드변환, break여부 
        	 int find = 1; //find 빈칸찾아서 넣을 번호
        	for(int i=0; i<id.length; i++) {   if(id[i]==" ") {find = i; break;}    }
        	if(find==-1) {System.out.println("계정을 생성할 수 없습니다."); continue;}
        	 //2. 빈칸에 입력받기
        	 System.out.println("[1] 아이디 입력> "); id[find] = scanner.next();
        	 System.out.println("[2] 비밀번호입력> "); pass[find] = scanner.next();
        	 System.out.println("[3] 음악   입력> "); music[find] = scanner.next();
         }else if(num==2 || num==3 || num==4 || num==5) {
         	 //1. 사용자인증 아이디를 입력받아 id[0]와 같고, 비밀번호입력받아 pass[0]와 같다면 찾은번호는 0
        	 int find =-1;	//find 인증할 번호
        	 System.out.println("[1] 아이디입력> "); String tempid = scanner.next();
        	 System.out.println("[2] 비밀번호입력> "); String temppass = scanner.next();
        	 for(int i=0; i<id.length; i++) {
        		 if(tempid.equals(id[i]) && temppass.equals( pass[i]  )   ) { find =1; break;}
        	 }
        	 if(find == -1) {System.out.println("아이디와 비밀번호를 확인해주세요!"); continue;} 
        	 
        	 //2. 각각의 처리
        	 switch(num) {
             case 2: System.out.println("[1]아이디> " + id[find] 
            		 + "\n[2]비밀번호>" + pass[find] + "\n[3] 언어>" + music[find]
			 ); break;  
             case 3: System.out.println("입력할 음악>" ); String temp1 = scanner.next();
             music[find] += temp1 ;
     		   break;
             case 4: System.out.println("내보낼 음악"); String temp2 = scanner.next();
             music[find] += temp2;
             	break;
             case 5: System.out.println("정말로 삭제하시겠습니까?");
             if(scanner.next().toLowerCase().equals("y")  ) {
            	 id[find] = " "; pass[find] = " "; music[find]=" ";
             	}
             break;
        	}
        	 
         }else {System.out.println("메뉴를 확인해주세요~!");}
         
         
      } // end while
       
   }// end main
}//end class
---
---
package com.company.java005_ex_MiniProject_Bank;

import java.util.Arrays;
import java.util.Scanner;

public class Bank002_Array {
   public static void main(String[] args) {
      //변수                       		    0   1    2
      String []id=new String[3];       //  one two three
      String []pass = new String[3];   // 1111 2222 3333
      double []balance = new double[3];// 1100 2200 3300   
      int num=-1;  
      Scanner scanner = new Scanner(System.in);
      
      //입력 + 처리 + 출력
      //Q1. 9가 아니라면 계속무한반복  for(;;)  while(조건)
      while(num != 9) {
    	  System.out.println(Arrays.toString(id));
         System.out.print("\n\n🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n" + 
             "\n[1] ➕ 계좌 추가" + "\n[2] 🔍 계좌 조회" + "\n[3] 💵 입금하기" + "\n[4] 💸 출금하기" + "\n[5] 🗑️ 계좌 삭제  "
             +"\n\n👉 번호를 선택하세요:"
          );
         num = scanner.nextInt();
         
         //Q2. if / else if(  전체적인 큰틀  )
         if(num==1) { 
        	 //1. 빈칸인지 확인 > if(만약 0번째가 빈칸이라면) {find는 0} 원하는 한줄, 구조,  코드변환, break여부 
        	 int find = 1; //find 빈칸찾아서 넣을 번호
        	for(int i=0; i<id.length; i++) {   if(id[i]==null) {find = i; break;}    }
        	if(find==-1) {System.out.println("계좌를 생성할 수 없습니다."); continue;}
        	 //2. 빈칸에 입력받기
        	 System.out.println("[1] 아이디입력> "); id[find] = scanner.next();
        	 System.out.println("[2] 아이디입력> "); pass[find] = scanner.next();
        	 System.out.println("[3] 아이디입력> "); balance[find] = scanner.nextDouble();
         }else if(num==2 || num==3 || num==4 || num==5) {
         	 //1. 사용자인증 아이디를 입력받아 id[0]와 같고, 비밀번호입력받아 pass[0]와 같다면 찾은번호는 0
        	 int find =-1;	//find 인증할 번호
        	 System.out.println("[1] 아이디입력> "); String tempid = scanner.next();
        	 System.out.println("[2] 비밀번호입력> "); String temppass = scanner.next();
        	 for(int i=0; i<id.length; i++) {
        		 if(tempid.equals(id[i]) && temppass.equals( pass[i]  )   ) { find =1; break;}
        	 }
        	 if(find == -1) {System.out.println("아이디와 비밀번호를 확인해주세요!"); continue;} 
        	 
        	 //2. 각각의 처리
        	 switch(num) {
             case 2: System.out.println("[1]아이디> " + id[find] 
            		 + "\n[2]비밀번호>" + pass[find] + "\n[3] 잔액>" + balance[find]
			 ); break;  
             case 3: System.out.println("입금할 금액>" ); double temp1 = scanner.nextDouble();
             		  balance[find] -= temp1 ;
     		   break;
             case 4: System.out.println("출금할 금액"); double temp2 = scanner.nextDouble();
             	balance[find] -= temp2;
             	break;
             case 5: System.out.println("정말로 삭제하시겠습니까?");
             if(scanner.next().toLowerCase().equals("y")  ) {
            	 id[find] = null; pass[find] = null; balance[find]=0;
             	}
             break;
        	}
        	 
         }else {System.out.println("메뉴를 확인해주세요~!");}
         
         
      } // end while
       
   }// end main
}//end class
---
---
package com.company.java008;

public class Method001 {
	//(1) 마법상자 - 코드의 재사용(목적)
	//public static 리턴값(결과물) 메서드명(파라미터){    }
	  public static void 		smile() {System.out.print("   :)  ");}
	  public static void        hello() {System.out.println("Hello");}
	  public static void		line () {System.out.println();}
	  

	  
	///////////////////////
	public static   void main(String[]args) {
	//(2) 마법상자(함수)사용 
		smile(); hello();
		hello();
		line();
		smile(); hello();
		line();
		hello();
		smile(); hello();
	}//end main
	////////////////////////
}//end class


/*■15. method (1)
1.   method?
-  코드 재사용
-  실행하고자 하는 명령어들을 {} 안에 한꺼번에 모아놓고
-  메서드이름이 호출되면 실행되는 기능
-  function, method, 멤버함수

2. method 사용법
Step1)  함수정의
Step2)  함수호출
 */
---
---
package com.company.java008;

public class Method002 {
	//(1) 마법상자 정의
	//public staitc 리턴값, 메서드명(파라미터(마법상자에 들어갈 재료들)){}
	public static   void    myint(int a) {System.out.println(a);}	
	public static   void	ten(int money) {System.out.println(money*10 );}
	public static   void	add(int money, int bitcoin) {System.out.println(money+bitcoin);}
	
	/////////////////////////////
	public static void main(String[]args) {
		//(2) 사용
		//public static   void   myint(int a) {System.out.println(a);}	
								 myint(1);
								 myint(2);
		//public static   void	ten(int money) {System.out.println(money*10 );}
							 	ten(1);	//int money=1 
		//public static   void	add(int money, int bitcoin) {System.out.println(money+bitcoin);}
				 				add(     100,        20   );	//int money=100, int bitcoin=20
				 				add(     200,        30   );	//int money=200, int bitcoin=30

							 	
							 	
	
	}//end main
	///////////////////////////////

}//end class
---
---
package com.company.java008;

import java.util.Random;

public class Method003 {

	public static String sign() {
		return " 🎇『전설의_마법의_도끼를_든_초코우유_중독자_용감한_불꽃전사』🎇";
		// System.out.println("........나짤려요~~........"); //Unreachable code
	}

	public static String intro(String name, int level) {
		return "[" + name + " ]님은 레벨[" + level + "]";
	}

	////////////////////////////////////////////////////
	public static void main(String[] args) {
		// public static 리턴값 매서드명(파라미터){}
		// 1. 당신의 이름은? 전설의_마법의_도끼를_든_초코우유_중독자_용감한_불꽃전사
		System.out.println("1. 당신의 이름은?" + sign());
		// 2. 이름, 직업, 레벨을 주면 위에서 소개문장
		// 2. 당신 설명? [홍길동]님은 레벨[9]
		// public static String intro("홍길동" , 9 ){String name, int level}
		System.out.println("2. 당신 설명?" + intro("홍길동", 9));
		System.out.println("2. 당신 설명?" + intro(sign(), 10));
		// 3. 두개의 숫자를 넣어주면 나누기처리 9> 4.5
		// public static double spell(int level){}
		System.out.println("3. 반타작 저주>" + spell(9));
		// 4. 오늘의 운세 1~100
		// public static int luck() {}
		System.out.println("4. 운세> " + luck());

	}

	//////////////////////////////////////////////////
	public static int luck() {
		Random rand = new Random();
		int result = rand.nextInt(100) + 1; // 0 ~ 100보다 작은 숫자랜덤
		return result;
	}

	public static double spell(int level) {
		return level / 2.0;
	}
}
---
---
package com.company.java008_ex;

public class MethodEx001 {

	public static void dog() {System.out.println("멍멍");}
	public static void line(){System.out.println("=========");}
	public static void cat() {System.out.println("야옹");}
	
	
	/////////////////////////////
	public static void main(String[]args) {
		
		
	
	line();
	dog();
	line();
	cat();
	line();
	
	
	}//end main
	///////////////////////////////
}//end class

/*연습문제1)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx001
다음과 같이 dog(), line(), cat() 메서드를 정의하시오.

public static void main(String[] args) {
  dog();  // 멍멍 출력
  line();   //========= 출력 
  cat();    // 야옹 출력
  line();   //========= 출력
}
*/
---
---
package com.company.java008_ex;

public class MethodEx002 {
	
	public static void test1 (int a) {System.out.println(a);}
	public static void test2 (double a) {System.out.println(a);}
	public static void hap(int a, int b) {
		int total =0; 
		for(int i=a; i<=b; i++){total += i;}
		System.out.println(total);
	}

	public static void dishap(int num, char ch){
		for(int i=0; i<num; i++)
		{System.out.print(ch);}
	} 

	
	/////////////////
	public static void main(String[]args) {
		
		
						test1  (10);	//10출력
						test2  (1.2);	//1.2출력
						hap    (3,5);	//3+4+5 출력값
						hap	   (1,10);  //
						dishap (7, '*');//*********출력
		
	}//end main
    ////////////////
}//end class

/*연습문제2)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx002
다음과 같이 test1(), test2(), hap(), disp()메서드를 정의하시오.

public static void main(String[] args) {
    // public static  리턴값 메서드명(파라미터)
    test1(10);    //10 출력
     test2(1.2);   // 1.2 출력
     hap(3,5);     // 3+4+5한값  12 출력
     disp(7, '*');  // *******출력
}
*/
---
---
package com.company.java008_ex;

public class MethoodEx003 {
	
	public static void printprofile(String name, int age, String location)
	{System.out.println(
		      "=== 사용자 프로필 ===\r\n"
			+ "이름: +name+\r\n"
			+ "나이: +age+\r\n"
			+ "지역: +location+\r\n"
			+ "==============");}

	
	public static void checkAge(int age) {
		System.out.println(  age< 19?  "미성년자입니다." : "성인입니다.");
	}
	
	public static void repeatMessage(String str, int num ) {
		for(int i=0; i<num; i++) {System.out.println( str );}
	}
	
	public static void drawBox(int num, char ch) {
		for(int i=0; i<num; i++) {
			for(int j=0; j<num; j++) {
				System.out.print(ch);
			}System.out.println();
		}
	}
	
	
	////////////////////////////////////
	public static void main(String[]args) {
	//public static void  (){}
		
		printprofile("홍길동", 25, "서울");  // 이름, 나이, 지역 출력
		checkAge(17);                      // 미성년자 여부 판단
	    repeatMessage("안녕하세요!", 3);      // 메시지 반복 출력
	    drawBox(5, '#');                   // 문자로 박스 출력

		
		
	
	  /*■ 출력 예시
		=== 사용자 프로필 ===
		이름: 홍길동
		나이: 25
		지역: 서울
		===================
		미성년자입니다.
		안녕하세요!
		안녕하세요!
		안녕하세요!
		#####
		#####
		#####
		#####
		#####
		*/
		
		
		
		
	}//end main
	////////////////////////////////////
}//end class

/*패키지명 : com.company.java008_ex 
클래스명 : MethodEx003 다음과 같이 
printProfile(), checkAge(), repeatMessage(), drawBox() 메서드를 정의하시오.

public static void main(String[] args) {
    // public static 리턴값 메서드명(파라미터)
    printProfile("홍길동", 25, "서울");   // 이름, 나이, 지역 출력
    checkAge(17);                      // 미성년자 여부 판단
    repeatMessage("안녕하세요!", 3);     // 메시지 반복 출력
    drawBox(5, '#');                   // 문자로 박스 출력
}
■ 출력 예시
=== 사용자 프로필 ===
이름: 홍길동
나이: 25
지역: 서울
===================
미성년자입니다.
안녕하세요!
안녕하세요!
안녕하세요!
#####
#####
#####
#####
#####
*/
---
---
package com.company.java008_ex;

public class MethodEx004 {
	
	public static  int return_num()   {return 1 ;}
	public static  double return_float() {return 10/3.0 ;}
	public static  String mycolor() {return "PURPLE" ;}
	public static  String jangsu() {return "★★★★★" ;}
	public static  int myadd(int a, int b) {return a+b ;}
	public static  String myban(char ch) {if(ch=='A') {return "노랑조";} else {return "주황조";}  }
	public static  String stdId (int a) {return "G" + a;}
	public static  char stdAvg(int avg) {
		return avg>=90? 'A' : avg>=80? 'B' : avg>=70?  'C' : 'D';
	}

	//////////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		
		//public static 리턴값 메서드명 (파라미터) {   해야할일     }
		
			System.out.println("1. 내가 좋아하는 숫자    :" + return_num());    // 1을 결과값으로 줌
			System.out.println("2. 10/3.0을 실수로 표현 :" + return_float());  // 3.3333을 결과값으로 줌
			System.out.println("3. BEST COLOR        :" + mycolor());      // PURPLE을 결과값으로 줌
			System.out.println("4. 장수돌침대 별이       :" + jangsu());        // ★★★★★을 결과값으로 줌  
			System.out.println("5. 10+20= " + myadd(10,20));       // 두숫자를 더한값을 결과값으로 줌  
			System.out.println("6. 반(노랑조/주황조)=" + myban('B'));  // A이면 노랑조 ,  B이면 주황조
			System.out.println("7. 당신의 학번은?" + stdId(1111));   // G하고 넣어준 학번 나오게
			System.out.println("8.당신의 평균은?" + stdAvg(88));    
		//  90점이상이면 A ,  80점이상이면 B ,  70점이상이면 C , 아니라면  D

	
////////////////////////////////////////////////////////////////////////

			
			
	}
}
	
	/*출력결과 :
		1. 내가 좋아하는 숫자    : 1
		2. 10/3.0을 실수로 표현 : 3.3333
		3. BEST COLOR        : PURPLE
		4. 장수돌침대 별이       : ★★★★★
		5. 10+20= 30
		6. 반(노랑조/주황조)= 나는 노랑조
		7. 당신의 학번은? G1111
		8. 당신의 평균은? B */
	

/*연습문제4)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx004

*/
---
---