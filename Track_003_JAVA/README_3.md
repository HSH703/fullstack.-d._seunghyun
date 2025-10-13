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
## JAVA
---
package com.company.java008_ex;

public class Repeat018 {
	public static void dog() {
		System.out.println("멍멍");
	}

	public static void disp(int count, char ch) {
		for (int i = 0; i < count; i++) {
			System.out.print(ch + "*");
		}
		System.out.println();
	}

	public static String stdAvg(int score) {
		if (score >= 90) {
			return "A";
		} else if (score >= 80) {
			return "B";
		} else if (score >= 70) {
			return "C";
		} else {
			return "D";
		}
	}

	//////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		System.out.println("강아지가 등장합니다.");
		dog();
		System.out.println("강아지가 시험을 봤습니다. 점수를 공개합니다.");
		disp(7, '*');
		System.out.println("당신의 평균은?" + stdAvg(88));

	}
	///////////////////////////////////////////////////////////////////
}
---
---
package com.company.java008_ex;

import java.util.Scanner;

public class MethodEx005 {

	public static int process_total(int kor, int eng, int math) {
		return kor + eng + math;
	}

	public static float process_avg(int total) {
		return total / 3.0f;
	}
	
	public static String process_pass(float avg, int kor, int eng, int math) {
		return avg < 60 ? "불합격" : kor < 40 || eng < 40 || math < 40 ? "재시험" : "합격";
	}

		////////////////////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		///////////////////// (1) 변수
		String name = "";
		int kor, eng, math, total = 0;
		float avg = 0.0f;
		String pass = "", jang = "", star = "";
		Scanner scanner = new Scanner(System.in);

		///////////////////// (2) 입력 : 이름, 국어, 영어, 수학점수를 입력받으시오.
		System.out.print("이름입력 > ");
		name = scanner.next();
		System.out.print("국어입력 > ");
		kor = scanner.nextInt();
		System.out.print("영어입력 > ");
		eng = scanner.nextInt();
		System.out.print("수학입력 > ");
		math = scanner.nextInt();

		///////////////////// (3) 처리 :
		// public static 리턴값 메서드명(파라미터){해야할 일}
		// public static int process_total(int kor , int eng, int math){}
		total = process_total(kor, eng, math); // 1. 총점처리
		//
		// public static float process_avg(int total){;}
		avg = process_avg(total); // 2. 평균처리
		//
		// ////////3. 합격 평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면
		// public static String process_pass (avg , kor, eng, math) {}
		pass = process_pass(avg, kor, eng, math);
		//
		// //////// 4. 평균이 95점이상이면 장학생
		// public static String process_scholar( avg ){평균이 95점이상이면 장학생}
		jang = process_scholar(avg);
		//
		// //////// 5. 평균점수대로 별표 붙이기 , 예) 70점대이면 별7개, 80점대이면 별8개, 90점대이면 별9개 , 100점이면
		// 별10개
		// public static String process_star(float avg) {평균점수대로 별표 붙이기 , 예) 70점대이면 별7개,
		// 80점대이면 별8개, 90점대이면 별9개 , 100점이면 별10개 }
		star = process_star(avg);
		//
		///////////////////// (4) 출력
		// public static 리턴값 메서드명(파라미터) { 출력}
		// public static void process_show(String name,int kor, int eng,int math,int
		// total,float avg, String pass, String jang, String star) { 출력}
		process_show(name, kor, eng, math, total, avg, pass, jang, star);

	}// end main

	public static String process_scholar(float avg) {
		return avg < 95 ? "" : "장학생";
	}

	public static String process_star(float avg) {
		String result = "";
		// 93>9 95>9 98>9 99.67 -> 9.967 -> 9(소수점 떼주기)
		for (int i = 0; i < (int) (avg / 10); i++) {
			result += "★";
		}

		return result;
		// 평균점수대로 별표 붙이기 , 예) 70점대이면 별7개, 80점대이면 별8개, 90점대이면 별9개 , 100점이면 별10개
	}

	public static void process_show(String name, int kor, int eng, int math, int total, float avg, String pass,
			String jang, String star) {
		System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n", "NAME", "KOR", "ENG", "MATH",
				"TOTAL", "AVG", "PASS", "장학생", "LEVEL");
		System.out.println("--------------------------------------------------------------------------- ");
		System.out.printf("%-5s\t%-5d\t%-5d\t%-5d\t%-5d\t%-5.2f\t%-5s\t%-5s\t%-5s\n", name, kor, eng, math, total, avg,
				pass, jang, star);
		System.out.println("--------------------------------------------------------------------------- ");
	}

} // end class

/*
 * 연습문제5) method 패키지명 : com.company.java008_ex 클래스명 : MethodEx005
 * 
 * public class MethodEx005{ public static void main(String[] args) {
 * /////////////////////(1) 변수 String name = ""; int kor, eng, math, total ;
 * float avg = 0.0f; String pass = ""; String jang = ""; String star= "";
 * Scanner scanner = new Scanner(System.in);
 * 
 * /////////////////////(2) 입력 : 이름, 국어, 영어, 수학점수를 입력받으시오.
 * 
 * /////////////////////(3) 처리 : total = process_total(kor , eng, math); // 1.
 * 총점처리
 * 
 * avg = process_avg(total); //2. 평균처리
 * 
 * ////////3. 합격 평균이60이상이고, 각각 국어, 영어, 수학40이상/불합격/재시험-각각 40미만인게 있다면 pass =
 * process_pass(avg , kor, eng, math);
 * 
 * //////// 4. 평균이 95점이상이면 장학생 jang = process_scholar( avg );
 * 
 * //////// 5. 평균점수대로 별표 붙이기 , 예) 70점대이면 별7개, 80점대이면 별8개, 90점대이면 별9개 , 100점이면
 * 별10개 star = process_star(avg);
 * 
 * 
 * /////////////////////(4) 출력 process_show(name, kor, eng, math, total, avg,
 * pass, jang, star);
 * 
 * 
 * }// end main
 * 
 * 
 * }// end class
 * 
 * 
 * :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 * :::::::::::::::::::: 이름 국어 영어 수학 총점 평균 합격여부 장학생 랭킹
 * -----------------------------------------------------------------------------
 * --------------- 아이언맨 100 100 100 300 100.0 합격 장학생 **********
 * -----------------------------------------------------------------------------
 * ---------------
 */
---
---
package com.company.java008_ex;

import java.util.Scanner;

public class MethodEx006 {
	
	//3. 메서드 작성 및 호출 	
	public static int process_total(int attack, int defense, int speed){
		return attack + defense + speed;
	}
	
	public static float process_avg(int total) {
		return  total/3.0f;
		}
	
	public static String process_grade(float avg, int attack, int defense, int speed){
		return avg<60? "B" : attack<40 || defense<40 || speed < 40 ? "D":"S";
	}
	

	//////////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		//1. 변수선언
		 String name  = "";
		 int attack , defense, speed, total ;  
		 float avg ; 
		 String grade="", star ="", quest="", type="" ; 
		 Scanner scanner = new Scanner(System.in);

		//2. 입력 + 처리
	 	System.out.print("이름 입력>");
	 	name = scanner.next();
	 	System.out.print("공격력 입력>");
	 	attack = scanner.nextInt();
	 	System.out.print("방어력 입력>");
	 	defense = scanner.nextInt();
	 	System.out.print("민첩성 입력>");
	 	speed = scanner.nextInt();

	 	
	 	total = process_total(attack, defense, speed) ;
	 	avg = process_avg(total);
	 	grade = process_grade(avg, attack, defense, speed);
	 	star=process_star(avg);
	 	quest = process_quest(avg);
	 	type = process_type(attack, defense, speed);
	 	process_show(name, attack, defense, speed, total, avg, grade, star, quest, type);
		
	}//end main
	/////////////////////////////////////////////////////////////////
	
	
	public static String process_star(float avg){
		String result="";
		
		for(int i=0; i<(int) (avg / 10); i++) {
			result+="★";
		}
		return result;
	}
	
	public static String process_quest(float avg){
		return avg<95? "" : "전설의 용퇴치";
	}
	
	public static String process_type(int attack, int defense, int speed){
		if(attack > defense && attack > speed ) { return "전사형";}
		else if( defense > attack && defense > speed) { return "탱커형"; }
		else if(speed > attack && speed > defense) { return"도적형" ;} 
		else {return " ";}

	}


	//4. 출력 메서드 작성
 	//process_show();
	public static void process_show(String name, int attack, int defense, int speed, int total, float avg,
								String grade, String star, String quest, String type) {
		System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n"
				, "NAME", "ATTACK", "DEFENSE", "SPEED", "TOTAL", "AVG", "GRADE", "STAR", "QUEST", "TYPE");
		System.out.println("--------------------------------------------------------------------------------");
		System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n"
				, name, attack, defense, speed, total, avg, grade, star, quest, type);
		System.out.println("--------------------------------------------------------------------------------");
	}

	
	
	
	
}//end class

/*## 연습문제 6)   
패키지명: com.company.java008_ex 
클래스명: MethodEx006
1. 당신은 게임 캐릭터의 능력치를 분석하는 프로그램을 만들려고 합니다.  
사용자로부터 캐릭터 이름과 공격력, 방어력, 민첩성을 입력받아 
총합, 평균, 등급, 별표 랭킹, 추천 퀘스트, 캐릭터 타입을 출력하는 프로그램을 작성하세요.


#### (1단계) 변수 선언  
아래와 같은 변수를 선언하세요:
- `String name` : 캐릭터 이름  
- `int attack, defense, speed` : 능력치  
- `int total` : 능력치 총합  
- `float avg` : 평균  
- `String grade, star, quest, type` : 등급, 별표, 퀘스트, 캐릭터 타입  
- `Scanner scanner` : 입력 도구

#### (2단계) 입력 처리  
사용자로부터 다음 정보를 입력받으세요:
- 캐릭터 이름
- 공격력 (0~100)
- 방어력 (0~100)
- 민첩성 (0~100)

#### (3단계) 메서드 작성 및 호출  
아래 기능을 각각 메서드로 작성하고, main 메서드에서 호출하세요:
구조 = public static void 메서드명(파라미터){해야할 일}
| 기능 | 메서드명 | 설명 |
|------|----------|------|
public static String process_total(int attack, int defense, int speed){}
| 총합 계산 | `process_total()` | 공격력 + 방어력 + 민첩성 |

public static float process_avg(int total){return float total/3.0f;}
| 평균 계산 | `process_avg()` | 총합 ÷ 3 |

public static String process_grade(float avg, int attack, int defense, int speed){}
| 등급 처리 | `process_grade()` | 평균에 따라 S~D 등급 |

public static String process_star(float avg){}
| 별표 처리 | `process_star()` | 평균 점수대별 별 개수 |

public static String process_quest(float avg){}
| 퀘스트 추천 | `process_quest()` | 평균에 따라 추천 퀘스트 |

public static String process_type(int attack,int defense, int speed){}
| 캐릭터 타입 | `process_type()` | 가장 높은 능력치 기준 |


#### (4단계) 출력 메서드 작성  
`process_show()` 메서드를 만들어 다음 정보를 출력하세요:

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
캐릭터   공격력   방어력   민첩성   총합   평균   등급   랭킹   추천퀘스트   캐릭터타입
-------------------------------------------------------------------------------------------------
피카츄   85   90   95   270   90.0   S등급   *********   전설의 용 퇴치   도적형
-------------------------------------------------------------------------------------------------
 
###   보너스 과제 (선택)
- 평균이 100점이면 “전설의 영웅” 칭호를 부여해보세요.
- 여러 캐릭터를 배열로 입력받아 비교하는 기능으로 확장해보세요.
*/
---
---
package com.company.java008_ex;

public class Repeat019 {
	
	public static void start() {
		System.out.println("부우웅....");
	}

	public static void scan(int n, char ch) {
		for (int i = 0; i < n; i++) {
			System.out.print(ch);
		}
		System.out.println();
	}

	public static String signalGrade(int strength) {
		if (strength >= 90) {
			return "A";
		} else if (strength >= 80) {
			return "B";
		} else if (strength >= 70) {
			return "C";
		} else {
			return "D";
		}
	}

	public static int charge(int current, int added) {
		return current + added;
	}

	//////////////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		System.out.println("탐사 로봇이 기동합니다.");
		start();

		System.out.println("\n행성 스캔중....");
		scan(5, '#');

		System.out.println("\n신호강도 분석결과:");
		System.out.println("신호등급:" + signalGrade(70));

		System.out.println("\n 배터리 충전중....");
		System.out.println("충전 완료:" + charge(40, 40) + "%");

	}// end main
		/////////////////////////////////////////////////////////////////////////
}// end class
---
---
package com.company.java008;

import java.util.Arrays;

public class Method004 {
	//오버로딩? 같은 목적으로 비슷한 동작을 수행하는 메서드들의 이름을 일관되게 작업
	//		  [파라미터의 타임]과 [갯수]로 메서드 구분 
	public static void show(){System.out.println("마법상자~!");}
	
	public static void show (int a){System.out.println("무조건 * 10>" + a + ":" + a*10);} 
	
	public static void show (int a, int b, int c) {
		System.out.println();
		System.out.println("무조건 *100>"  + a + ":" + a*100 );
		System.out.println("무조건 *100>"  + b + ":" + b*100 );
		System.out.println("무조건 *100>"  + c + ":" + c*100 );

		}
	////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		// arr보관 [주소:1000번지] = [1000번지]{1,2,3}
		int [] arr 	    = {1,2,3};	//갯수가 3: 0~2
		//public static void show(){}
		show();	 //public static 리턴값 메서드명(파라미터){해야할 일}
		show(1); //[값]public static void show (int a){10배} 
		show(arr[1]);	//[값]show(2)	arr[1] 들어가 있는값
		show(1,2,3);	//[값]public static void show(int a, int b, int c){  100배   }
		show(arr[0], arr[1], arr[2]);	//[값]show(1,2,3);
		show(arr); //public static void show( int [] arr ){}
	}//end main
	////////////////////////////////////////////////////////////

	private static void show(int[] arr) {	// 배열에 접근해서, 주소를 따라가서 1000배
		for(int i=0; i<arr.length; i++) {
			arr[i] *= 1000;
		}
		System.out.println("show 무조건 *1000>" +
			System.identityHashCode(arr) + Arrays.toString(arr) );
	}
}//end class
---
---
package com.company.java008;

import java.util.Arrays;

public class Method005 {
	
	public static void call(int a) {
		System.out.println(a + ">" + (a+=10)   );
	}
	
	
	
	////////////////////////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		int [] arr = {10, 20, 30};
					  //call by value : 배열값 변경안됨.
		call(10);	    //20	[값] +10을 해주는 마법상자
		call(arr[0]);	//20	public static void call(int a ){+10}
		System.out.println("[1]main> " + System.identityHashCode(arr) );
		System.out.println("[2]main> " + Arrays.toString(arr)  ); //10, 20, 30
		
						// call by reference : 배열값 변경[됨].
		call(arr);		// [주소] +100 해주는 마법상자	- 주소를 참조
						// public static void call(){ +100 }
	    System.out.println("[3]main> " + System.identityHashCode(arr) );
		System.out.println("[4]main> " + Arrays.toString(arr)  );

	}
	////////////////////////////////////////////////////////////////////////////////
	private static void call(int[] arr) {
		for(int i=0; i<arr.length; i++) { arr[i]+=100; }
		System.out.println("call[주소] " + System.identityHashCode(arr)
										+ Arrays.toString(arr));
		//[3]의 주소와 같은지 확인! 
		//[4] main에서의 배열값과 같은지 확인!
		
		
	}//end main
	////////////////////////////////////////////////////////////////////////////////
}//end class
---
---
package com.company.java008_ex;

public class MethodEx007 {
	public static int add(int x, int y) {return x+y;} //1번
	
	public static int  add(byte x, byte y) 	{return x+y;} //2번
	public static int  add(short x, short y) {return x+y;} //3번
//	public static long add(int x, int y) 	{return x+y;} //4번
	public static long add(long x, long y)  {return x+y;} //5번


	
	
	
	///////////////////////////////////////////////
	public static void main(String[]args) {
		//Q1. 메서드오버로딩? 
		// - 비슷한 목적의 메서드 이름을 같게하는것.
		
		//Q2. 왜 오류? 이유달기
		// - 파라미터의 개수와 자료형으로 구분
		// 1,4 번의 파라미터의 자료형이 같음!
		
		
	}//end main
	///////////////////////////////////////////////
}//end class
/*연습문제7)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx007
오류나는 메서드는?

public class Method007_ex {
   public static int add(int x, int y) {return x+y;}
   
   public static int  add(byte x, byte y)   {return x+y;}   
   public static int  add(short x, short y) {return x+y;}   
   public static long add(int  x, int y)    {return x+y;}   
   public static long add(long  x, long y)  {return x+y;}   
   
   public static void main(String[] args) { 
   }
}

*/
---
---
package com.company.java008_ex;

import java.util.Arrays;

public class MethodEx008_1 {
	
	public static void upper(char[] ch) {
		System.out.println(ch);
		//'A'(65) = 'a' (97) -32
		for(int i=0; i<ch.length; i++) {	ch[i] -= 32;}
		System.out.println("upper. 배열값 : " + ch + Arrays.toString(ch));
	}
	//////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		
	    char[] ch = {'a','b','c'};
	    upper(ch); 
	    //public static 리턴값 메서드명(파라미터){해야할 일}
	    //public static void upper(char[] ch){대문자로 변경}
	    //hint - 1
	    /*  [heap]							[stack]
	     								←	upper(1000번지)
	     	1000번지{'a', 'b', 'c'}		←	ch : 1000번지		
	     */
	    System.out.println("main. 배열값 : " + ch  +  Arrays.toString(ch)          );  // [A,B,C]

		
	}//end main
	//////////////////////////////////////////////////////////////
}//end class

/*연습문제8)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx008

public class MethodEx008{ 
    char[] ch = {'a','b','c'};
    upper(ch);     
    System.out.println("main. 배열값 : "      +  Arrays.toString(ch)          );  // [A,B,C]
}
*/
---
---
package com.company.java008_ex;

import java.util.Arrays;

public class MethodEx008_2 {
	
	//////////////////////////////////////////////////////////
	public static void main(String[]args) {
		char [] letters = {'A', 'B', 'C', '1', '@'}; 
		lower(letters); 
		//public static void lower(char [] letters){}
       /*	
        *   [heap]							 [stack]
		* 					    			←   4) lower(1000번지)   7번째 줄
		   2) 1000번지		            	←	3) ch[1000번지]		6번쩨 줄
		 	{'A', 'B', 'C', '1', '@'}
		 								        1) main
		*/
		
		System.out.println( Arrays.toString(letters));
		
		
		
	}//end main
	/////////////////////////////////////////////////////////////////
	public static void lower(char [] letters){
		for(int i=0; i<letters.length; i++) {
			if(letters[i]>= 'A' && letters[i] <='Z') { letters[i] += 32;}
		}
	}

	

}//end class
---
---
package com.company.java008_ex;

import java.util.Arrays;

public class MethodEx008_3 {
	//////////////////////////////////////////////////////////////////////
	public static void main(String[]args) {
		String[] toybox = {"레고", "로봇장난감", "낚시대", "공룡", };
		System.out.println("main 처음 toybox > " + Arrays.toString(toybox));
		lend(toybox); 
		System.out.println("main 친구가 빌려간 후 toybox > " + Arrays.toString(toybox));
	}//end main
	//////////////////////////////////////////////////////////////////////
	public static void lend(String[] toybox) { toybox[0] = "X";}

}//end class


/* [method area]	1)MethodEx008_3 정보

	[heap area]			           [stack area]
							  ←  lend[1000번지]
	3) 1000번지				  ←  toybox[1000번지] 8번재 줄
	{"레고", "주방놀이세트"  ,,,}
					            	2) main
*/
---
---
package com.company.java008_ex;

import java.util.Arrays;

public class MethodEx008_4 {
	public static void main(String[]args) {
		String[][] apt = {
				{  "아이유", "손흥민", "BTS RM"},	//00 01 02
				{  "이정제", "리사"  , "유재석"}, 	//10 11 12
				{  "박지성", "강호동",  "마동석"} 	//20 21 22
		};
		System.out.println("MAIN   >  APT  -  " + Arrays.deepToString(apt));
		ringBell( apt );
		System.out.println("MAIN   >  APT  -  BELL 🔔"+ Arrays.deepToString(apt));

	}//end main
	public static void ringBell(String[][] apt) {apt[1][2] = "🔔";}

}//end class

/*	[heap]								[stack]
 									←	ringBell(1000번지)
 	1000번지 apt[3][3]				←	apt[1000번지]
 	apt[
 	0층 1001번지 | 1층 1002번지 | 2층 1003번지 ] 
 	1001번지 {  "아이유", "손흥민", "BTS RM"}
	1002번지 {  "이정제", "리사"  , "유재석"}
	1003번지 {  "박지성", "강호동",  "마동석"}
*/
---
---
package com.company.java008_ex;

import java.util.Arrays;
import java.util.Scanner;

public class MethodEx009_1 {
	public static void  who_are_you(String [][] users){  //	아이디를입력받아서 나라조회   
		//변수
		String tempid="";  String result ="유저를 확인해주세요!";
		Scanner scanner = new Scanner(System.in);
		
		//입력  아이디를 입력해주세요>aaa
		System.out.print("아이디를 입력해주세요>");  tempid= scanner.next();
		
		//처리  if(만약 tempid가 aaa라면){ 한국사람입니다.}
		//     if(만약 tempid가 bbb라면){ 호주사람입니다.}
		//처리  if( tempid.equals(users[0][0])){ result =  users[0][2]+ "사람입니다.";}
		//     if( tempid.equals(users[1][0])){ result =  users[1][2]+ "사람입니다.";}
		for (int i = 0; i < users.length; i++) {
			if (tempid.equals(users[i][0])) {
				result = users[i][2] + "사람입니다.";
				break;
			}
		}
		
		//출력  aaa는 한국사람입니다.  / 유저를 확인해주세요!
		System.out.println(result);
	}
	
	/////////////////////////////////////////////////
	public static void main(String[] args) {
	   // 변수
	   String [][] users = {{ "aaa"  , "111"   , "한국"     } ,     // 00 01 02
	                        { "bbb" , "222"   , "호주"       } ,    // 10 11 12
	                        { "ccc"  , "333"   , "중국"      }};    // 20 21 22
	   // 입력
	   who_are_you(users);    // 아이디를입력받아서 나라조회
	   //public static void  who_are_you(String [][] users){  아이디를입력받아서 나라조회  }
	   who_pass_change(users); // 아이디,비밀번호가 맞으면 비밀번호 바꾸기
	   //public static void  who_pass_change(String [][] users){ 아이디,비밀번호가 맞으면 비밀번호 바꾸기  }
	}//end main
	
	/////////////////////////////////////////////////
	public static void  who_pass_change(String [][] users){ 
		// 아이디,비밀번호가 맞으면 비밀번호 바꾸기  
		// 변수
		String tempid="", temppass="";
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.print("아이디를 입력해주세요>");  tempid= scanner.next();
		System.out.print("비밀번호를 입력해주세요>");  temppass= scanner.next();
		
		int findIndex=-1;  // 유저의 번호를 찾아서 findIndex 담기 , 못찾았다라고 하면 -1
		// 처리 if( 아이디와 비번이 맞으면 ) {  변경하실 비밀번호를 입력해주세요123 - 비번바꾸기}
		//     if(tempid와 users[0][0] && temppass와 users[0][1] ) {01 변경하실 비밀번호를 입력해주세요123 - 비번바꾸기}
		//     if(tempid와 users[1][0] && temppass와 users[1][1] ) {11 변경하실 비밀번호를 입력해주세요123 - 비번바꾸기}
		for(int i=0; i<users.length; i++) {
			if(tempid.equals(users[i][0]) && temppass.equals( users[i][1] )) { 
				System.out.print("변경하실 비밀번호를 입력해주세요");
				users[i][1] =  scanner.next();
				findIndex= i;
				break;  //찾았으면 나오기!
			}
		}
		// 출력  - 정보확인 : [bbb, 123, 호주] / 정보를 확인해주세요
		if(findIndex != -1) {
			System.out.println("정보확인 : " + Arrays.toString( users[findIndex]) );
		}else { 	System.out.println("정보를 확인해주세요");   }
	}
	 
}//end class

/*
	   // 변수
	   String [][] users = {{ "aaa"  , "111"   , "한국"     } ,     // 00 01 02
	                        { "bbb" , "222"   , "호주"       } ,    // 10 11 12
	                        { "ccc"  , "333"   , "중국"      }};    // 20 21 22

연습문제9)  method
패키지명 : com.company.java008_ex
클래스명 :  MethodEx009

public class MethodEx009{ 
   // 변수
   String [][] users = {{ "aaa"  , "111"   , "한국"     } ,     // 00 01 02
                      { "bbb" , "222"   , "호주"       } ,       // 10 11 12
                      { "ccc"  , "333"   , "중국"      }};      // 20 21 22
   // 입력
   who_are_you(users);    
   //  public static void who_are_you(String [][] users){  아이디를입력받아서 나라조회 }
   who_pass_change(users); 
   //  public static void who_pass_change(String [][] users){ 아이디,비밀번호가 맞으면 비밀번호 바꾸기}
}

출력내용) who_are_you(users);    
//  public static void who_are_you(String [][] users){  아이디를입력받아서 나라조회 }
아이디를 입력해주세요>aaa
aaa는 한국사람입니다.


출력내용)
who_pass_change(users); 
//  public static void who_pass_change(String [][] users){ 아이디,비밀번호가 맞으면 비밀번호 바꾸기}

아이디를 입력해 주세요 > bbb
비밀번호를 입력해 주세요 > 123
유저를 확인해주세요!

아이디를 입력해 주세요 > bbb
비밀번호를 입력해 주세요 > 222
변경하실 비밀번호를 입력해주세요123
정보확인 : [bbb, 123, 호주]

*/
---
---
package com.company.java008_ex;

import java.util.Scanner;

public class MethodEx010 {
	public static void search(String[][] pets) {
		// 변수
		int num = 0;
		String name = "", phone = "";
		String result = "콩이는 예방접종 예약이 되어 있어요.";
		Scanner scanner = new Scanner(System.in);
		// 입력
		System.out.println("🐶동물 이름을 입력해주세요>");
		name = scanner.next();
		// 처리
		// if(동물 이름과 사용자의 이름이 같다면) {동물의 진료 항목 출력}
		for (int i = 0; i < pets.length; i++) {
			if (name.equals(pets[i][0])) {
				result = pets[i][0] + "동물의 진료 항목> " + pets[i][2] ;
				break;
			}
		}
		
		// 출력
		/*
		  #### ① 진료 항목 조회 - 동물 이름을 입력받아 해당 동물의 진료 항목을 출력하세요. > 
		  출력예시 🐶 동물 이름을 입력해주세요 >
		  콩이 ✅ 콩이는 예방접종 예약이 되어 있어요.
		 */
		System.out.println(result);
		
	}// end search

	//////////////////////////////////////////////////////////////////
	public static void main(String[] args) {
		// 변수
		int num = -1;
		Scanner scanner = new Scanner(System.in);

		String[][] pets = { { "콩이", "010-1234-5678", "예방접종" },   // 00 01 02
							{ "초코", "010-2345-6789", "건강검진" },   // 10 11 12
							{ "보리", "010-3456-7890", "치아관리" } }; // 20 21 22

		for (;;) {
			System.out.print("🐾동물 병원 시스템 메뉴" + "\n1. 진료 항목 조회" + "\n2. 진료 항목 변경" + "\n3. 종료" + "\n👉메뉴 번호를 선택해주세요.");
			num = scanner.nextInt();
			if (num == 1) {
				System.out.println("진료 항목 조회");
				search(pets);
			} else if (num == 2) {
				System.out.println("진료 항목 변경");
				 change(pets);
			} else if (num == 3) {
				System.out.println("종료합니다.");
				break;
			}
		}
	
	}// end main
		//////////////////////////////////////////////////////////////////
	public static void change(String[][] pets) {
		//변수
		String name = "", phone = "";
		String result = "유저 정보를 확인해주세요.";
		Scanner scanner = new Scanner(System.in);
		
		//입력
		 /* #### ② 진료 항목 변경 > 
		  출력예시 - 동물 이름과 보호자 전화번호를 입력받아 정보가 맞으면 진료 항목을 변경하세요.
		  처리 if(동물이름과 보호자 전화번호가 같다면) {진료항목 변경 출력}
		  🐱 동물 이름을 입력해주세요 > 초코
		  📞 보호자 전화번호를 입력해주세요 > 010-2345-6789
		  🩺 변경하실 진료 항목을 입력해주세요 > 피부검사 
		  ✅ 예약 정보 확인: [초코, 010-2345-6789, 피부검사]*/
		System.out.println("🐶동물 이름을 입력해주세요>");
		name = scanner.next();

		System.out.println("📞보호자의 전화번호를 입력해주세요>");
		phone = scanner.next();
		//처리
		for(int i=0; i<pets.length; i++) {
		  	if(phone.equals(pets[i][1]) && name.equals(pets[i][0])) {
		  		System.out.println("변경하실 진료 항목을 입력해주세요 >");
		  		pets[i][2] = scanner.next();
		  		result = pets[i][0] + "진료 항목 변경" + pets[i][2] ; 
		  		break;
		  		}
		}
		//출력
		System.out.println(result);

	}
}// end class

/*
 * [Method010] 연습문제10) method 패키지명 : com.company.java008_ex 클래스명 : MethodEx010
 * 다음 조건을 만족하는 동물 병원 예약 시스템을 만들어보세요.
 * 
 * ■[1단계] 데이터 구성 다음과 같은 정보를 담고 있는 2차원 배열을 선언하세요:
 * 
 * String[][] pets = { {"콩이", "010-1234-5678", "예방접종"}, {"초코", "010-2345-6789",
 * "건강검진"}, {"보리", "010-3456-7890", "치아관리"} };
 * 
 * - 각 행은 한 마리의 동물에 대한 정보입니다. - [0] 동물 이름 - [1] 보호자 전화번호 - [2] 예약된 진료 항목
 * 
 * ■ [2단계] 메뉴 출력 및 선택 다음과 같은 메뉴를 **무한 반복**으로 출력하세요: public static void 메서드명
 * (파라미터) {해야할 일} public static void menu(String[][] pets) {} 🐾 동물 병원 시스템 메뉴 1.
 * 진료 항목 조회 2. 진료 항목 변경 3. 종료 👉 메뉴 번호를 선택해주세요:
 * 
 * 
 * 
 * ■ [3단계] 기능 구현
 * 
 * #### ① 진료 항목 조회 - 동물 이름을 입력받아 해당 동물의 진료 항목을 출력하세요. >
 *  출력예시 🐶 동물 이름을 입력해주세요 >
 * 콩이 ✅ 콩이는 예방접종 예약이 되어 있어요.
 * 
 * 
 * #### ② 진료 항목 변경 > 
 * 출력예시 - 동물 이름과 보호자 전화번호를 입력받아 정보가 맞으면 진료 항목을 변경하세요.
 * 
 * 🐱 동물 이름을 입력해주세요 > 초코 
 * 📞 보호자 전화번호를 입력해주세요 > 010-2345-6789 
 * 🩺 변경하실 진료 항목을
 * 입력해주세요 > 피부검사 
 * ✅ 예약 정보 확인: [초코, 010-2345-6789, 피부검사]
 * 
 * 
 * - 정보가 틀리면 다음과 같이 출력하세요:
 * 
 * ❌ 등록 정보를 확인해주세요!
 * 
 * 
 * #### ③ 종료 - 메뉴에서 3번을 선택하면 프로그램을 종료하세요.
 * 👋 시스템을 종료합니다. 안녕히 가세요!
 * 
 * 
 * 
 * 
 * ### ④ 보너스 과제 (선택)
 * 
 * - 신규 동물 등록 기능을 추가
 * - 전체 예약 목록을 출력하는 기능 
 * - 진료 항목을 랜덤으로 추천해주는 기능
 * 
 */
---
## java
---
package com.company.java008_ex;

import java.util.Scanner;

public class Repeat020_1 {
	public static void main(String[]args) {
		//변수
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("1. for문으로 출력");
		for(;;) {
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
			
		}
		
		System.out.println("2. while문으로 출력");
		while(true) {
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
			
		}

		System.out.println("3. do while문으로 출력");
		 do{
			System.out.println("문자를 입력>");
			char ch=scanner.next().charAt(0);
			if(ch == '+'||ch=='-' || ch=='*' ||ch=='/') {
				break;
			}
		}while(true);

		
		
		
	}//end main
}//end class

/* 무한반복 사용해서 풀기
*/
---
---
package com.company.java008_ex;

public class Repeat020_2 {
	public static void main(String[]args) {
		int[][] arr = new int[2][3];
		int num=101;
		
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				arr[i][j]=num++;
			}
			num=201;
		}
		
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				System.out.print(arr[i][j]+"\t");
			}
			System.out.println();
		}
		
	}//end main

}// end class
---
---
package com.company.java008_ex;

public class Repeat020_3 {
	
	public static void dog() {
		System.out.println("멍멍");
	}
	
	
	/////////////////////////////////////
	public static void main(String[]args) {
		System.out.println("강아지가 등장합니다.");
		dog();
		
	}//end main
	///////////////////////////////////
}//end class
---
---
package com.company.java008_total;

public class Test_Total004 {
	public static void main(String[]args) {
		
		//Method (이차원 배열) 복습문제 1
		char[][] arr = new char [2][3]; //00 01 02 / 10 11 12
		char ch ='A';
		
		for (char i=0; i<arr.length; i++) { //층
			for(char j=0; j<arr[i].length; j++) { //칸
				arr[i][j] = ch++;
			}
			ch = 'a';	//한 층이 끝나면 해야할 일
		}
		
		for(char i=0; i<arr.length; i++) {
			for(char j=0; j<arr[i].length; j++) {
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}
		
		//Method Overloading 복습문제 2
		//c
		
		
		
		
		
	}//end main
}// end class
---
---
package com.company.java008_total;

import java.util.Arrays;

public class Test_Total005 {
	
	public static void print(int[]arr) { for(int i=0; i<arr.length; i++) { arr[i]+=10; } }
	
	public static void main(String[] args) {
		int[] arr = { 1, 2, 3 };
		// call by value -   파라미터 ( 기본값 ) - 값을 복사해서 사용
		// public static int   print( int a ) {}
		System.out.println(print(arr[1]));  //2
		

		// call by reference -        파라미터 ( 주소값 ) -  주소를 참조해서(따라가서) 원본의 값을 바꿈
		// public static void   print(     int[] arr ) {}
		print(arr);
		System.out.println(Arrays.toString(arr)); 
	}
	
	public static int print(int i) { return i; }  //###
}

/*
6. 이차원배열
A  B  C
a  b  c


7. 메서드 오버로딩

*/
---
---
# JAVA (20250922~20250926)
---
package com.company.java009;

//1. 클래스는 부품객체
//2. 클래스는 속성(멤버변수)와 행위(멤버함수)

class A1{}
//////////////////////////////////////////////////////
public class Class001 { 
	public static void main(String[]args) { //jve - main 구동시점
		int i = 10;
		A1  a = new A1();	//인스턴스화/ 4-1 new (heap 1번지 공간빌리기, 객체생성)
							//		   4-2 A1() 초기화 	
							//		   4-3 a 1번지라는 주소 주기
		System.out.println(a); //A1@73a28541 
	}
}
///////////////////////////////////////////////////////
/* [runtime data area]
----------------------------------------------------- 
[method : 정보,   static,   final: 공용공간] 1)
	A1. class, Class001.class 2)
----------------------------------------------------- 
[heap : 동적 ]				[stack: 잠깐 빌리기]
 							i [10]
 							| main 3)
----------------------------------------------------- 

*/
---

● 2. 생성자
1. 생성자 
 - new 연산자에 의해 호출 [초기화] 담당 

2. 기본생성자 (디폴트 생성자) 
 - 모든클래스에 생성자가 반드시 존재
 - 생선자 선언을 생략하면 컴파일러가 자동을 기본생성자 추가
 - 개발자가 선언시 컴파일러가 자동생성을 취소

3. 생성자형식
class A{
    public A(){}
    public A( String name ){} // 파라미터, 알규먼트가 있는 생성자
}

1) 리턴값 없음
2) 클래스명과 동일
3) 디폴트생성자를 생성해야하는 경우 : 오버로딩, 상속

4. 초기화순서
기본값      명시적초기화    초기화블록      생성자
---
package com.company.java009;

//1. 클래스는 부품객체
//2. 클래스는 속성(멤버변수)와 행위(멤버함수)

class A1{}
//////////////////////////////////////////////////////
public class Class001 { 
	public static void main(String[]args) { //jve - main 구동시점
		int i = 10;
		A1  a = new A1();	//인스턴스화/ 4-1 new (heap 1번지 공간빌리기, 객체생성)
							//		   4-2 A1() 초기화 	
							//		   4-3 a 1번지라는 주소 주기
		System.out.println(a); //A1@73a28541 
		A1 a2 = new A1();
		A1 a3 = new A1();
		
		
	}
}
///////////////////////////////////////////////////////
/* [runtime data area]
----------------------------------------------------- 
[method : 정보,   static,   final: 공용공간] 1)
	A1. class, Class001.class 2)				클래싀      :  설계도
----------------------------------------------------- 
[heap : 동적 ]				[stack: 잠깐 빌리기] 	객체        : a, a2, a3
 3번지 : A1{}		  ←		a3  [  3번지  ]	  인스턴스(각각)  : a1, a2, a3
 2번지 : A1{}		  ←		a2  [  2번지  ]	
 1번지 : A1{}		  ←		a1  [  1번지  ]		 		
 							  i [10]
 							| main 3)
----------------------------------------------------- 

*/
---
---
package com.company.java009;

//1. 클래스는 부품객체
//2. 클래스는 속성(멤버변수)과 행위(멤버함수)
class Animal002{ //Animal = 부품
	//속성 - 멤버변수
	String name; 
	int		age;
	//행위 - 멤버함수
	void show() {  System.out.println(this.name + "\t" + this.age);}
}//end class Animal002
///////////////////////////////////////////////////////////////////
public class Class002 {
	public static void main(String[]args) {
		Animal002 a1 = new Animal002();  
		//1. new (1번지, 객체생성) 2. Animal002()초기화 3/ a1 주소 = 1번
		a1.name = "dog"; a1.age=3; a1.show();
		Animal002 a2 = new Animal002(); 
		a2.name = "alpha";a2.age=7;  a2.show();
	}//end main
}//end class
///////////////////////////////////////////////////////////////////
/*
--------------------  [runtime data area]
[method: 정보, static, final : 공용정보] 
Animal002.class , Class002.class(public이 붙어있기 때문에 우선순위가 올라감.)
								클래스(설계도)  → (인스턴스화) 객체(Object/ a1,a2)
-----------------------------------							→ 인스턴스(dog, alpha) 
[heap: 동적]						 |	[stack: 잠깐빌리기]
19번째 : 2번지(new-alpha, age=7)	← a2 [2번지]	a2.show() {this.name (2번지의 name) }				  							 
18번째 : 1번지(new-null, age=0)	← a2 [2번지]					  
17번째 : 1번지(new-dog, age=3)	← a1 [1번지]	 a1.show(){  this.name (1번지의 name)  }		
15번째 : 1번지(new-null, age=0)	← a1 [1번지]										
									[main]
-----------------------------------
*/
---
---
package com.company.java009;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Car31 extends Object{}// 생성자	Car31() - 컴파일러가 기본생성자를 자동생성
class Car32 extends Object{ 
	String color;
	// alt + shift + s ★ 밑에서 3번째( 2,3,4 ) 
	public Car32() {super();} // ## Object()
	public Car32(String color) {super();this.color = color;}
	@Override public String toString() {return "Car32 [color=" + color + "]";}
}
//class Car33 extends Car32{} 
//////////////////////////////////////////////////////////////
public class Ckass003_constructor {
	public static void main(String[]args) {
		Car31 car1 = new Car31(); //1. new (메모리빌리고, 객체생성)  2. Car31()	초기화 	3. car1 번지
		System.out.println(car1); //Car31@5594a1b5 
		
		Car32 car2 = new Car32(); 
		System.out.println(car2 + "\t" + car2.color);//Car32@6a5fc7f7 → Car32 [color=null]	null
		
		Car32 car3 = new Car32("red");
		System.out.println(car3 + "\t" + car3.color);//				    Car32 [color=red]	red
	}//end main
}//end class
//////////////////////////////////////////////////////////////
/* Q1. 클래스란? [ 설계도 ]       			   예) [Car31.class , Car32.class, Class003.class   ] 
 * Q2. 객체?    [ 실제(new)로만든 장난감(들)   ] 예) [car1  , car2 , car3    ]
 * Q3. 인스턴스? [ 각각의 장난감들             ]	예) [ car1  , car2 (null) , car3(red)    ]  
 */

---
---
package com.company.java009;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
/*	Object									2) Object	{    }	   3)		
      ↑ 
    Product [name=null, price=0]        	1) Product()super();}  4)   Product p1 = new Product();
 */
class Product{  //상속받을게 Object, Object 생갹가능 
	String name;
	int price;
	public Product() {super();}
	public Product(String name, int price) {super();this.name = name;this.price = price;}
	@Override public String toString() {return "Product [name=" + name + ", price=" + price + "]";}
}
	
/////////////////////////////////////////////////////////////////	
public class Class004 {
	public static void main(String[] args) {
		Product p1 = new Product();
		System.out.println(p1);
	}
}
/////////////////////////////////////////////////////////////////	
/*
-----------------------------------[ runtime data area ]
[method: 정보, static, finla : 공용정보] 	Product.class , Class004.class
--------------------------------------------------------
[heap: 동적]						 	|       [stack : 잠깐빌리기] 	Product p1 = new Product();
					Object();		
1번지{ name=null, price=0}				←   p1[1번지]
									|	 	main
--------------------------------------------------------

*/
---
---
package com.company.java009_ex;

	//1. 클래스는 부품객체
	//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Student001 {
	//멤버변수
	String name;
	int no, kor, eng, math;
	//멤버함수
	void info() {
		System.out.println("이름: " + this.name);
		System.out.println("총점: " + (this.kor + this.eng + this.math) );
		System.out.printf("평균: %.2f ", (this.kor + this.eng + this.math)/3.0);
	}
}
////////////////////////////////////////////////////////////////
public class ClassEx001 {
	public static void main(String[] args) {
		Student001 s1 = new Student001();
		// 1) new (1번지-객체생성) 2) Student001()초기값 3) s1 주소 
		s1.name = "first";
		s1.no = 11;
		s1.kor = 100;
		s1.eng = 100;
		s1.math = 99;
		s1.info();

	}// end main
}// end class
////////////////////////////////////////////////////////////////
/* ■ Student001	  s1 = new Student001();
------------------------------------[ run time ]
[mtehod: 정보, static, final : 공용정보 ]
	Student001/class , ClassEx001.class	1)
-------------------------------------------------------
[heap: 동적] 							|[stack : 잠깐빌리기]
											s1.info(){}
1번지	{name=first,no=11, kor=100, eng=100, math=99} ← s1[1번지]
													   | main 2
-------------------------------------------------------

*/


/*
 * 연습문제1) class 패키지명 : com.company.java009_ex 클래스명 : ClassEx001 class
 * Student001{ 멤버변수 : String name; int no, kor, eng, math; 멤버함수 : void info() }
 * 
 * public class ClassEx001{ public static void main(String[] args) { Student001
 * s1 = new Student003(); s1.name="first"; s1.no=11; s1.kor=100; s1.eng=100;
 * s1.math=99; s1.info(); } } 출력내용 : 이름: first 총점 : 299 평균 : 99.67
 * 
 */
---
---
package com.company.java009_ex;

import java.util.Scanner;

class MyPrice001 {
	//상태 - 멤버변수
	String name;
	int price;
	//행위 - 멤버함수
	void input() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("상품이름 입력>");
		 this.name = scanner.next();
		System.out.println("상품가격 입력>");
		this.price = scanner.nextInt();
	}

	void show() {
		System.out.println("상품정보 입니다.");
		System.out.printf("상품이름: %s / 상품가격: %d" , this.name, this.price);
	}
}

/////////////////////////////////////////////////////////////////
public class ClassEx002 {
	public static void main(String[] args) {
		MyPrice001 p1 = new MyPrice001();
		p1.input();
		p1.show();

	}
}
/////////////////////////////////////////////////////////////////
/*■MyPrice001	p1 = new MyPrice001();
------------------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
MyPrice001.class , ClassEx002.class						클래스(설계도)
-----------------------------------------------------	객체(p1)  인스턴스(p1.name="apple" / p1.price=1500)
[heap: 동적] 							|[stack: 잠깐빌리기]
										   p1 input(){   }
1번지								       p1 input(){   }
{	name=null, price=0, input(), show()} ← p1[1번지]
										| main
-----------------------------------------------------

*/
/*
 * 연습문제2) class 패키지명 : com.company.java009_ex 클래스명 : ClassEx002 class
 * MyPrice001{ 멤버변수 : String name; int price; 멤버함수 : void input() 입력받는 기능 / void
 * show() 출력해주는 기능 } public class ClassEx002{ public static void main(String[]
 * args) { MyPrice001 p1 = new MyPrice001(); p1.input(); p1.show(); } } 출력내용 :
 * 상품이름 입력 > apple 상품가격 입력 > 1500
 * 
 * 상품정보입니다 상품이름 : apple / 상품가격 : 1500
 */
---
---
package com.company.java009_ex;
//1. 클래스는 부품객체

//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Coffee {
	String name;
	int num, price;

	public Coffee() {
		super();
		this.name = "아메리카노";
		this.num = 1;
		this.price = 2000;
	}

	public Coffee(String name, int num, int price) {
		super();
		this.name = name;
		this.num = num;
		this.price = price;
	}

	@Override
	public String toString() {
		return "Coffee [name=" + name + " , num=" + num + ", price=" + price + ", ]";
	}

	// 멤버함수 : void(){} 커피정보출력
	void show() {
		System.out.println("==========커피");
		System.out.println("커피명 : " + this.name);
		System.out.println("커피잔수 : " + this.num);
		System.out.println("커피가격 : " + this.price * this.num);
	}
}

//////////////////////////////////////////////////////////////
public class ClassEx003 {
	public static void main(String[] args) {
		Coffee a1 = new Coffee("까페라떼", 2, 4000);
		a1.show();
		Coffee a2 = new Coffee();
		a2.show();

	}// end main
}// end class
//////////////////////////////////////////////////////////////
/*
 * 연습문제3) class 패키지명 : com.company.java009_ex 클래스명 : ClassEx003 -- 생성자 작성하시오.
 * class Coffee{ 멤버변수 : String name; int price, num; 멤버함수 : void show(){}
 * //커피정보출력 } public class Class003 { public static void main(String[] args) {
 * Coffee a1 = new Coffee("까페라떼" ,2 , 4000); a1.show(); Coffeea2 = new Coffee();
 * a2.show(); } } 출력내용 : =====커피 커피명 : 까페라떼 커피잔수 : 2 커피가격 : 8000 =====커피 커피명 :
 * 아메리카노 커피잔수 : 1 커피가격 : 2000
 */
---
---
package com.company.java009_ex;
//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
import java.util.Scanner;

class TV{
	String channel; int volume;
	void input(){
		Scanner scanner = new Scanner(System.in);
		System.out.println("channel입력>"); this.channel=scanner.next();
		System.out.println("volune 입력>"); this.volume=scanner.nextInt();
	}
	void show(){System.out.println(this.channel + "\t" + this.volume);}
	
	public TV() {super();}
	public TV(String channel, int volume) {super();this.channel = channel;this.volume = volume;}
	@Override public String toString() {return "TV [channel=" + channel + ", volume=" + volume + "]";}
}
	


//////////////////////////////////////////////////////
public class ClassEx004 {
	public static void main(String[]args) {
		   TV  t1 = new TV("JDBC" , 8);
		   t1.show(); 
		   TV  t2 = new TV();
		   t2.input();  
		   t2.show();

	}
}
//////////////////////////////////////////////////////
/*연습문제4)  class
패키지명 : com.company.java009_ex
클래스명 :  ClassEx004
-- 생성자 작성하시오.
class TV{
//상태-멤버변수  : 채널/볼륨 String channel; int volume;   
//행위-멤버함수  : 채널, 볼륨 입력: input() / 출력 : show()
}
public class ClassEx004 {
    public static void main(String[] args) {
   TV  t1 = new TV("JDBC" , 8);
   t1.show(); 
   TV  t2 = new TV();
   t2.input();  
   t2.show();
   }
}
출력내용 :
JDBC   8

* channel입력>youtube
* volume 입력>10
youtube   10
*/
---
---
package com.company.java009_ex;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
class Card{
	int cardNum; boolean  isMembership;
	void input() {}
	void show () {}
	
	public Card() {super();}
	public Card(int cardNum, boolean isMembership) {super();this.cardNum = cardNum;this.isMembership = isMembership;}
	@Override public String toString() {return "Card [cardNum=" + cardNum + ", isMembership=" + isMembership + "]";}
	//####
}//end class Card





//////////////////////////////////////////////////////
public class ClassEx005 {
	public static void main(String[]args) {
		   Card  c1= new Card(); 
		   System.out.println(c1);  //Card [cardNum=0, isMembership=false]
	}//end main
}//end class
//////////////////////////////////////////////////////
/*연습문제5)  class
패키지명 : com.company.java009_ex
클래스명 :  ClassEx005
-- 생성자 작성하시오.
class Card{
   //상태-멤버변수  : 채널/볼륨 int cardNum; boolean  isMembership;   
   //행위-멤버함수  : 채널, 볼륨 입력: input() / 출력 : show()
}
public class ClassEx005{
   public static void main(String[] args) {
   Card  c1= new Card(); 
   System.out.println(c1);  
   }
}

출력내용 :
Card[cardNum=0, isMembership=false]
*/
---
---
package com.company.java009_ex;

import java.util.Scanner;
//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Score{
	String stdid; int kor,eng,math,total,avg;  
	void total() {this.total = this.kor + this.eng + this.math;}
	void avg  () {this.avg = this.total/3;}
	void info () {
			this.total(); this.avg();
			System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\n"
					, "학번", "KOR", "ENG", "MATH", "TOTAL", "AVG");
			System.out.printf("%-5s\t%-5d\t%-5d\t%-5d\t%-5d\t%-5d\n"
					, stdid, kor, eng, math, total, avg);
	}
	public Score() {super();	}
	public Score(String stdid, int kor, int eng, int math) {
		super(); this.stdid = stdid; this.kor = kor; this.eng = eng; this.math = math;}
	
	
	

	
	
}//end class Score


////////////////////////////////////////////////////////////////////
public class ClassEx006 {
	public static void main(String[]args) {
		   Score  s1= new Score("std1234" , 100, 100 , 99 ); 
		   s1.info();	
	}//end main 
}//end class 

////////////////////////////////////////////////////////////////////
/*연습문제6)  class
패키지명 : com.company.java009_ex
클래스명 :  ClassEx006
-- 생성자 작성하시오.
class Score{
   //상태-멤버변수  :  String stdid; int kor,eng,math,total,avg;   
   //행위-멤버함수  :  void total() 총점구해주기
   //               void avg()  평균구하기
   //               void info()   학생정보출력  ※힌트2)  info(){    total();  avg();     }  다른메서드에서 메서드 사용가능  
   //※ 힌트1) 생성자 :Score() / Score(stdid, kor, eng, math)
}
public class ClassEx006{
   public static void main(String[] args) {
   Score  s1= new Score("std1234" , 100, 100 , 99 ); 
   s1.info();
   }
}

출력내용 :
학번   kor   eng   math   total   avg
std1234   100   100   99   299   99.67

*/
---
---
package com.company.java009_ex;

import java.util.Scanner;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
class Calc{
	int num1, num2;  char op;  double result;
	void input() {
		Scanner scanner = new Scanner(System.in);
		System.out.print("\n\n숫자1 입력 >" ); this.num1 = scanner.nextInt();
		System.out.print("숫자2 입력 >" ); this.num2 =scanner.nextInt();
		System.out.print("연산자 입력 >"); this.op = scanner.next().charAt(0);
	}
	void opcalc() {
		 if(this.op=='+') {this.result = this.num1 + this.num2;}
	else if(this.op=='-') {this.result = this.num1 - this.num2;}
	else if(this.op=='*') {this.result = this.num1 * this.num2;}
	else if(this.op=='/') {this.result = this.num1 / (double)this.num2;}
	}
	void show() {
		this.opcalc();
		if(this.op== '/') {
			System.out.printf("%d %c %d = %.2f" , this.num1, this.op, this.num2 , this.result);
		}else {
			System.out.printf("%d %c %d = %.2f" , this.num1, this.op, this.num2 , this.result);
			}
		
	}
	
	public Calc() {super();}
	public Calc(int num1, int num2, char op) {
		super(); this.num1 = num1; this.num2 = num2; this.op = op;}
	
	
	
}//end class Calc
////////////////////////////////////////////////////////////////
public class ClassEx007 {
	public static void main(String[]args) {
		   Calc  c1= new Calc(10,3,'+');  
		   c1.show(); //10+3=3
		   
		   Calc  c2= new Calc();  
		   c2.input();   
		   c2.show(); 

	}//end main
}//end class
////////////////////////////////////////////////////////////////
/*연습문제7)  class
패키지명 : com.company.java009_ex
클래스명 :  ClassEx007
-- 생성자 작성하시오.
class Calc{
   //상태-멤버변수  :  int num1, num2;  char op;  double result;
   //행위-멤버함수  :  void input()   입력받기
   //               void opcalc() +더하기계산, -라면 -계산  , *라면 *계산 , /라면 /계산 
   //                      void show()    연산출력   
}
public class ClassEx007{
   public static void main(String[] args) {
   Calc  c1= new Calc(10,3,'+');  
   c1.show();
   
   Calc  c2= new Calc();  
   c2.input();   
   c2.show(); 
    
   }
}

출력내용)
10+3=3

숫자1> 10
숫자2> 3
연산자> /
10/3=3.33
*/
---
---
package com.company.java009_ex;

import java.util.Scanner;
//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class AnimalCharacter {
    // 상태 - 멤버변수  
    String name;  
    String type;  // 육식 or 초식  
    int baseSpeed;  
    int specialBoost;
    double finalSpeed;
	public AnimalCharacter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AnimalCharacter(String name, String type, int baseSpeed, int specialBoost) {
		super();
		this.name = name;
		this.type = type;
		this.baseSpeed = baseSpeed;
		this.specialBoost = specialBoost;
	}
	// 행위 - 멤버함수  
    void input() {
    	Scanner scanner = new Scanner(System.in);
    	System.out.println("이름 입력 >"); this.name = scanner.next();
    	System.out.println("동물의 유형 입력 >"); this.type = scanner.next();
    	System.out.println("기본속도 입력 >"); this.baseSpeed = scanner.nextInt();
    	System.out.println("특수능력치 입력 >"); this.specialBoost = scanner.nextInt();
    }  //사용자 입력 받기  
    void calculateSpeed() {
    	 if(this.type.equals("육식")) {this.finalSpeed=this.baseSpeed+this.specialBoost*0.2;}
    else if(this.type.equals("초식")) {this.finalSpeed=this.baseSpeed+this.specialBoost*0.1;}
    }
	void show() {
		calculateSpeed();
		System.out.println("동물캐릭터" + this.name);
		System.out.println("타입" + this.type);
		System.out.println("최종속도" + this.finalSpeed);
	} 
    
    
    
	
}//end class AnimalCharacter



///////////////////////////////////////////////////////////////
public class ClassEx008 {
	public static void main(String[]args) {
        AnimalCharacter a1 = new AnimalCharacter("치타", "육식", 100, 30);
        a1.show();

        AnimalCharacter a2 = new AnimalCharacter();
        a2.input();
        a2.show();

	}//end main
}//end class
///////////////////////////////////////////////////////////////
/*패키지명: com.company.java009_ex 
클래스명: ClassEx008 
주제: 동물 캐릭터를 생성하고, 능력치를 계산하여 출력하는 프로그램

■설명
AnimalCharacter 클래스를 만들어서 동물 이름, 타입(육식/초식), 기본 속도, 특수 능력치를 입력받고, 최종 속도를 계산해 출력한다. 
특수 능력치는 타입에 따라 다르게 적용된다.
육식 동물: 특수 능력치가 속도에 +20%
초식 동물: 특수 능력치가 속도에 +10%

-- 생성자 작성하시오.

class AnimalCharacter {
    // 상태 - 멤버변수  
    // String name;  
    // String type;  // 육식 or 초식  
    // int baseSpeed;  
    // int specialBoost;  
    // double finalSpeed;

    // 행위 - 멤버함수  
    // void input() : 사용자 입력 받기  
    // void calculateSpeed() : 타입에 따라 속도 계산  
    // void show() : 캐릭터 정보 출력
}

public class ClassEx007 {
    public static void main(String[] args) {
        AnimalCharacter a1 = new AnimalCharacter("치타", "육식", 100, 30);
        a1.show();

        AnimalCharacter a2 = new AnimalCharacter();
        a2.input();
        a2.show();
    }
}



■ 출력내용 
🦁 동물 캐릭터: 치타
🌿 타입: 육식
🚀 최종 속도: 106.00

동물 이름> 토끼
동물 타입(육식/초식)> 초식
기본 속도> 60
특수 능력치> 40
🦁 동물 캐릭터: 토끼
🌿 타입: 초식
🚀 최종 속도: 64.00
*/
---
## JAVA
 package com.company.java010;

//1.final	변경하지마
// 클래스는 부품객체
// 클래스는 상태(멤버변수)와                    행위(멤버함수)
// 상속 X     [상수: 변하지 않는 값]           [override 자식한테 내꺼쓰지마!] X 
final class FinalEx extends Object{
  final	static String gaecheon = "10-3";  //클래스변수 - method area - new X - 생성자 - this X > now  
  String name;  //인스턴스변수 - heap area - new O - 생성자O - this O > 메모리 각각
  final void show() {	System.out.println( FinalEx.gaecheon + "\t" + name );}
}
/*
class FinalSon extends FinalEx{ 
	//@Override void show() { super.show();  }
	// 오버라이드 - 상속시 자식클래스에서 부모의 클래스를 재수정
}
*/
/////////////////////////////////////////////////////////
public class Final001 {
	public static void main(String[]args) {
		//FinalEx.gaecheon = "10-1";	//The final field FinalEx.gaecheon cannot be assigned
		FinalEx saram = new FinalEx();
		saram.name = "SH";
		saram.show(); 
	}//end main
}//end class
/////////////////////////////////////////////////////////
---
---
package com.company.java010;

//public(아무데서나) > protected(extends) > default (같은폴더내에서만) > private(클래스안에서만)


class UserSon1 extends UserInfo{
	public void show() {
		System.out.println("홍길동 아버지 이름 > " + super.name); //자식 - public
		System.out.println("홍길동 아버지 금고번호 > " + super.safeCode); // 자식 - protected
		System.out.println("홍길동 아버지 집 > " + super.house); //자식 - package (같은폴더에서)
	  //System.out.println("부 IQ > " + super.IQ);
        System.out.println("홍길동 아버지 IQ > " + super.getIQ());
		


	}
}
////////////////////////////////////////////////////////////////
public class Modifier001 {
	public static void main(String[]args) { 
		System.out.println("\n\n1. 홍길동 아버지 정보");  //본인 : public> protected> default > private(X)
		UserInfo user = new UserInfo();
		user.name= "홍상직";	//public 아무데서나 접근 (홍길동씨 아버지)
		user.safeCode= "1234";	//protected 본인꺼 접근가능
		user.house= "전라남도 장성군";
      //user.IQ= "148";	//iQ cannot be resolved or is not a field
	}
}
////////////////////////////////////////////////////////////////

---
---
package com.company.java010;
// 1. 클래스는 부품객체
// 2. 클래스는 상태(멤버변수)와 행위(멤버함수)

class Farm{
	//상태 - 멤버변수
	String name;	// 인스턴스변수 - heap area - new 0 - 생성자 / cat(1번지).name , cat(1번지).name
	int	   age; 	// 인스턴스변수 - heap area - new 0 - 생성자 / dog(2번지).name , dog(2번지).name
	static String FarmName="(주) 동물농장"; // 클래스변수 - Farm.FarmName(=클래스명.변수명)    ( 명시적초기화 )
	static int	  FarmNum;				  // 클래스변수 - method area - new X - 생성자X 
	static String FarmBoss;
	static{ FarmNum=2; FarmBoss="신동엽";    }  //초기화블록(=몰아서 초기화를 잡음.)
	
	//행위 - 멤버함수
	static void num_plus() {  FarmNum++;   /*tnis.age++;*/ } // 클래스메서드(static 붙은 곳에는 this. 사용 불가)
	
	void show() { // 인스턴스메서드
		System.out.println("\n\n:::::::::::::::::");
		System.out.println("::이름 : " + this.name);
		System.out.println("::나이 : " + this.age);
		System.out.println("::인원 : " + Farm.FarmNum);

	}
}
////////////////////////////////////////////////////////////////////////
public class Static001 {
	public static void main(String[]args) {
		System.out.println("\n\n0. 동물농장");
		System.out.println("::회사이름> : " + Farm.FarmName);
		System.out.println("::회사사장> : " + Farm.FarmBoss);
		System.out.println("::회사인원> : " + Farm.FarmNum);
		
		System.out.println("\n\n1. 동물농장식구-this-각각");
		//		1) new : 메모리빌리기, 객체생성 2) Farm() 초기화 3) cat 번지
		Farm cat = new Farm(); 
		cat.name = "sally"; cat.age=3; cat.show(); // 갖고 놀기 사용하기
		Farm dog = new Farm();
		dog.name = "alpha"; dog.age=7; Farm.num_plus();/*dog.num_plus();*/ dog.show(); 
	}//end main
}//end class
////////////////////////////////////////////////////////////////////////
/* 클래스 변수
 초기화순서 :    기본값    	             명시적초기화	               초기화블록                 생성자
 * FarmNum	    0					   null						(O) 2					 X
 * FarmBoss    null 				   null					 (O) 신동엽					 X
 * FarmName    null					(주)동물농장				 (X) (주)동물농장      		 X
 ////////////////////////////////////////////////////////////////////////////////////////////////////
   인스턴스 변수
 * cat		name=null, age=0     (X)name=null, age=0       (X)name=null, age=0      name=null, age=0 
 * dog		name=null, age=0     (X)name=null, age=0       (X)name=null, age=0      name=null, age=0 

------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
    Farm.class, Static001.class     	★ 클래스 : 설계도
    FarmNum=2;    FarmBoss="신동엽";     FarmName="(주) 동물농장";
----------------------------------------------------------------
[heap: 동적]                  | [stack : 잠깐빌리기] 
2번지{name=null, age=0}    ←    dog[2번지]
1번지{name=null, age=0}    ←    cat[1번지]
					         | main 
----------------------------------------------------------------
*/
---
---
package com.company.java010;

public class UserInfo{
	public    String name;
	protected String safeCode;  //자식
	          String house;
    private   int    IQ; 
    
    public int getIQ() {return IQ;}
    public void setIQ(int iQ) {this.IQ = iQ;} 
}
---
---
package com.company.java010_ex;
	//1. 인스턴스변수, 클래스변수, 지역변수 를 구분하시오.  
	//2. 인스턴스메서드, 클래스메서드 구분하시오.
	//3. 오류나는 이유는?
	//4. runtime data area 위치영역 그림그리기

class Sawon3{ 
	// 클래스는 부품객체
    int pay      =10000;      //인스턴스변수 - heap area - new O - 생성자
    static int su=10;         //클래스변수   - method area - new X - 생성자 X > 바로사용 
  //static int basicpay=pay;  //클래스변수   - method area - new X - 생성자 X > 바로사용 
    						  //static - this 사용불가  / static - 당장 사용 , this - new하고 난 다음에 사용.
    static int basicpay2;     //클래스변수  - method area - new X - 생성자 X > 바로사용 
    
    // 클래스는 상태(멤버변수)와 행위(멤버함수)
    // 클래스메서드 - method area - new X - 생성자 X - Sawon3.showSu(); > 바로사용
    public static void showSu() {   System.out.println(su);  }    
    // 클래스메서드 - method area - new X - 생성자 X - Sawon3.showPay(); > 바로사용
    // * static은 this 사용 불가 / this.(각각) new 사용
    // public static void showPay() {   System.out.println(this.pay);  }    
    
    //인스턴스메서드 - heap area 0 new O - 생성자
    public  void  showAll001() {   
       System.out.println(su);  // static 사용가능 - new 전에 메모리상에 static 올라가 있음.
       System.out.println(this.pay);  //this 사용가능 
    } 
    // 클래스메서드 - method area - new X - 생성자 X - Sawon3.showAll002()
    public static  void  showAll002() {   
       // showAll001();   			 * static은 this사용(인스턴스) 불가 
      // System.out.println(this.pay);
    } 
} 



///////////////////////////////////////////////////////////////
public class MemberVarEx001 {
	public static void main(String[]args) {//args 지역변수
			   Sawon3   sola = new Sawon3();  //1) new 번지, 객체생성 2) 생성자초기화 3) sola 번지(지역변수)
			   sola.showAll001();
			  
			
	}//end main
}//end class
///////////////////////////////////////////////////////////////
/*_ex
클래스명 :  MemberVarEx001
-- class Sawon3작성해주세요 
1. 인스턴스변수, 클래스변수, 지역변수 를 구분하시오.
2. 인스턴스메서드, 클래스메서드 구분하시오.
3. 오류나는 이유는?
class Sawon3{ 
    int pay      =10000;    
    static int su=10;     
    static int basicpay=pay;    
    static int basicpay2;    
    
    public static void showSu() {   System.out.println(su);  }          
    public static void showPay() {   System.out.println(this.pay);  }    
  
    public  void  showAll001() {   
       System.out.println(su);  
       System.out.println(this.pay);  
    } 
    public static  void  showAll002() {   
        showAll001();    
       System.out.println(this.pay);
    } 
} 
public class MemberVarEx001{
  public static void main(String[] args) {
   Sawon3   sola = new Sawon3();  
   sola.showAll001();
  }
}
*/


/*
------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
 > Sawon3.class / MemberVarEx001.class	1)
 > static : Sawon3.su , Sawon3.basicpay2 , Sawon3.showSu(), Sawon3.showAll002()
------------------------------------
[heap: 동적]          		| [stack : 잠깐빌리기]
							  showAll001();
1번지(pay=0, showAll001() ) ←  sola[1번지] 42번째줄
					   		| main
------------------------------------
*/
---
---
package com.company.java010_ex;
	//- 문제 1. 다음 코드에서 인스턴스변수, 클래스변수, 지역변수를 구분하시오.  ( 보관되는 영역도 추가 )
	//- 문제 2. 인스턴스메서드와 클래스메서드를 구분하시오.  
	//- 문제 3. 오류가 발생하는 이유를 설명하시오. 
	//- 문제 4. runtime data area 위치영역 그림그리기

class Student {
    String name = "홍길동";  //인스턴스변수 - heap area - new O - 생성자 O - this(각각)
    int kor = 90;          //인스턴스변수 - heap area - new O - 생성자 O - this(각각)       
    int eng = 85;          //인스턴스변수 - heap area - new O - 생성자 O - this(각각)
    
    static int studentCount = 0;   //클래스변수 - method area - new X - 생성자 X - static(new) 
 // static int total = this.kor + this.eng;  //클래스변수  - method area - new X - 생성자 X - static(new)
    							   // static 은 인스턴스(this) 사용불가
    static int maxScore = 100;     //클래스변수 - method area - new X - 생성자 X - static(new)

    public Student() {	//생성자
        studentCount++; //static 사용가능            
    }

    public int getTotalScore() { //인스턴스메서드 
        return kor + eng;        //  
    }

    public static void showStudentCount() {	//클래스메서드 - method area - new X - 생성자 X - static(new)
        System.out.println("전체 학생 수: " + studentCount);  
    }

   public static void showName() {	//클래스메서드 - - method area - new X - 생성자 X - static(new)
  //     System.out.println(name);  //* static은 인스턴스(this) 사용불가
   }

    public void showInfo() { //인스턴스메서드 - heap area - new O - 생성자 O - this(각각)
        System.out.println("이름: " + this.name);            
        System.out.println("총점: " +this. getTotalScore());    
    }
}




/////////////////////////////////////////////////////////////
public class MemberVarEx002 {
    public static void main(String[] args) { //지역변수
        Student s1 = new Student();    //지역변수 
        Student s2 = new Student();    //지역변수

        s1.showInfo();                  
        Student.showStudentCount();    
    }//end main
}//end class





/*
------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
Student.studentCount, Student.maxScore, Student.showStudentCount(), Student.showName
------------------------------------
[heap: 동적]            | [stack : 잠깐빌리기]
2번지 
{name=null, kor=90, eng=85 /   ←  s2[2번지]
getTotalScore(), showInfo()} 


1번지 
{name=null, kor=90, eng=85 /   ←  s1[1번지]
getTotalScore(), showInfo()} 
------------------------------------
*/


/*초기화  :        기본값     명시적초기화    초기화블록    생성자   
studentCount		0        =0            x         O
masScore            0        =100          x         O
s1{name, kor, eng} {name=null, kor=0, eng=0} {name=홍, kor=90, eng=85}  xname=홍, kor=90, eng=85  
s2{name, kor, eng} {name=null, kor=0, eng=0} {name=홍, kor=90, eng=85}  xname=홍, kor=90, eng=85  
*/

/////////////////////////////////////////////////////////////

/*
패키지명 : com.company.java010_ex
클래스명 : MemberVarEx002
-- class Student 작성해주세요
*/
---
---
package com.company.java010_ex;
//Q1. 자바의 접근자를 넓은범위에서 좁은범위로 적으시오.
//public > protected(extends) > default(같은폴더) > private(클래스안에서만)

class ToyBox{
	public  String sharedToy = "블록"; 	//누구나 꺼내서 놀 수 있어요.
	private String secretToy = "로봇";	//다른 친구들이 이 장난감을 못 보게 하려면
	        String familyToy = "퍼즐";	//같은 집(package, 폴더)에 살고 있어서 형이 퍼즐을 볼 수 있게 하려면
}

//////////////////////////////////////////////////////////////////////
public class Modifier001_Friend {
	public static void main(String[]args) {
        ToyBox box = new ToyBox();
        System.out.println(box.sharedToy); //O	블록
    //  System.out.println(box.secretToy); //X
        System.out.println(box.familyToy); //O	퍼즐
	}//end main
}//end class
//////////////////////////////////////////////////////////////////////

/*연습문제1)   
패키지명 : com.company.java010_ex
클래스명 :  ModifierEx001


Q1.   자바의 접근자를 넓은범위에서 좁은범위로 적으시오.
      public > protected > default > private
Q2.   public class ToyBox 를 다은 문제 단계별을 이용해서 작성하시오.
	  
Q3.   public class Modifier001_Friend 를  작성하고 문제를 풀으시오.


[문제 1]
길동이는 장난감 상자에 블록을 넣었어요. 이 블록은 누구나 꺼내서 놀 수 있어요.  
자바 코드에서 이 장난감은 어떤 modifier로 선언되어야 할까요?

public class ToyBox {
    _____ String sharedToy = "블록";
}


[문제 2]
길동이는 로봇 장난감을 혼자만 갖고 놀고 싶어요.  
다른 친구들이 이 장난감을 못 보게 하려면 어떤 modifier를 써야 할까요?

public class ToyBox {
    _____ String secretToy = "로봇";
}

[문제 3]
길동이의 형이 같은 집에 살고 있어서 퍼즐 장난감을 같이 쓰고 싶어요.  
형이 퍼즐을 볼 수 있게 하려면 어떤 modifier를 써야 할까요?

public class ToyBox {
    _____ String familyToy = "퍼즐";
}

[문제 4]
다음은 친구가 장난감 상자를 열어보는 코드입니다.  
친구가 볼 수 있는 장난감은 무엇일까요?

public class Friend {
    public static void main(String[] args) {
        ToyBox box = new ToyBox();
        System.out.println(box.sharedToy);
        System.out.println(box.secretToy);
        System.out.println(box.familyToy);
    }
}

*/
---
---
package com.company.java010_ex;

import com.company.java010.UserInfo;

class UserSon2 extends UserInfo{
	public void show() {
		System.out.println("홍길동 아버지 이름    > " + super.name); //자식 - public
		System.out.println("홍길동 아버지 금고번호 > " + super.safeCode); // 자식 - protected
	  //System.out.println("홍길동 아버지 집 > " + super.house); //자식 - package (같은폴더에서)
	  //System.out.println("부 IQ > " + super.IQ);
        System.out.println("부 IQ > " + super.getIQ());
	}//■Q1. super.house를 못쓰는 이유는  UserInfo 클래스의 house는 접근자가 package (java010폴던에서만)
	//     UserSon2클래스는 (java010_ex 폴더안에 있음.)
}
////////////////////////////////////////////////////////////////
public class Modifier002 {
	public static void main(String[]args) { 
		System.out.println("\n\n1. 홍길동 아버지 정보");  //본인 : public> protected> default > private(X)
		UserInfo user = new UserInfo();
		user.name= "홍상직";	//public 아무데서나 접근 (홍길동씨 아버지)
	 //user.safeCode= "1234";	//protected 본인꺼 접근가능 ■ Q2. 오류이유? extends 상속받은적이 없음. 
	 //user.house= "전라남도 장성군";  ■ Q3. 오류이유? 같은 폴더아님 - java010_ex 폴더안에 있음.
     //user.iO;	//iO cannot be resolved or is not a field
		user.setIQ(148);
		System.out.println(user.getIQ());
	}
}
////////////////////////////////////////////////////////////////
---
---
package com.company.java010_ex;
class Area1{
	static double pi=3.141592;

	static double rect(int a, int b){ return a*b ;}
	static double triangle(int a, int b){return a*b*0.5;}

}//end class Area1



////////////////////////////////////////////////////////////
public class StaticEx001 {
	public static void main(String[]args) {
		   System.out.println("원의 면적    : " + 10 * 10 * Area1.pi);   // 클래스명.변수  , 클래스 변수    ,method , (static)
		   //public static 메서드명 (파라미터){해야할일}
		   //public static double rect(int a, int b){return a*b;}
		   System.out.println("사각형의 면적 : " + Area1.rect(10, 5));    // 클래스명.메서드 , 클래스 메서드  ,method , (static)
		   //public static 메서드명 (파라미터){해야할일}
		   //public static double triangle(int a, int b){return a*b*0.5;}
		   System.out.println("삼각형의 면적 : " + Area1.triangle(10, 5));// 클래스명.메서드 , 클래스 메서드  ,method , (static)
	}//end main
}//end class
////////////////////////////////////////////////////////////

/*연습문제1)  static
패키지명 : com.company.java010_ex
클래스명 :  StaticEx001
-- class Area1 작성해주세요   ※ pi값은 3.14159
public class StaticEx001{
  public static void main(String[] args) {  
   System.out.println("원의 면적    : " + 10 * 10 * Area1.pi);
   System.out.println("사각형의 면적 : " + Area1.rect(10, 5));
   System.out.println("삼각형의 면적 : " + Area1.triangle(10, 5));
  }
}

출력내용 : 
원의 면적    : 314.159
사각형의 면적 : 50.0
삼각형의 면적 : 25.0
*/
---
---
package com.company.java010_ex;
class Mobile2{  
    String   serialNo;	  // 인스턴스변수, heap area, new O, this, 생성자O
    static  int count=0;  // 클래스변수, method, new X, this X, 생성자X 지금당장바로~!
    
    public Mobile2() {
    	//객체를 한개씩 만들때마다   serialNo에 숫자를 한개씩 증가시키는데, ++count
    	this.serialNo = "2030-" + ++count;
    }
}//end class Mobile2
//////////////////////////////////////////////////////////////
public class StaticEx002 {
	public static void main(String[]args) {
	     Mobile2 m1 = new Mobile2(); //1. new 공간빌리기  2. 생성자()  3. 번지
	     Mobile2 m2 = new Mobile2(); 
	     Mobile2 m3 = new Mobile2();  
	     Mobile2 m4 = new Mobile2();  

	     System.out.println("모바일 갯수는 모두 "+ Mobile2.count +"개 입니다."); //클래스명.변수 클래스변수 ◆ 4
	     System.out.println("m1의 제품번호 " + m1.serialNo);  //1	m1(1번지).변수명 ◆ 2030-1
	     System.out.println("m2의 제품번호 " + m2.serialNo);  //2  m1(2번지).변수명 ◆ 2030-2
	     System.out.println("m3의 제품번호 " + m3.serialNo);  //3
	     System.out.println("m4의 제품번호 " + m4.serialNo);  //4
	}//end main
}//end class
//////////////////////////////////////////////////////////////

/*연습문제2)  static
패키지명 : com.company.java010_ex
클래스명 :  StaticEx002
-- class Mobile2   작성해주세요    


class Mobile2{  
      String   serialNo;
      static  int count=0; 
} 

public class StaticEx002{
  public static void main(String[] args) {
     Mobile2 m1 = new Mobile2(); //1. new 공간빌리기  2. 생성자()  3. 번지
   Mobile2 m2 = new Mobile2(); 
   Mobile2 m3 = new Mobile2();  
   Mobile2 m4 = new Mobile2();  

   System.out.println("모바일 갯수는 모두 "+ Mobile2.count +"개 입니다.");   
   System.out.println("m1의 제품번호 " + m1.serialNo);  //1
   System.out.println("m2의 제품번호 " + m2.serialNo);  //2
   System.out.println("m3의 제품번호 " + m3.serialNo);  //3
   System.out.println("m4의 제품번호 " + m4.serialNo);  //4
  }
}

출력된결과:
모바일 갯수는 모두 4개 입니다.
m1의 제품번호 2030-1
m2의 제품번호 2030-2
m3의 제품번호 2030-3
m4의 제품번호 2030-4
*/
---<!--day022.md까지-->
---
---
package com.company.java010_ex;
//- 문제 1. 다음 코드에서 인스턴스변수, 클래스변수, 지역변수를 구분하시오.  ( 보관되는 영역도 추가 )
//- 문제 2. 인스턴스메서드와 클래스메서드를 구분하시오.  
//- 문제 3. 오류가 발생하는 이유를 설명하시오.
//- 문제 4. runtime data area 위치영역 그림그리기
//- 문제 5. 다음과 같이 출력되도록 코드를 작성하시오.

//클래스는 부품객체
//클래스는 상태(멤버변수)와 행위(멤버함수)

class LunchTray {
	//멤버변수	(1. 클래스변수 : 공용 , 2. 인스턴스변수 : this(각각)  , 3. 지역변수: 임시)
    String owner;  //인스턴스변수 - heap area - new O - 생성자 O - this. O      
    int rice = 90; //인스턴스변수 - heap area - new O - 생성자 O - this. O              
    int soup = 85; //인스턴스변수 - heap area - new O - 생성자 O - this. O             

    static int trayCount = 0; //클래스변수 - method area - new X - 셍성자 X - (right)now     
  //static int totalFood = rice + soup; // ★static 은 this. 사용불가X 
    									//클래스변수 - method area - new X - 셍성자 X - (right)now     
    static int maxRice = 100; //클래스변수 - method area - new X - 셍성자 X - (right)now           
    
    //멤버함수
    public LunchTray() {
    	// owner 이름 : std-1, 급식판수 숫자올리기
    	this.owner = "std-" + ++trayCount;
    }
    
    public int getFoodAmount() { return rice + soup;}//인스턴스메서드 - heap area - new O - 생성자 O - this. O
    
    
	public static void showTrayCount() { //클래스메서드 - 
        System.out.println("전체 급식판 수: " + trayCount);   
    }

    public static void showOwner() { //클래스메서드
      //System.out.println(owner); //★static 은 this. 사용불가X 
    }

    public void showTray() {  //클래스메서드
        System.out.println("\n\n:: 주인 이름: " + owner);  // this              
        System.out.println("총 음식량: " + this.getFoodAmount()); //static    
    }
}

//LunchTray() { }
//:: 주인 이름: std-1
//총 음식량: 175
//전체 급식판 수: 1


///////////////////////////////////////////////////////////////////
public class MemberVarEx003 {
	
	public static void main(String[]args) {
        LunchTray tray1 = new LunchTray();  // 1. new(메모리, 객체)  2) 생성자(인스턴스변수초기화사용가능)
        tray1.showTray();                    
        LunchTray.showTrayCount();  //클래스.메서드();       

        LunchTray tray2 = new LunchTray();  //
        tray2.showTray();                   
        LunchTray.showTrayCount();         
	}//end main
}// end class


/*
 public LunchTray(){
 	//owner 이름: std-1, 급식판수 숫자올리기
 	this.owner = "std-" + ++trayCount;
 } 
 
------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
>1. LunchTray.class  ,  MemberVarEx003.class
>2. LunchTray.trayCount        ,  LunchTray.,maxRice
    LubchTray.showTrayCount()  ,  LunchTray.showOwner()
------------------------------------
[heap: 동적]             		    | [stack : 잠깐빌리기]
								      tray2[2번지] showTray();
1번지{owner=std-2, rice=90, soup=85} ← tray2[2번지] 
									  tray1[1번지] showTray();
1번지{owner=std-1, rice=90, soup=85} ← tray1[1번지]  
					     		    | main
------------------------------------
*/

/*초기화순서 :   초기값     명시적초기화     초기화블록     생성자
//////////////////////////////////////////////////////////////////////////////
TrayCount       0          = 0          X 0     공용으로 사용관련  X
maxRice			0		   = 100        X 100	생성자안에서 클래스변수 사용가능
//////////////////////////////////////////////////////////////////////////////
owner		   null        X null		X null		X "std-1" (this)	this.owner = "std-" + ++trayCount;
rice  		    0			90 			X 90		X 90	
soup			0			85			X 85		X 85
//////////////////////////////////////////////////////////////////////////////
*/

///////////////////////////////////////////////////////////////////
/*연습문제3)  멤버변수
패키지명 : com.company.java010_ex
클래스명 :  MemberVarEx003

:: 주인 이름: std-1
총 음식량: 175
전체 급식판 수: 1


:: 주인 이름: std-2
총 음식량: 175
전체 급식판 수: 2

 
class LunchTray {
    String owner;        
    int rice = 90;               
    int soup = 85;               

    static int trayCount = 0;      

    static int totalFood = rice + soup;

    static int maxRice = 100;       

    public int getFoodAmount() {
        return rice + soup;         
    }

    public static void showTrayCount() {
        System.out.println("전체 급식판 수: " + trayCount);   
    }

    public static void showOwner() { 
       System.out.println(owner);
    }

    public void showTray() {
        System.out.println("\n\n:: 주인 이름: " + owner);                
        System.out.println("총 음식량: " + getFoodAmount());     
    }
}


public class MemberVarEx003 {
   public static void main(String[] args) {
        LunchTray tray1 = new LunchTray();   
        tray1.showTray();                    
        LunchTray.showTrayCount();         

        LunchTray tray2 = new LunchTray();   
        tray2.showTray();                   
        LunchTray.showTrayCount();         
   }
} 



*/
---
---
package com.company.java011_ex;


//1. 클래스는 부품객체(클래스변수 / 인스턴스변수) 
class User002 { 
	   final String nation = "Korea";  //인스턴스변수 - method area - new X - 생성자 X - now 
	   final String jumin;   		   //
	   String name;					   //
	   
	   
//2. 클래스는 상태(멤버변수)와 행위(멤버함수)
	   public User002() { jumin="00000"; }
	   public User002(String jumin, String name) {
	      this.jumin = jumin;
	      this.name = name;
	   }
	}//end class User002


//////////////////////////////////////////////////////////////////
public class FinalEx {
	public static void main(String[]args) {
	      User002 user1 = new User002("123456-1234567", "아이유");
	      System.out.println(user1);   
	      
	    //user1.nation = "USA";     //cannot be assigned  
	    //user1.jumin  = "123123-1234321"; //final
	      user1.name = "IU"; 
	      System.out.println(user1);   

		
		
	}//end main
}//end class
//////////////////////////////////////////////////////////////////
/*연습문제1)  final
패키지명 : com.company.java011_ex
클래스명 : FinalEx
다음코드에서 오류나는 부분을 찾아 주석달고 이유를 적으시오.
class User002 {
   final String nation = "Korea";   
   final String jumin;   
   String name;

   public User002() { jumin="00000"; }
   public User002(String jumin, String name) {
      this.jumin = jumin;
      this.name = name;
   }
}
 public class FinalEx {
   public static void main(String[] args) {
      User002 user1 = new User002("123456-1234567", "아이유");
      System.out.println(user1);   
      
      user1.nation = "USA";      
      user1.jumin  = "123123-1234321"; 
      user1.name = "IU"; 
      System.out.println(user1);   
   }
}


*/
---
---
package com.company.java010; //##1
//public(어디서든지) > protected(상속 extends) > package(default 같은 폴더에서만) > private(클래스내)
public class Milk{  // java010에 설정해주세요!
	   private int  mno;   
	   private String mname;  
	   private  int mprice;  
	   //alt + shift + s (2,3,4 / getter+setter)
	   public Milk() {super();}
	   public Milk(int mno, String mname, int mprice) { super(); this.mno = mno; this.mname = mname; this.mprice = mprice;}
	   @Override
	   public String toString() { return "Milk [mno=" + mno + ", mname=" + mname + ", mprice=" + mprice + "]"; }
	  
	   public String getMname() { return mname;} public void setMname(String mname) { this.mname = mname;  }
	   public int getMno() { return mno; } public void setMno(int mno) {  this.mno = mno;}
	   public int getMprice() { return mprice; } public void setMprice(int mprice) {  this.mprice = mprice; }
	   
	   
	   
	}//end class Milk
---
---
package com.company.java010_ex; //##2.

import com.company.java010.Milk; //##3.

////////////////////////////////////////////////////////////
public class ModifierEx002 {
	public static void main(String[]args) {
	      Milk m1 = new Milk();  
	      System.out.println( m1 );  
	      m1.setMprice(2000);       
	      System.out.println( m1 );

	}//end main
}//end class

/*
------------------------[ runtime data area]
[method: 정보, static, final : 공용정보]
> Milk.class , ModifierEx002.class
------------------------------------
[heap: 동적]            | [stack : 잠깐빌리기]
------------------------------------
*/

////////////////////////////////////////////////////////////

/*연습문제2)  지정접근자
패키지명 : com.company.java010_ex
클래스명 : ModifierEx2
다음과 같이 코드를 작성하시오.
ㅁ출력된화면
   Milk [mno=0, mname=null, mprice=0]
   Milk [mno=0, mname=null, mprice=2000]
   
ㅁ주어진조건
public class Milk{  // java011_ex에 설정해주세요!
   private int  mno;   
   private String mname;  
   private  int mprice;  
}
public class ModifierEx2{ // java011 패키지에 설정해주세요.
   public static void main(String[] args) {
      Milk m1 = new Milk();  
      System.out.println( m1 );  
      m1.setMprice(2000);       
      System.out.println( m1 );
   } // end main
} // end class
*/
---
---
package com.company.java011_ex;

import com.company.java010_ex.Score;

//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수)와 행위(멤버함수) 


/////////////////////////////////////////////////////////
public class ModifierEx3{    // java011 패키지에 설정해주세요.
   public static void main(String[] args) {
      Score iron = new Score();     
      Score hulk = new Score("hulk" , 20,50,30);    
	      
      // Score.info()위에 메서드작성해주세요!  ##
      // setter를 이용해주세요!
      iron.setName("iron"); iron.setKor(100); iron.setEng(100); iron.setMath(100);
	      
      Score.info();     // 클래스메서드
      iron.show();          
      hulk.show();   
	      
   }//end main
}//end class
/////////////////////////////////////////////////////////

/*연습문제3)  지정접근자
패키지명 : com.company.java011_ex
클래스명 : ModifierEx3
다음과 같이 코드를 작성하시오.

ㅁ출력된화면
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
이름   국어   영어   수학   총점   평균   합격여부   장학생   랭킹
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
iron   100   100   100   300   100.00   합격   장학생   **********
hulk   20   50   30   100   33.33   불합격      ***





ㅁ주어진조건
public class Score{
   private String name;
   private int kor, eng, math , total;
   private double aver;
   private String p  , s  , rank;
} // java011_ex에 설정해주세요!

public class ModifierEx3{    // java011 패키지에 설정해주세요.
   public static void main(String[] args) {
      Score iron = new Score();     
      Score hulk = new Score("hulk" , 20,50,30);    
      
      // Score.info()위에 메서드작성해주세요!  ##
      // setter를 이용해주세요!
      iron.setName("iron"); iron.setKor(100); iron.setEng(100); iron.setMath(100);
      
      Score.info();     // 클래스메서드
      iron.show();          
      hulk.show();   
   }

}

Score.info() 사용시화면
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
이름   국어   영어   수학   총점   평균   합격여부   장학생   랭킹
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

*/
---
---
package com.company.java010_ex;

public class Score{ 
	
	//멤버변수(private - getters/setters)
	   private String name; //인스턴스변수 - heap area
	   private int kor, eng, math , total;
	   private double aver;
	   private String p  , s  , rank;
	   
	 //멤버함수 (alt + shift + s / alt + s / 2,3,4 getters/setters)
	 //1. 생성자(default / name kor, eng, math ★필수 / all arg )
	 
	   //2. 상태확인(toString) 
	 @Override
	 public String toString() {
		 return "Score [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + ", total=" + total
				+ ", aver=" + aver + ", p=" + p + ", s=" + s + ", rank=" + rank + "]";
	}
	 public Score(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	 public Score() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	 public Score(String name, int kor, int eng, int math, int total, double aver, String p, String s, String rank) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.total = total;
		this.aver = aver;
		this.p = p;
		this.s = s;
		this.rank = rank;
	}
	 //3. getters/setters
	 public String getName() { return name; } public void setName(String name) { this.name = name; }
	 public int getKor() { return kor; } public void setKor(int kor) { this.kor = kor; }
	 public int getEng() { return eng; } public void setEng(int eng) { this.eng = eng; }
	 public int getMath() { return math; }  public void setMath(int math) { this.math = math; }
	 public int getTotal() { return total; } public void setTotal(int total) { this.total = total; }
	 public double getAver() { return aver; } public void setAver(double aver) { this.aver = aver; }
	 public String getP() { return p; } public void setP(String p) { this.p = p; }
	 public String getS() { return s; } public void setS(String s) { this.s = s; }
	 public String getRank() { return rank; } public void setRank(String rank) { this.rank = rank; }
	 //4. Score info() [공용] 클래스메서드 public static 클래스명.메서드
	 public static void info() { 
		 System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
		 System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t"
				 , "이름", "국어", "영어", "수학", "총점", "평균", "합격여부", "장학생", "랭킹");
		 System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
	 }  
	 //5. Iron.show(); hulk.show();
	 public void show () {  
		 
		 process_total(); process_avg(); process_p();process_s (); process_rank  ();
		 System.out.printf("%-5s\t%-5s\t%-5s\t%-5s\t%-5s\t%-2f\t%-5s\t%-5s\t%-10s\t"
				 , name, kor, eng, math, total, aver, p, s, rank);
		 System.out.println();
	 } 
	 
	 //6. total 총점함수, ave 평균함수, p 합격여부함수, s 장학생함수, rank * 별체크함수(etc)
	 public void process_total () { this.total = this.kor + this.eng + this.math;}
	 public void process_avg   () { this.aver  = this.total/3.0;}
	 public void process_p     () { this.p     = this.aver<60? "불합격":
			 								     this.kor<40 || this.eng<40 || this.math<40? "재시험" : "합격" ;}
	 public void process_s     () { this.s     = this.aver<95? "" : "장학생";}
	 public void process_rank  () { this.rank  = ""; for(int i=0; i<(int)(this.aver/10); i++) {
		 this.rank +="★";  }   }
	} // java011_ex에 설정해주세요!
---
---
package com.company.java011_ex;


public class Pet{  
	   private String name;  
	   private int walkTime, snackCount, cuddleCount, moodScore;  
	   private String snackStars, tailWag, todayMessage;
	   

	   public Pet() { super();}

	   public Pet(String name, int walkTime, int snackCount, int cuddleCount) {
		super();
		this.name = name;
		this.walkTime = walkTime;
		this.snackCount = snackCount;
		this.cuddleCount = cuddleCount;
	}



	   @Override
	public String toString() {
		return "Pet [name=" + name + ", walkTime=" + walkTime + ", snackCount=" + snackCount + ", cuddleCount="
				+ cuddleCount + ", moodScore=" + moodScore + ", snackStars=" + snackStars + ", tailWag=" + tailWag
				+ ", todayMessage=" + todayMessage + "]";
	}
	   
	   public String getName() { return name; }  public void setName(String name) { this.name = name; }
	   public int getWalkTime() { return walkTime; }  public void setWalkTime(int walkTime) { this.walkTime = walkTime; }
	   public int getSnackCount() { return snackCount; }  public void setSnackCount(int snackCount) { this.snackCount = snackCount; }
	   public int getCuddleCount() { return cuddleCount; }  public void setCuddleCount(int cuddleCount) { this.cuddleCount = cuddleCount; }
    public int getMoodScore() { return moodScore; }  public void setMoodScore(int moodScore) { this.moodScore = moodScore; }
	   public String getSnackStars() { return snackStars; }  public void setSnackStars(String snackStars) { this.snackStars = snackStars; }
	   public String getTailWag() { return tailWag; }  public void setTailWag(String tailWag) { this.tailWag = tailWag; }
	   public String getTodayMessage() { return todayMessage; }  public void setTodayMessage(String todayMessage) { this.todayMessage = todayMessage; }

	   //행복도점수(계산) = 걸은시간 + (간식개수*10) + (쓰다듬횟수 * 5) 
	   private void moodcalulate() {
		   moodScore = walkTime + (snackCount * 10) + (cuddleCount * 5);
		   
		   //간식보상 if(행복도가 몇점이상이라면 ){ ~~ } ...
		        if(moodScore >= 90) {this.snackStars = "★★★★★";}
		   else if(moodScore >= 70) {this.snackStars = "★★★★"; }
		   else if(moodScore >= 50) {this.snackStars = "★★★";  }
		   else if(moodScore >= 30) {this.snackStars = "★★";   }
		   else						{this.snackStars = "★"; }     
		   //꼬리흔들기 if(행복도가 몇점이상이라면){ ~~ } ...
		        if(moodScore >= 90) {this.tailWag = "흔들흔들흔들";}
		   else if(moodScore >= 60) {this.tailWag = "흔들흔들";  }
		   else if(moodScore >= 40) {this.tailWag = "살짝흔들";   }
		   else						{this.tailWag = "꼬리내림"; }     
		   //오늘의멘트 if(행복도가 몇점이상이라면){ ~~ } ...
		        if(moodScore >= 90) {this.todayMessage = "오늘은 정말 행복했어요!";}
		   else if(moodScore >= 60) {this.todayMessage = "좋은 하루였어요!";  }
		   else if(moodScore >= 40) {this.todayMessage = "조금 더 놀아줘요!";   }
		   else						{this.todayMessage = "외로웠어요..."; }     
		   }//end moodcalculate
	   
	   public static void info() {
		   System.out.println("======================================================");
		   System.out.println( "이름 산책시간 간식개수 쓰다듬횟수 행복도 간식보상 꼬리흔들기 오늘의멘트");
		   System.out.println("=======================================================");
	   }
	   public void show() {
		    moodcalulate(); // 출력 전에 자동 계산
		    System.out.printf("%-8s %-10d %-10d %-10d %-8d %-10s %-12s %s\n",
		        name, walkTime, snackCount, cuddleCount, moodScore, snackStars, tailWag, todayMessage);
		}
	   
	   
	   
	   
	   
	} // java011_ex에 설정해주세요!
---
---
package com.company.java010_ex;

import com.company.java011_ex.Pet;

///////////////////////////////////////////////////////////
public class ModifierEx004 {
public static void main(String[] args) {  
Pet kong = new Pet();       
Pet nabi = new Pet("나비", 10, 1, 2);    

// Pet.info()위에 메서드작성해주세요!  ##  
// setter를 이용해주세요!  
kong.setName("콩이"); kong.setWalkTime(60); kong.setSnackCount(3); kong.setCuddleCount(10);  

Pet.info();     // 클래스메서드  
kong.show();          
nabi.show();  
}//end main  
}//end class
///////////////////////////////////////////////////////////
/*연습문제5) 지정접근자  
패키지명 : com.company.java010_ex  
클래스명 : ModifierEx004  
다음과 같이 코드를 작성하시오.

ㅁ출력된화면  
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
이름   산책시간   간식개수   쓰다듬횟수   행복도   간식보상   꼬리흔들기   오늘의멘트  
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
콩이   60분       3개       10회       95       ★★★★★     흔들흔들흔들   "오늘은 정말 행복했어요!"  
나비   10분       1개       2회        40       ★★         살짝 흔들     "조금 더 놀아줘요!"  



ㅁ주어진조건  

1) 항목별 조건 및 계산 방식
간식개수 (snackCount)
사용자가 직접 입력하는 값 (예: kong.setSnackCount(3);)
행복도 계산 시 10점씩 반영됨 → snackCount * 10

2) 쓰다듬횟수 (cuddleCount)
사용자가 직접 입력하는 값 (예: kong.setCuddleCount(10);)
행복도 계산 시 5점씩 반영됨 → cuddleCount * 5

3) 행복도 (moodScore)
계산 공식:
코드
moodScore = walkTime + (snackCount * 10) + (cuddleCount * 5)
예: 산책 60분, 간식 3개, 쓰다듬 10회 → 60 + 30 + 50 = 140

4) 간식보상 (snackStars)
행복도 점수 범위   간식보상 출력
90 이상   ★★★★★
70 이상   ★★★★
50 이상   ★★★
30 이상   ★★
그 외   ★

5)  꼬리흔들기 (tailWag)
행복도 점수 범위   꼬리흔들기 출력
90 이상   흔들흔들흔들
60 이상   흔들흔들
40 이상   살짝 흔들
그 외   꼬리 내림

6)  오늘의 멘트 (todayMessage)
행복도 점수 범위   출력 멘트
90 이상   "오늘은 정말 행복했어요!"
60 이상   "좋은 하루였어요!"
40 이상   "조금 더 놀아줘요!"
그 외   "외로웠어요..."


public class Pet{  
private String name;  
private int walkTime, snackCount, cuddleCount, moodScore;  
private String snackStars, tailWag, todayMessage;  
} // java011_ex에 설정해주세요!

public class PetMoodEx{    // java011 패키지에 설정해주세요.  
public static void main(String[] args) {  
Pet kong = new Pet();       
Pet nabi = new Pet("나비", 10, 1, 2);    

//Pet.info()위에 메서드작성해주세요!  ##  
//setter를 이용해주세요!  
kong.setName("콩이"); kong.setWalkTime(60); kong.setSnackCount(3); kong.setCuddleCount(10);  

Pet.info();     // 클래스메서드  
kong.show();          
nabi.show();   
}  
}
*/
---
---
package com.company.java010_ex;

import com.company.java011_ex.Pet;

///////////////////////////////////////////////////////////
public class ModifierEx004 {
public static void main(String[] args) {  
Pet kong = new Pet();       
Pet nabi = new Pet("나비", 10, 1, 2);    

// Pet.info()위에 메서드작성해주세요!  ##  
// setter를 이용해주세요!  
kong.setName("콩이"); kong.setWalkTime(60); kong.setSnackCount(3); kong.setCuddleCount(10);  

Pet.info();     // 클래스메서드  
kong.show();          
nabi.show();  
}//end main  
}//end class
///////////////////////////////////////////////////////////
/*연습문제5) 지정접근자  
패키지명 : com.company.java010_ex  
클래스명 : ModifierEx004  
다음과 같이 코드를 작성하시오.

ㅁ출력된화면  
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
이름   산책시간   간식개수   쓰다듬횟수   행복도   간식보상   꼬리흔들기   오늘의멘트  
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
콩이   60분       3개       10회       95       ★★★★★     흔들흔들흔들   "오늘은 정말 행복했어요!"  
나비   10분       1개       2회        40       ★★         살짝 흔들     "조금 더 놀아줘요!"  



ㅁ주어진조건  

1) 항목별 조건 및 계산 방식
간식개수 (snackCount)
사용자가 직접 입력하는 값 (예: kong.setSnackCount(3);)
행복도 계산 시 10점씩 반영됨 → snackCount * 10

2) 쓰다듬횟수 (cuddleCount)
사용자가 직접 입력하는 값 (예: kong.setCuddleCount(10);)
행복도 계산 시 5점씩 반영됨 → cuddleCount * 5

3) 행복도 (moodScore)
계산 공식:
코드
moodScore = walkTime + (snackCount * 10) + (cuddleCount * 5)
예: 산책 60분, 간식 3개, 쓰다듬 10회 → 60 + 30 + 50 = 140

4) 간식보상 (snackStars)
행복도 점수 범위   간식보상 출력
90 이상   ★★★★★
70 이상   ★★★★
50 이상   ★★★
30 이상   ★★
그 외   ★

5)  꼬리흔들기 (tailWag)
행복도 점수 범위   꼬리흔들기 출력
90 이상   흔들흔들흔들
60 이상   흔들흔들
40 이상   살짝 흔들
그 외   꼬리 내림

6)  오늘의 멘트 (todayMessage)
행복도 점수 범위   출력 멘트
90 이상   "오늘은 정말 행복했어요!"
60 이상   "좋은 하루였어요!"
40 이상   "조금 더 놀아줘요!"
그 외   "외로웠어요..."


public class Pet{  
private String name;  
private int walkTime, snackCount, cuddleCount, moodScore;  
private String snackStars, tailWag, todayMessage;  
} // java011_ex에 설정해주세요!

public class PetMoodEx{    // java011 패키지에 설정해주세요.  
public static void main(String[] args) {  
Pet kong = new Pet();       
Pet nabi = new Pet("나비", 10, 1, 2);    

//Pet.info()위에 메서드작성해주세요!  ##  
//setter를 이용해주세요!  
kong.setName("콩이"); kong.setWalkTime(60); kong.setSnackCount(3); kong.setCuddleCount(10);  

Pet.info();     // 클래스메서드  
kong.show();          
nabi.show();   
}  
}
*/
---
---
package com.company.java011_ex;


public class Pet{  
	   private String name;  
	   private int walkTime, snackCount, cuddleCount, moodScore;  
	   private String snackStars, tailWag, todayMessage;
	   

	   public Pet() { super();}

	   public Pet(String name, int walkTime, int snackCount, int cuddleCount) {
		super();
		this.name = name;
		this.walkTime = walkTime;
		this.snackCount = snackCount;
		this.cuddleCount = cuddleCount;
	}



	   @Override
	public String toString() {
		return "Pet [name=" + name + ", walkTime=" + walkTime + ", snackCount=" + snackCount + ", cuddleCount="
				+ cuddleCount + ", moodScore=" + moodScore + ", snackStars=" + snackStars + ", tailWag=" + tailWag
				+ ", todayMessage=" + todayMessage + "]";
	}
	   
	   public String getName() { return name; }  public void setName(String name) { this.name = name; }
	   public int getWalkTime() { return walkTime; }  public void setWalkTime(int walkTime) { this.walkTime = walkTime; }
	   public int getSnackCount() { return snackCount; }  public void setSnackCount(int snackCount) { this.snackCount = snackCount; }
	   public int getCuddleCount() { return cuddleCount; }  public void setCuddleCount(int cuddleCount) { this.cuddleCount = cuddleCount; }
    public int getMoodScore() { return moodScore; }  public void setMoodScore(int moodScore) { this.moodScore = moodScore; }
	   public String getSnackStars() { return snackStars; }  public void setSnackStars(String snackStars) { this.snackStars = snackStars; }
	   public String getTailWag() { return tailWag; }  public void setTailWag(String tailWag) { this.tailWag = tailWag; }
	   public String getTodayMessage() { return todayMessage; }  public void setTodayMessage(String todayMessage) { this.todayMessage = todayMessage; }

	   //행복도점수(계산) = 걸은시간 + (간식개수*10) + (쓰다듬횟수 * 5) 
	   private void moodcalulate() {
		   moodScore = walkTime + (snackCount * 10) + (cuddleCount * 5);
		   
		   //간식보상 if(행복도가 몇점이상이라면 ){ ~~ } ...
		        if(moodScore >= 90) {this.snackStars = "★★★★★";}
		   else if(moodScore >= 70) {this.snackStars = "★★★★"; }
		   else if(moodScore >= 50) {this.snackStars = "★★★";  }
		   else if(moodScore >= 30) {this.snackStars = "★★";   }
		   else						{this.snackStars = "★"; }     
		   //꼬리흔들기 if(행복도가 몇점이상이라면){ ~~ } ...
		        if(moodScore >= 90) {this.tailWag = "흔들흔들흔들";}
		   else if(moodScore >= 60) {this.tailWag = "흔들흔들";  }
		   else if(moodScore >= 40) {this.tailWag = "살짝흔들";   }
		   else						{this.tailWag = "꼬리내림"; }     
		   //오늘의멘트 if(행복도가 몇점이상이라면){ ~~ } ...
		        if(moodScore >= 90) {this.todayMessage = "오늘은 정말 행복했어요!";}
		   else if(moodScore >= 60) {this.todayMessage = "좋은 하루였어요!";  }
		   else if(moodScore >= 40) {this.todayMessage = "조금 더 놀아줘요!";   }
		   else						{this.todayMessage = "외로웠어요..."; }     
		   }//end moodcalculate
	   
	   public static void info() {
		   System.out.println("======================================================");
		   System.out.println( "이름 산책시간 간식개수 쓰다듬횟수 행복도 간식보상 꼬리흔들기 오늘의멘트");
		   System.out.println("=======================================================");
	   }
	   public void show() {
		    moodcalulate(); // 출력 전에 자동 계산
		    System.out.printf("%-8s %-10d %-10d %-10d %-8d %-10s %-12s %s\n",
		        name, walkTime, snackCount, cuddleCount, moodScore, snackStars, tailWag, todayMessage);
		}
	   
	   
	   
	   
	   
	} // java011_ex에 설정해주세요!
---<!--day023.md-->
---
>>>>>>>>>>>>>>>>>>>>>>>>
1. UMl설계도
2. BANK 부품     class Bank{   }
1) 정보보관 클래스 : UserInfo[ -id, -pass, -balance ]
2) 기능클래스 : 
   Add      [  exec() ]
   Show     [  exec() ]
   Deposit  [  exec() ]
   Withdraw [  exec() ]
   Delete   [  exec() ]
   Login    [  exec() ]
>>>>>>>>>>>>>>>>>>>>>>>>
---
package com.company.java010_bank;

import java.util.Scanner;

//1. 클래스는 부품객체
//2. 상태와 행위

public class BANK_Main {
	//상태 : 멤버변수
	UserInfo userinfo;		//정보보관용도 - model db
	Add    add;
	Show  show;
	Deposit deposit;   
	Withdraw withdraw; 
	Delete delete;     
	Login login;   
	
	//행위 : 멤버함수(초기화)
	public BANK_Main() {
		this.userinfo  = new UserInfo("", "", 0); //##
		this.add       = new Add(this.userinfo );
		this.show      = new Show(this.userinfo);
		this.deposit   = new Deposit(this.userinfo); // Q1. deposit 입금기능
		this.withdraw  = new Withdraw(this.userinfo); //출금기능
		this.delete    = new Delete(this.userinfo);  //삭제기능
		this.login     = new Login(this.userinfo);  //run 메서드안에 기능

	}

	public void run() {
		Scanner scanner = new Scanner(System.in);
		int num=-1; 
		while(num !=9){
			  System.out.println(this.userinfo + "\t" + System.identityHashCode(this.userinfo));
	          System.out.print("\n\n🌟💰 WELCOME TO BANK SYSTEM 💰🌟\n" + 
	                  "\n[1] ➕ 계좌 추가" + "\n[2] 🔍 계좌 조회" + "\n[3] 💵 입금하기" + "\n[4] 💸 출금하기" + "\n[5] 🗑️ 계좌 삭제  "
	                  +"\n\n👉 번호를 선택하세요:");		
		num = scanner.nextInt();
		switch(num) {
		case 1 : this.add.exec(); break;
		case 2 : case 3 : case 4 : case 5 : 
			//1. 유저정보확인
			if(this.login.exec()==-1) {System.out.println("유저정보를 확인해주세요"); break;}
			//2. 각각의 처리
			switch(num) {
			case 2 : this.show.exec(); break;
			case 3 : this.deposit.exec(); break;	//## 추가3
			case 4 : this.withdraw.exec(); break;
			case 5 : this.delete.exec(); break;
			}
			break;
			}
		}
		
	}
	
	public static void main(String[]args) {
		BANK_Main bank = new BANK_Main();
		bank.run();

		
		
	}//end main
}//end class
/*기능 : 유저추가
*/ 
---
---
package com.company.java010_bank;

public class UserInfo {
	private String id;
	private String pass;
	private double balance;
	//alt + shift + s / alt + s/
	
	public UserInfo() { super();}
	public UserInfo(String id, String pass, double balance) 
	{ super(); this.id = id; this.pass = pass; this.balance = balance; }
	
	@Override public String toString() 
	{ return "UserInfo [id=" + id + ", pass=" + pass + ", balance=" + balance + "]"; }
	
	public String getId() { return id; } public void setId(String id) { this.id = id; }
	public String getPass() { return pass; } public void setPass(String pass) { this.pass = pass; }
	public double getBalance() { return balance; } public void setBalance(double balance) { this.balance = balance; }
	
}

/* 1명분의 유저정보보관
 * [-id:String, -pass:String, -balance: String]
*/
---
---
package com.company.java010_bank;

import java.util.Scanner;

//1. 부품객체 
//2. 상태와 행위
public class Add {
	//상태 : 멤버변수	(Scanner X)
	UserInfo userinfo;

	public Add() { super();}
	public Add(UserInfo userinfo) { super(); this.userinfo = userinfo; }
	
	//행위 : 멤버함수 (Scanner 입력해야됨.)
	public void exec() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("[1]아이디     입력 > "); this.userinfo.setId(scanner.next()); 
		System.out.println("[2]비밀번호    입력 > "); this.userinfo.setPass(scanner.next());
		System.out.println("[3]잔액       입력 > "); this.userinfo.setBalance(scanner.nextDouble());
		
		//this.userinfo = new UserInfo(id, pass, balance);
		System.out.println("사용자 추가완료 : " + this.userinfo);
		
	}
}

/*기능 : 유저추가
*/
---
---
package com.company.java010_bank;

public class Show {
	//상태 : 멤버변수
	private UserInfo userinfo;

	public Show() { super();} 
	public Show(UserInfo userinfo) { super(); this.userinfo = userinfo; }
	
	//행위 : 멤버함수
	void exec() {
		System.out.println("\nID> " + this.userinfo.getId()
							+ "\nPASS> " + this.userinfo.getPass()
							+ "\nBALANCE> " + this.userinfo.getBalance());
	}
}
/*기능 : 유저추가
*/
---
---
package com.company.java010_bank;

import java.util.Scanner;

//1. 클래스는 부품객체
//2. 상태와 행위
public class Deposit {
	
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Deposit() { super();}
	public Deposit(UserInfo userinfo) {super(); this.userinfo = userinfo;}
	public UserInfo getUserinfo() { return userinfo; } public void setUserinfo(UserInfo userinfo) { this.userinfo = userinfo; };


	public void exec() {
		//setter / getter 이용해서 사용자에게 입금받기
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 입금할 금액 입력받기
		System.out.println("입금할 금액을 입력해주세요. > ");
		double balance = scanner.nextDouble();
		//처리 - setter를 이용해서 입금할 금액 셋팅
		this.userinfo.setBalance( userinfo.getBalance() + balance);
		//출력 - 입금이 완료되었습니다. 출력
		System.out.println("입금이 완료되었습니다.");
		
	}//end exec
}//end class
/*기능 : 입금기능
*/
---
---
package com.company.java010_bank;

public class Delete {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Delete() { super();}
	public Delete(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public void exec() {
		//setter / getter 이용해서 유저정보삭제, 초기화
		//setter / getter 이용해서 사용자에게 출금받기
		//변수
		
		//입력 
		//처리 - setter를 이용해서 이름 null, 비번 null, 잔액 0으로~~
		this.userinfo.setId("");
		this.userinfo.setPass("");
		this.userinfo.setBalance(0);
		//출력 - 정보를 삭제했습니다. 출력
		System.out.println("정보를 삭제했습니다.");
	}

}
/*기능 : 유저정보삭제, 초기화
*/
---
---
package com.company.java010_bank;

import java.util.Scanner;

public class Login {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Login() { super();}
	public Login(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public int exec() {
		//setter / getter 이용해서 유저정보확인
		//변수
		int find = -1 ;
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 아이디입력받기 / 비번입력받기 
		System.out.println("[1]아이디를 입력하세요.");
		String tempId = scanner.next();
		System.out.println("[2]비밀번호를 입력하세요.");
		String tempPass = scanner.next();
		//처리 - 입력한 아이디와 userinfo .id가 같고, 입력한 비번과 userinfo.pass가 같다면, find = 1; 찾으면 1
		if(tempId.equals(this.userinfo.getId()) && tempPass.equals(this.userinfo.getPass() )) 
		{find=1;}
		//출력 
		return find;
		
	}//end exec
}//end class Login

/*기능 : 유저정보확인
*/
---
---
package com.company.java010_bank;

import java.util.Scanner;

public class Withdraw {
	//상태 : 멤버변수
	UserInfo userinfo;
	
	//행위 : 멤버함수
	public Withdraw() { super();}
	public Withdraw(UserInfo userinfo) {super(); this.userinfo = userinfo;}


	public void exec() {
		//setter / getter 이용해서 사용자에게 출금받기
		//변수
		double num;
		Scanner scanner = new Scanner(System.in);
		//입력 - 사용자에게 출금할 금액 입력받기
		System.out.println("출금할 금액을 입력해주세요. > "); 
		num = scanner.nextDouble();
		//처리 - setter를 이용해서 출금할 금액 셋팅
		this.userinfo.setBalance( userinfo.getBalance()-num);
		//출력 - 출금이 완료되었습니다. 출력
		System.out.println("출금이 완료되었습니다.");
	}

	
	
}
/*기능 : 출금기능
*/
---<!--day024.md-->
---
## JAVA
---
● 6. 클래스다이어그램
1. 시스템을 구성하는 클래스들 사이관계를 표현
2. 클래스 - 객체를 생성하는 설계도
3. staruml.io - 다운로드 - 설치
4. 클래스
------------------------------------
[Animal1] 
------------------------------------
add - attribute (멤버변수)
------------------------------------
add - opperation (멤버함수) 
------------------------------------
5. uml 관계
>1) 연관관계 ( 실선삼각형 (→) : 연결 , 한쪽은 알지만, 다른쪽은 상대방의 존재를 모름 )
>2) 일반화관계 (상속, IS-A 고양이는 동물이다, 속이 빈 화살표 )
     | 고양이는 동물이다(O), 사람도 동물이다(O), 동물은 고양이다? (X)   
>3) 집합관계 ( 자동차 = 엔진 + 휠
    속이 꽉 찬 다이아몬드(◆) - 생성자안에서 new(합성) ,
    속이 빈 다이아몬드   (◇) - 생성자안에서 주소받아서 사용(집약))
4) 의존관계
5) 실체화관계(인터페이스)

6. SOLID (원칙) 
S : 단일책임(원칙)      - 한 클래스는 한 가지 일만해요. (쿠키굽기)
O : 개방폐쇄(원칙)      - 새로운 쿠키는 쉽게 추가. (확장 O , 수정 X)
L : 리스코프치환(원칙)   - 모든 쿠키는 같은 방식으로 만들수 있어요! 
I : 인터페이스분리(원칙)  - 필요한 기능만 딱! 인터페이스 나누기.  
D : 의존역전(원칙)       - 구체적인 쿠키말고, 추상적인 쿠키에 의존



---
---
● 6. 상속


---
---
package com.company.java011;

//1. 클래스는 부품객체
//2. 클래스는 상태와 행위


//[설계도] 1단계 
/*
class Toy{	//default
	//상태(멤버변수)
	private String name;	//인스턴스변수 - heap area - new O - 생성자 O - this. [ 각각 ]
	private int age;		//인스턴스변수
	static final String company="(주) 703toyland";	//Toy.company	클래스.변수 - method area - new X - (now)
	static int   num;	//클래스변수  (공용)
	//행위(멤버함수)
	public void show() {
		System.out.println("NAME : " + this.name);
		System.out.println("AGE : " + this.age);
	}
	//getter + setter - 멤버변수에 private가 있을때 사용.
	public String getName() { return name; } public void setName(String name) { this.name = name; }
	public int getAge() { return age; } public void setAge(int age) { this.age = age; }
	
	public Toy() { super();}
	public Toy(String name, int age) { super(); this.name = name; this.age = age; }
}
*/
//////////////////////////////////////////////////////////////
public class Class_Repeat {
	public static void main(String[]args) {
			Toy kitty = new Toy();    //[장난감]2단계		1) new메모리,객체 2)생성자 3) kotty 번지
			//kitty.setname="할로윈키티";//[갖고놀기]3단계
			kitty.setName("할로윈키티"); kitty.setAge(52); kitty.show();
			Toy gundam = new Toy("건담", 47);//[장난감]2단계
			gundam.show();					//[갖고놀기]3단계
	}
}
//////////////////////////////////////////////////////////////
/* 초기화 순서 :        기본값		 명시적초기화	          초기화블록		 생성자
(static)conpany     null	 ="(주)703toylan"     ="(주)703toylan"     X		Toy.name
(static)num		  0         X      0            O        0		  X		Toy.age
------------------------------------------------------------------------------
 kitty {name=null, age=0}		유지                유지            유지
 gundam{name=null, age=0}	    유지                유지            {name="건담", age=40}
*/

/* 
method[클래스정보] 
>Toy.class ,  Class_Repeat.class, Toy.company="(주) 703.toyland", Toy.name=0
--------------------------------------------
heap [동적]  					| stack [임시저장공간] 
2번지 {name="건담",age=47}   	    ←   gundam (2번지) 
1번지 {name="할로윈키티",age=52}     ←   kitty (1번지) 
								| 	main
---------------------------------------------
*/
---
package com.company.java011;

class Toy{	//default
	//상태(멤버변수)
	private String name;	//인스턴스변수 - heap area - new O - 생성자 O - this. [ 각각 ]
	private int age;		//인스턴스변수
	static final String company="(주) 703toyland";	//Toy.company	클래스.변수 - method area - new X - (now)
	static int   num;	//클래스변수  (공용)
	static {num=0;}
	//행위(멤버함수)
	public void show() {
		System.out.println("NAME : " + this.name);
		System.out.println("AGE : " + this.age);
	}
	//getter + setter - 멤버변수에 private가 있을때 사용.
	public String getName() { return name; } public void setName(String name) { this.name = name; }
	public int getAge() { return age; } public void setAge(int age) { this.age = age; }
	
	public Toy() { super();}
	public Toy(String name, int age) { super(); this.name = name; this.age = age; }
	@Override public String toString() { return "Toy [name=" + name + ", age=" + age + "]"; } 
}
---
---
package com.company.java011;

import java.util.Arrays;

public class ClassArr001 { // ★클래스에서는 생성자 불러서 셋팅할수 있게 하기.
	public static void main(String[]args) {
		// 사용방법 1.
		// 1) Toy[] 나 주소 받을수 있어~!
		Toy [] toys = new Toy[3];  // 2) new 번지, Toy형태의 자료형 3개
		System.out.println("1. " + toys);
		System.out.println("2. " + Arrays.toString(toys));
		
		toys[0] = new Toy();
		toys[0].setName("할로윈키티"); toys[0].setAge(52);
		System.out.println("3.  " + toys[0]);
		
		// 사용방법 2.
		Toy[] toys2 = new Toy[] {
				new Toy("할로윈키티" ,52), new Toy("건담", 47)
		};
		// toys[0].name, toys[0].age
		// toys[1].name, toys[1].age
		
		for(int i=0; i<toys.length; i++) { toys2[1].show();}
	}//end main
}//end class

/* 
method[클래스정보] 
>Toy.class ,  Class_Repeat.class, Toy.company="(주) 703.toyland", Toy.name=0
--------------------------------------------
heap [동적]  					| stack [임시저장공간] 
1번지 [null] [null | null] 	 	← toys [1번지]   
								| 	main
---------------------------------------------
*/
---
---
package com.company.java011_ex;

import java.util.Arrays;

//1. 클래스는 부품객체 
//2. 클래스는 상태(멤버변수)와 행위(멤버함수) 
class Apple{   //// 실행 main과 파일을 분리해주세요!
	   //  	상태(멤버변수)	
	   private String name;
	   private String order;
	   private int num;
	   private int price;
	   
	   //   행위(멤버함수) default / field / toString / getter+setter
	   public Apple() {super();} //default 생성자
	   public Apple(String name, String order, int num, int price) 
	   { super(); this.name = name; this.order = order; this.num = num; this.price = price; }
	   @Override public String toString() { return "Apple [name=" + name + ", order=" + order + ", num=" + num + ", price=" + price + "]"; }
	   
	   //getter / setter  
	   public String getName() { return name; } public void setName(String name) { this.name = name; }
	   public String getOrder() { return order; } public void setOrder(String order) { this.order = order; }
	   public int getNum() { return num; } public void setNum(int num) { this.num = num; }
	   public int getPrice() { return price; } public void setPrice(int price) { this.price = price; } 
	}//end class Apple

///////////////////////////////////////////////////////////////////////////
public class ClassArrEx1{
	  public static void main(String[] args) {
	        Apple[] apples= new Apple[3]; //apples = [null | null | null]
	        //위의 화면처럼 값 셋팅
	        
	        apples [0] = new Apple("RED", "iron", 2, 1000);
	        apples [1] = new Apple("GREEN", "hulk", 1, 1500);
	        apples [2] = new Apple("GOLD", "captain", 3, 2000);

	        //apples = [1번지 | 2번지 | 3번지]
			//apples [0] = new Apple("RED", "iron", 2, 1000);
			//apples [1] = new Apple("GREEN", "hulk", 1, 1500);
			//apples [2] = new Apple("GOLD", "captain", 3, 2000);

	        System.out.println("ver - 1 for");
	        for(int i=0; i<apples.length; i++) {System.out.println(apples[i]);}
	        
	        System.out.println("\nver - 2 .향상된 for");
	        for(Apple a : apples ) {System.out.println(a);}
	        
	        Apple [] apples2 = new Apple[] {
        				new Apple("RED", "iron", 2, 1000),
        				new Apple("GREEN", "hulk", 1, 1500),
        				new Apple("GOLD", "captain", 3, 2000)
	        };
	        System.out.println(Arrays.deepToString(apples2));
	        
	        //출력
			//Apple [name=RED, order=iron, num=2, price=1000]
			//Apple [name=GREEN, order=hulk, num=1, price=1500]
			//Apple [name=GOLD, order=captain, num=3, price=2000]
	        
	  }//end main
	}//end class
///////////////////////////////////////////////////////////////////////////

/*● 5. 클래스배열

  클래스[]  배열명 = new 클래스[갯수];
  
  String[]   arr     = new String[3];  
  A1     []   carr   = new A1[3];  // [null, null, null ]
  ※ null  - 공간은 있지만 값이 비어있어!
   
  carr[0]  = new  A1();  ※ 생성자를 불러서 인스턴스변수를 초기화해 사용가능하게만들기
  1번지{  name="" }  ←  carr[0] 1번지




연습문제1)  클래스배열
패키지명 : com.company.java011_ex
클래스명 : ClassArrEx1
다음과 같이 코드를 작성하시오.
ㅁ출력된 화면
Apple [name=RED, order=iron, num=2, price=1000]
Apple [name=GREEN, order=hulk, num=1, price=1500]
Apple [name=GOLD, order=captain, num=3, price=2000]

ㅁ주어진 옵션


*/
---
---
package com.company.java011_ex;
/* 클래스의 재사용
Object        {         }
  ↑
MobileNote    { show() }
  ↑
MobileNote7   { iris,face / newShow() } 
  ↑
MobileNote8   { ◎face     / ◎newShow() }  
  ↑
MobileNote9   { battery   / ◎newShow() } 

----------------------------------------------
MobileNote9 my9 = new MobileNote0();
----------------------------------------------
1. MobileNote9 은 MobileNote 이다.
2.     생성자호출순서 : MobileNote9()  →  MobileNote8()  → MobileNote7() → MobileNote()   → Object()
3.     객체생성순서  :  Object → MobileNote → MobileNote7 → MobileNote8 → MobileNote9

	3번지 : {battery / ◎newShow() }
			→ {◎newShow() / ◎face}
	 		→ {iris, face / newShow() } → { show() } 
	 Q. note8, note7의 newShow() 호출방법은?


----------------------------------------------
MobileNote8 my8 = new MobileNote8();
----------------------------------------------
1. MobileNote8 은 MobileNote 이다.
2.     생성자호출순서 :  MobileNote8()  → MobileNote7() → MobileNote()   → Object()
3.     객체생성순서  :  Object → MobileNote → MobileNote7 → MobileNote8

	2번지 : {◎face / ◎newShow() } → {iris, face / newShow() } → { show() } 

    오버라이딩 : 상속시 부모와 같은 메서드를 자식에게 맞게 수정
----------------------------------------------
MobileNote7 my7 = new MobileNote7();
----------------------------------------------
1.     MobileNote7  는    MobileNote 이다.
2.     생성자호출순서 :  MobileNote7()  → MobileNote()  → Object()
3.     객체생성순서  :  Object → MobileNote → MobileNote7
    1번지 : { iris,face / newShow() } - { show() }
    
*/


class MobileNote extends Object{
	//멤버변수 없음
	void show() {
		System.out.println("MobileNote입니다.");
	}
}
class MobileNote7 extends MobileNote{
	private String iris;
	private String face;
	
	public MobileNote7() {super();}
	public String getIris() { return iris; }     public void setIris(String iris) { this.iris = iris; }
    public String getFace() { return face; }     public void setFace(String face) { this.face = face; } 

	void newShow() {
		System.out.println("NOTE7 객체 기능(OverriNOTding)\n"
				 	+ "iris = " + this.iris + "\n"
				 	+ "face = " + this.face + "\n");
	}
}
class MobileNote8 extends MobileNote7{
	private String face;

	public String getFace() { return face; }  public void setFace(String face) { this.face = face; }
	//##
	@Override
	void newShow() {
		super.newShow();
		System.out.println("\nNOTE8 객체 기능(OverriNOTding)추가\r\n"
				+ "face = " + this.face );
	}
}
class MobileNote9 extends MobileNote8{
	private int battery;
	
	public int getBattery() { return battery; }    public void setBattery(int battery) { this.battery = battery; }

	//##
	@Override
	void newShow() {
	super.newShow(); //super.MoblieNote8
	System.out.println("\nNOTE9 객체 기능(OverriNOTding)추가\r\n"
			+ "battery 예쁘게 사용하기\r\n" + "battery = " + this.battery);
	}
}

///////////////////////////////////////////////////////////////
public class ClassEx002 {
    public static void main(String[] args) {
		//        MobileNote7 my7 = new MobileNote7();
		//        my7.setIris("brown");
		//        my7.setFace("pretty");
		//        my7.newShow();
		//
		//        MobileNote8 my8 = new MobileNote8();
		//        my8.setFace("pretty"); 
		//        my8.newShow();
		
		//        MobileNote9 my9 = new MobileNote9();
		//        my9.setBattery(24); 
		//        my9.newShow();
        
    	MobileNote9 my92 = new MobileNote9();
		my92.setIris("black"); 
	    my92.setFace("cuty");
		my92.setBattery(24); 
	    my92.newShow();

    	
		//3. 출력 결과 
		//
		//NOTE7 객체 기능(OverriNOTding)
		//iris = brown
		//face = pretty

        
        
        
    }//end main
}//end class

//////////////////////////////////////////////////////////////
/*연습문제2)     클래스 상속과 메서드 오버라이딩
패키지명 : com.company.java011_ex 
클래스명 : ClassEx002.java

1. 아래 조건에 맞게 ClassEx002.java 파일을 작성하고,
   main() 메서드를 수정하여 다음과 같은 출력 결과가 나오도록 하시오.
2. 주어진 코드 (수정 전)
```java

```
//NOTE8 객체 기능(Overriding) 추가
//face = pretty
//
//NOTE9 객체 기능(Overriding) 추가
//battery 예쁘게 사용하기!
//battery = 24


//4. 클래스 구조 설명
//클래스명      멤버변수        멤버메서드
//MobileNote   없음                        void show()
//MobileNote7   String iris, String face  void newShow()
//MobileNote8   String face                 void newShow()
//MobileNote9   int battery                 void newShow()
//모든 멤버변수는 private으로 선언
//
//-각 클래스는 MobileNote 클래스를 상속받음
//-newShow() 메서드는 각 클래스에서 오버라이딩되어 고유한 출력 형식을 가짐


//5. 요구사항
//-MobileNote 클래스를 기반으로 상속 구조를 설계할 것 (MobileNote7, MobileNote8, MobileNote9 모두 상속)
//-각 클래스에서 setter 메서드를 통해 멤버변수 값을 설정할 수 있도록 구현할 것
//-newShow() 메서드를 오버라이딩하여 출력 형식을 문제에서 제시한 형태로 맞출 것
//-출력 순서와 내용이 정확히 일치하도록 main() 메서드를 구성할 것



*/
---
---
package com.company.java011_ex;
/*    Object 							  Object
 		↑									↑
 	  Grand    {one(), two()}			   Aunt		  						
 	  	↑					   ↑             ↑
 	  Father   { three() }	 Uncle	{one(), two(), four()}

*/
class Grand extends Object {
    public void one() { System.out.println("grand : one"); }
    public void two() { System.out.println("grand : two"); }
}
class Father extends Grand{
	public void three() {System.out.println("Father : three");}
}
class Uncle extends Grand{
	public void four() { System.out.println("Uncle : four");}
	@Override public void two () { System.out.println("Uncle : two");}
	@Override public void one () { System.out.println("Uncle : one");}
} 
class Aunt {
	String name="mimi";
	@Override public String toString() {return "Aunt [name=" + name + "]";} // Object 오버라이딩
}
/////////////////////////////////////////////////
public class ClassEx003 {
	public static void main(String[]args) {
		Father papa = new Father();
		papa.one(); papa.two(); 
		//Q1. uncle이 쓸수 있는 메서드는?   Uncle	{one(), two(), four()} → Grand    {one(), two()}
		//Q2. 25번째줄에서 출력되는 내용은?   Uncle	{one(), two(), four()} → Grand    {one(), two()}
		//Q3. 18, 19번째의 개념은?  @Override : 상속시 부모와 같은 메서드를 자식클래스에 맞게 수정한것!
		
		
	}//end main
}//eend class
/////////////////////////////////////////////////
/*연습문제3)    클래스 상속과 메서드 호출 우선순위
패키지명 : com.company.java011_ex 
클래스명 : ClassEx003.java

1. 아래 조건에 맞게 ClassEx003.java 파일을 작성하고, 
   빈칸을 채운 뒤 main() 메서드를 실행하여 출력 결과를 예상하시오.
2. 주어진 코드 (수정 전)
```java
class Grand extends Object {
    public void one() { System.out.println("grand : one"); }
    public void two() { System.out.println("grand : two"); }
}
// (1) Father 클래스가 Grand 클래스를 상속받도록 수정
public class Father {
    public void three() { System.out.println("Father : three"); }
}

```
3. 출력 결과  
 
grand : one
grand : two
Father : three

4. 클래스 구조 설명
클래스명        상속 관계       주요 메서드
1) Object   최상위 클래스           -
2) Grand      Object → Grand         one(), two()
3) Father   Grand → Father       three()
4) Uncle      Object → Uncle 
5) Aunt      Object → Aunt     
- 모든 클래스는 Object 클래스를 기본적으로 상속받음
- Grand 클래스는 one()과 two() 메서드를 정의
- Father 클래스는 Grand를 상속받아 three() 메서드를 추가

5. 요구사항
- Father 클래스가 Grand 클래스를 상속받도록 extends 키워드를 활용할 것
- main() 메서드에서 Father 객체를 생성하고 one(), two(), three() 메서드를 순서대로 호출할 것
- 상속 관계에 따라 메서드 호출 우선순위를 이해하고 출력 결과를 정확히 예측할 것
- Uncle, Aunt 클래스도 Object를 상속받는 구조로 확장 가능하므로, 필요 시 추가 구현할 것
*/
---
---
package com.company.java011_ex;
/*    Object 							  Object
 		↑									↑
 	  Grand    {one(), two()}			   Aunt		  						
 	  	↑					   ↑             ↑
 	  Father   { three() }	 Uncle	{one(), two(), four()}

*/
class Grand extends Object {
    public void one() { System.out.println("grand : one"); }
    public void two() { System.out.println("grand : two"); }
}
class Father extends Grand{
	public void three() {System.out.println("Father : three");}
}
class Uncle extends Grand{
	public void four() { System.out.println("Uncle : four");}
	@Override public void two () { System.out.println("Uncle : two");}
	@Override public void one () { System.out.println("Uncle : one");}
} 
class Aunt {
	String name="mimi";
	@Override public String toString() {return "Aunt [name=" + name + "]";} // Object 오버라이딩
}
/////////////////////////////////////////////////
public class ClassEx003 {
	public static void main(String[]args) {
		Father papa = new Father();
		papa.one(); papa.two(); 
		//Q1. uncle이 쓸수 있는 메서드는?   Uncle	{one(), two(), four()} → Grand    {one(), two()}
		//Q2. 25번째줄에서 출력되는 내용은?   Uncle	{one(), two(), four()} → Grand    {one(), two()}
		//Q3. 18, 19번째의 개념은?  @Override : 상속시 부모와 같은 메서드를 자식클래스에 맞게 수정한것!
		
		
	}//end main
}//eend class
/////////////////////////////////////////////////
/*연습문제3)    클래스 상속과 메서드 호출 우선순위
패키지명 : com.company.java011_ex 
클래스명 : ClassEx003.java

1. 아래 조건에 맞게 ClassEx003.java 파일을 작성하고, 
   빈칸을 채운 뒤 main() 메서드를 실행하여 출력 결과를 예상하시오.
2. 주어진 코드 (수정 전)
```java
class Grand extends Object {
    public void one() { System.out.println("grand : one"); }
    public void two() { System.out.println("grand : two"); }
}
// (1) Father 클래스가 Grand 클래스를 상속받도록 수정
public class Father {
    public void three() { System.out.println("Father : three"); }
}

```
3. 출력 결과  
 
grand : one
grand : two
Father : three

4. 클래스 구조 설명
클래스명        상속 관계       주요 메서드
1) Object   최상위 클래스           -
2) Grand      Object → Grand         one(), two()
3) Father   Grand → Father       three()
4) Uncle      Object → Uncle 
5) Aunt      Object → Aunt     
- 모든 클래스는 Object 클래스를 기본적으로 상속받음
- Grand 클래스는 one()과 two() 메서드를 정의
- Father 클래스는 Grand를 상속받아 three() 메서드를 추가

5. 요구사항
- Father 클래스가 Grand 클래스를 상속받도록 extends 키워드를 활용할 것
- main() 메서드에서 Father 객체를 생성하고 one(), two(), three() 메서드를 순서대로 호출할 것
- 상속 관계에 따라 메서드 호출 우선순위를 이해하고 출력 결과를 정확히 예측할 것
- Uncle, Aunt 클래스도 Object를 상속받는 구조로 확장 가능하므로, 필요 시 추가 구현할 것
*/
---
---
package com.company.java011_ex;
/*4. 클래스 구조 설명
  Object					■ 3. Object(){ 									   } ■ 4.
 	↑
Color 클래스 :  				■ 2. Color(){   name=null         /  name=0        } ■ 5. 
     ↑
Green 클래스  : void show(){} ■ 1. Green(){					show()      		} ■ 6.
               				 ■ 0. 1번지
------------------------------------------------------------------------------------
Green mygreen = new Green(); 
------------------------------------------------------------------------------------
1. 	Green은 Color이다, Green은 Object이다.
*/
class Color{
	public String name;
	private int num;
	
	public Color() {super();}
	public int getNum() { return num; }  public void setNum(int num) { this.num = num; }
	@Override public String toString() { return "Color [name=" + name + ", num=" + num + "]"; }
	}
class Green extends Color{
	void show() {
		System.out.println("GREEN");
		System.out.println("NAME : " + this.name);
		System.out.println("NUM : " + this.getNum()); //private
	}
	
}

////////////////////////////////////////////////////////////
public class ExtendsEx001 {
    public static void main(String[] args){
        Green mygreen = new Green();
        mygreen.name = "LIGHT_GREEN";
        mygreen.setNum(5);
        mygreen.show();
        
        
		//5 요구사항
		//1) Color와 Green 클래스의 상속 관계를 활용할 것
		//2) main() 메서드에서 직접 name과 num에 값을 할당할 수 있도록 접근 제어자를 고려할 것
		//3) show() 메서드를 통해 출력 형식을 맞출 것
 
		//3.출력 결과 
		//GREEN
		//NAME : LIGHT_GREEN
		//NUM : 5
        
        
        

    }//end main
}//end class
////////////////////////////////////////////////////////////
/*연습문제1)  멤버변수
패키지명 : com.company.java011_ex
클래스명 :   ExtendsEx001.java
1. 아래 조건에 맞게 Extends002.java 파일을 작성하고, main() 메서드를 수정하여 다음과 같은 출력 결과가 나오도록 하시오.
2. 주어진 코드 (수정 전)
```java
4. 클래스 구조 설명
//Color 클래스 : 멤버 변수:  name (String, public)  / num (int, private)
// ↑
Green 클래스  :  //멤버 변수:  name (String, public), num (int, private)


```
*/
---<!--day025.md-->

# JAVA (20250929~20251002)
---
package com.company.java012;

/*
1. 클래스는 부품객체
2. 상속은 재활용
	Object                  Object 
	   ↑   			           ↑
	 TestA1		            TestB1
	 (int a)		        (int b)
	 110v, -자형나사		    220v, +자형나사
*/
class TestA1 extends Object{int a;}
class TestB1 extends Object{int b;}

//////////////////////////////////////////////////////////////
public class Poly001 {
	public static void main(String[]args) {
		TestA1 ta1 = new TestA1();
		
		//TestB1 tb1 = ta1;
		// Q. 오류나는이유는?
		//Type mismatch: cannot convert from TestA1 to TestB1
		//클래스도 자료형 (틀-objecet) 
		
	}//end main
}//end class
//////////////////////////////////////////////////////////////
---
---
package com.company.java012;
/*
1. 클래스는 부품객체	 2. 상태와 행위	 3. 상속은 재활용
	Object                  
	   ↑   			          
	 TestA2	(int a , toString)	 
	   ↑ 
	 TestB2 (int b , toString)  	    
*/
class TestA2 extends Object{
	int a=10;
	@Override public String toString() { return "TestA2 [a=" + a + "]"; }
}
class TestB2 extends TestA2{
	int b=20;
	@Override public String toString() { return "TestB2 [b=" + b + "]"; }
}
	
////////////////////////////////////////////////////////////////
public class Poly002 {
	public static void main(String[]args) {
		// 부모 = 자식 (Upcasting)
		TestA2 ta = new TestB2(); 
		// 1. TestA2 ta {int a , toString}
		// 2. 		 1번지 TestB2{ int b=20 , toString } → TestA2() { int a=10,  toString  → Object() }
		// > 생성자는  인스턴스변수를 초기화해서 사용할수 있게 해줌.
		// 3.   ta {int a=10 , toString} [1번지] = 1번지{int b=20 , [@toString} - {int a=10] ,-------} 
		System.out.println(ta); //TestB2[b=20] : 자식
		System.out.println(ta.a);  //10
		System.out.println(((TestB2)ta).b); //20
	}
}
////////////////////////////////////////////////////////////////
---
---
package com.company.java012;
/*
1. 클래스는 부품객체	 2. 상태와 행위	 3. 상속은 재활용
	Object                  
	   ↑   			          
	 TestA3	(int a , toString)	 
	   ↑ 
	 TestB3 (int b , toString) 
*/
class TestA3 extends Object{
	int a=10;
	@Override public String toString() { return "TestA3 [a=" + a + "]"; }
}
class TestB3 extends TestA3{
	int b=10;
	@Override public String toString() { return "TestB3 [b=" + b + "]"; }
}

///////////////////////////////////////////////////////
public class Poly003 {
	public static void main(String[]args) {
	// 자식 = 부모 downcasting
	TestB3 tb = (TestB3) new TestA3(); 
	// 1. TestB3 tb 범위 : TestB3(int b  , @toString) - TestA3 (int a , ------)
	
	// 2. TestA3()는 : (int a , toString)만 처리
	// 3. TestB3(int b , toString) 보장안됨.
	// 보장(int b , toString) / (생성자를 호출한적 X => 오류) - (int a , toString) (1번지) 
	//										     = 1번지(int a , toString) 
	/* Exception in thread "main" java.lang.ClassCastException: class com.company.java011.TestA3 cannot be cast to class com.company.java011.TestB3 
	 * (com.company.java011.TestA3 and com.company.java011.TestB3 are in module JAVA2025 of loader 'app')
	at JAVA2025/com.company.java011.Poly003.main(Poly003.java:23)
	*/
	
	}//end main
}//end class
///////////////////////////////////////////////////////
---
---
package com.company.java012;
/*
1. 클래스는 부품객체	 2. 상태와 행위	 3. 상속은 재활용
	Object                  
	   ↑   			          
	 TestA4	(int a , toString)	 
	   ↑ 
	 TestB4 (int b , toString) 
*/
class TestA4 extends Object{
	int a=10;
	@Override public String toString() { return "TestA4 [a=" + a + "]"; }
}
class TestB4 extends TestA4{
	int b=20;
	@Override public String toString() { return "TestB4 [b=" + b + "]"; }
}
///////////////////////////////////////////////////////////////////
public class Poly004 {
	public static void main(String[]args) {
		TestA4 ta = new TestA4();
		// 1. {int a , toString} = 1000번지 {int a , toString}
		TestB4 tb = new TestB4();
		// 2. tb: {int b , toString} - {int b , ---------}
		//				 = 2000번지 (int b , @toSring)-{int a , -------}
		ta = new TestB4(); //5. 부모에 자식을 담은적이 있어야 한다.
						   // 부모 = 자식 / 업캐스팅 / 타입캐스팅 X
		// ta: {int a , toString} = 3000번지 {int b , @toString}-{int a , --------}
		tb		  = (TestB4) ta; // 4. 자식 = 부모 / 다운캐스팅 / 타입캐스팅 O (설계할떄 필요)
		// 3. tb: {int b , @toString} - {int a , ---------}
		//							 = 3000번지{int b , [ @toString)-( int a], ---------} 
		
		System.out.println(tb);
		System.out.println(tb.b);
		System.out.println(tb.a);

	}
}
///////////////////////////////////////////////////////////////////
---
---
package com.company.java012;
/*
	Object
	  ↑
	Animal { String name; int age;}
	  ↑	  
     Cat {String number; void show()}
*/
/*
Object
  ↑
Animal { String name; int age;}
↑	  ↑
Person	  {String jumin; void show()}
*/

class Animal{
	String name; int age;
	public Animal() { super();}	//Object() 컴파일러가 자동생성 X → 오버로딩과 상속시
	public Animal(String name, int age) {  super(); this.name = name; this.age = age; }
	void show() {System.out.println("Animal");}
}
class Cat    extends Animal{
	String number; 
	public void show() { System.out.println("Cat > " + super.name + "/" + super.age);}
}
class Perosn extends Animal{
	String jumin;
	public void show() { System.out.println("Person > " + super.name + "/" + super.age);}
}

/////////////////////////////////////////////////////////////
public class Poly005 {
	public static void main(String[]args) {
		//하나의 타입(부모)으로 여러타입의 객체(자식들)를 관리
		// 부모 = 자식 / 업캐스팅 / 타입캐스팅 X
		Animal [] anis = {  new Cat() , new Cat(), new Perosn(), new Perosn()  }; 
		// 1. 보장 : {String name; int age; /show()}
		// 					  = new Cat(){number , @show() } - Animal{String name; int age; / show()}
		// 1. 보장 : {String name; int age;}
		// 					  = new Person(){jumin , @show() } - Animal{String name; int age;/ -------}
		Animal controller = null;
		controller = anis[0];  controller.show(); 
		controller = anis[1];  controller.show(); 
		controller = anis[2];  controller.show(); 
		controller = anis[3];  controller.show(); 
	}
}
/////////////////////////////////////////////////////////////
---
---
package com.company.java012_ex;
//Q1. 상속도를 그리시오. 
/* 
   Object 
     ↑
   TestA2 {a=10, toString}
     ↑
   TestB2 {b=10, toString}
*/
class TestA2 extends Object{  
   int a=10;
   @Override public String toString() { return "TestA2 [a=" + a + "]"; }    
}
class TestB2 extends TestA2{
   int b=10;
   @Override public String toString() { return "TestB2 [b=" + b + "]"; }   
}
/////////////////////////////////////////////////
public class PolyEx001 {
   public static void main(String[] args) {
	  // 부모 = 자식 / 업캐스팅 / 타입캐스팅 X
      TestA2  ta = new TestB2();
      //Q2. 15번째줄에서   TestA2  ta 는 클래스의 무엇을 사용할수 있을까요? 코드의 의미
      //A. TestA2{a=10/ toString}
      //Q3. 15번째줄에서   TestB2() 는 클래스의 무엇을 사용할 수 있을까요?
      //A. 1000번지 TestB2 {b=10/ @toString} - TestA2{a=10/------} 
	  //A. ta[1000번지] = 1000번지 TestB2 {b=10. [@toString} - TestA2{a=10]/-------}

      System.out.println(ta); // Q4. 출력내용과 이유?   TestA2  vs  TestB2 
      						  // A. TestB2 : Override가 되서
      System.out.println(ta.a); // Q5.사용가능? 10
      //System.out.println(ta.b); // Q6.사용가능? 타입캐스팅 사용시 가능
   }
}
/////////////////////////////////////////////////
---
---
package com.company.java012_ex;
//Q1. 상속도를 그리시오. 
/*
  Object 
    ↑
  TestA3 {a=10, ---------}
    ↑
  TestB3 {b=10, @toString}
*/

class TestA3  extends Object{  
 int a=10;
 @Override public String toString() { return "TestA3 [a=" + a + "]"; }
}
class TestB3  extends TestA3{  
 int b=10;
 @Override public String toString() { return "TestB3 [b=" + b + "]"; }
} 
/////////////////////////////////////////////////
public class PolyEx002 {
 public static void main(String[] args) {
	// 자식 = 부모 / 다운캐스팅 / 타입캐스팅 O
    TestB3  tb =  (TestB3) new TestA3();
    //Q2. 15번째줄에서   TestB3  tb는 클래스의 무엇을 사용할수 있을까요? 코드의 의미
    //A.  {b=10, @toString} - {a=10, -------}
    //Q3. 15번째줄에서   (TestB3) new TestA3() 클래스의 무엇을 사용할 수 있을까요?
    //A.  					  {a=10, toString}
    //Q4. 코드상에서는 문제가 없는데 코드를 실행하면 오류가 나는 이유는?
    //A. tb : {b=10, @toString} - {a=10, -------} = 1000번지{a=10, toString()}
    //        {b=10,} 이 부분을 객체생성한적이 없음. 
    //타입캐스팅에는 문제가 없으나, 객체생성이 안되어 있으므로 실행에서 오류가 발생한다.
 }
}
/////////////////////////////////////////////////
---
---
package com.company.java012_ex;
//Q1. 상속도를 그리시오. 
/*
	Object ■ 3)							■ 4)  
	  ↑
	TestA4 ■ 2) {a=10, ---------}		■ 5)  
	  ↑
	TestB4 ■ 1) {b=20, @toString}		■ 6)  
*/
class TestA4  extends Object{  
 int a=10;
 @Override public String toString() { return "TestA4 [a=" + a + "]"; }
}
class TestB4  extends TestA4{  
 int b=20;
 @Override public String toString() { return "TestB4 [b=" + b + "]"; }
}
/////////////////////////////////////////////////
public class PolyEx003 {
 public static void main(String[] args) {
    TestA4  ta = new TestA4();
    //Q2. TestA4  ta 사용할수 있는범위는? A. {a=10 / toString}
    //Q3. new TestA4() 는  heap area 에서 호출되는 생성자의 순서와 객체가 만들어지는 순서는?
    //  A: 생성자호출 : 2->3 TestA4() → Object() / 객체 4->5 Object() → TestA4
    // 	ta   {a=10 / toString} = 1000번지 {a=10/toString} - {}
    
    TestB4  tb = new TestB4();  
    //Q4. TestB4  tb 사용할수 있는범위는? A: {b=20 / @toString} - {a=10 / ------}
    //Q5. new TestB4() 는  heap area 에서 호출되는 생성자의 순서와 객체가 만들어지는 순서는?
    //    A: 생성자 1->2->3 TestB4() → Object() / 객체: 4->5->6
    //	  tb {b=20 / @toString} - {a=10 / -------} = 2000번지 {b=20 / @toString} - {a=10/-------}
    
    //■ 부모 = 자식 / 업캐스팅 / 타입캐스팅 X
    ta = new TestB4();
    //Q6. ta가 사용할수 있는 보장하는 변수와 메서드는? A: {a=10 / toString}
    //Q7.ta = new TestB4(); 에서 new TestB4() 에서 사용할수 있는 범위는? 
    //   ta{a=10 /toString} = 3000번지 {b=20 / @toString} - {a=10 / -------}
    //■ 자식 = 부모 / 다운캐스팅 / 타입캐스팅 O
    tb         = (TestB4) ta;   
    //Q8. tb         = (TestB4) ta;   에서 tb가 사용할수 있는 범위는? A: {b=20 / @toString} - {a=20 / ------} 
    //Q9. 컴피일러시  tb         = (TestB4) ta;  오류가 안나는 이유는? 
    //A : tb{b=20 / @toString} - {a=10 / -------} = 3000번지 {b=20 / [@toString} - {a=20] / ------} 
    
    System.out.println(tb);  //Q10. 출력내용과 그이유는? TestB4
    System.out.println(tb.b);//Q11. 출력내용? 20
    System.out.println(tb.a);//Q12. 출력내용?	10
    
 }
}
/////////////////////////////////////////////////
---
---
package com.company.java012_ex;
//Q1. 상속도 그리기
/*
	Object
	  ↑
	 papa {int money =10000 , -------}
	  ↑
	 Son  {int money =1500 , @toString}
*/
class Papa extends Object{  
	   int money = 10000;     
	   public Papa() { super(); }
	   public void sing() {  System.out.println("GOD-거짓말");  }
	}// end class
	class Son extends Papa{ 
	   int money = 1500;
	   public Son() { super(); }
	   @Override public void sing() {  System.out.println("빅뱅-거짓말"); }
	} // end class
//////////////////////////////////////////////////////	
	public class PolyEx004 {
		   public static void main(String[] args) { 
		      Papa mypapa = new Son();    
		      // Q3. Papa mypapa 의미?
		      //  A. mypapa {int money = 10000 / toString} - {int money = 1500 / toString}
		      // Q4. 인스턴스화한 실제 메모리 빌려온그림
		      //  A. Son {int money = 1500 / [@toString} - {int money = 10000] / ------}
		      System.out.println(mypapa.money); // Q5.  출력   A. 10000
		      mypapa.sing();  //Q6. 출력  A. 빅뱅 - 거짓말
		       // Q7. mypapa.money 를 이용해서  1500 출력되게 해주세요.  
		       // 
	   }//end main
	}//end class
//////////////////////////////////////////////////////
/* 연습문제4)  다형성
패키지명 : com.company.java012_ex
클래스명 : PolyEx004
다음과 같이 코드를 작성하시오.
// Q1. 상속도 그리기
// Q2. 각클래스에서 사용할수있는 멤버변수/멤버메서드
*/
---
---
package com.company.java012_ex;

public class PolyEx005 {

}
/*연습문제5)  다형성
패키지명 : com.company.java012_ex
클래스명 : PolyEx005
다음과 같이 코드를 작성하시오.
class Parent7  extends Object{
   int x = 100;
   public Parent7() { super(); }
   void method() { System.out.println("Parent Method"); }
} 
class Child7 extends Parent7 {
   int x = 200;
   public Child7() { super(); }
   @Override  void method() { System.out.println("Child Method"); }
}
public class PolyEx002 {
   public static void main(String[] args) {
      Parent7 p = new Child7();     
      // Q3.  Parent7 p   보장하는 범위   
      // Q4. 인스턴스화 했을때 사용가능한 범위 : new Child7()  
      
                            Child7 c = new Child7();     
      System.out.println("p.x = " + p.x);  // Q5. 출력되는 내용   
      p.method();  // Q6. 출력되는 내용     
      System.out.println("c.x = " + c.x);   // Q7. 출력되는 내용  
      c.method();   // Q8. 출력되는 내용   
   }
}

*/
---<!--day026.md-->
---
1. 다형성
- 많은 형상을 띄는 성품
- 여러타입의 객체(자식객체)를 하나의 타입(부모)으로 관리

2. 부모는 자식을 담을수 있다. (업캐스팅)
---------------------------
Animal  [name, age / 먹기, 자기, 배변]
   ↑
  Cat     [card / 꾹꾹]
---------------------------
Animal ani = new Cat();   부모 = 자식   고양이는 동물이다. (O)

2-1) Animal ani {name, age / 먹기, 자기 배변} 
2-2) Cat() → Animal() → Object() 
       {card / 꾹꾹} + {name, age / 먹기, 자기, 배변}

3. 자식은 부모를 담을 수 있다.  (다운캐스팅)  
Cat cat = new Animal()  자식 = 부모   동물은 고양이다. (X)

3-1) Cat cat 
     {card / 꾹꾹} + {name,  age / 먹기, 자기, 배변}
3-2) new Animal()
      	            {name, age / 먹기, 자기, 배변} 
3-3) 만족못시키는 범위 생김.
      {card / 꾹꾹} 
> 3-4) 자식 = 부모  X ---> 코드가 돌아간다? 
   ★해결방안
    부모타입에서 자식생성자를 호출한 적이 있으면 사용가능. 
    Animal ani = new Cat(); 		3000번지 {card / 꾹꾹} + [   {name, age / 먹기,자기, 배변}   ]
     	자식생성자를 호출해서 자식의 범위를 쓸수 있게 만들었으므로 
    Cat cat = (Cat)ani  ----> (Cat) = (자식 타입으로) 타입캐스팅 
         부모객체에서 자식타입으로 [타입캐스팅]이 필요함
         cat(3000번지) = 3000번지 {card / 꾹꾹} + [   {name, age / 먹기,자기, 배변}    ]

● 9. abstract
1. 추상화 
  - 실체화된 객체들 간에 공통되는 특성을 추출
  - 미완성적인 개념 ( new 사용하지 못함.) 
  - 공통된 필드와 메서드의 이름을 통일할 목적 

2. 추상클래스
-----------------------------------------------------------------------
abstract class Animal{
   String name ; 	      // 인스턴스변수 - this - 각각
   abstract void sound(); //abstract method()   - () 구현부가 없음. 
}
class Cat extends Animal {  @override void sound(){  야옹  } }
class Dog extends Animal{  @override void sound(){  멍멍  } }
------------------------------------------------------------------------

● 10. interface
1. interface
  - 개발코드 변경없이 객체를 바꿔낄수 있도록 하는 역할

2. abstract (Is A : 고양이는 동물이다) vs interface( can do this )
   - 추상화 정도가 interface가 더 높다. 
   1) abstract - 인스턴스변수                       , 일반메서드, 추상메서드 (abstract) 가질수 있음.  
   2) interface - only!!상수 (public static final) + 추상메서드(public abstract) 만 가짐.



3. 프로젝트 진행시 interface 사용 - 우리가 지정한 상수만 가져다 씀 (메서드도 동일) 
     다른구성원들이 각각의 부분을 완성할때까지 기다리지 않고 
     규약만 정해두고 본인 부분만 작성.
(abstract : 프로젝트 진행시 지저분 해지므로 사용 지양) 

4. interface 형식 - (설계클래스)
----------------------------------------------------------
interface 인터페이스명 {
   상수;  //public static final //Method area - 공용사용
   추상메서드; //public abstract {} X - this X
}
----------------------------------------------------------
class interSon implements 인터페이스명 {}
class interSon2 extends 클래스명 implements 인터페이스1, 인터페이스2{}
---

---
package com.company.java012_ex;
//Q1. 상속도 그리기
//Q2. 각클래스에서 사용할수있는 멤버변수/멤버메서드
/*
	Object
	  ↑
	 papa {int money =10000 , sing - GOD}
	  ↑
	 Son  {int money =1500 , @sing - 빅뱅}
*/
class Papa extends Object{  
	   int money = 10000;     
	   public Papa() { super(); }
	   public void sing() {  System.out.println("GOD-거짓말");  }
	}// end class
	class Son extends Papa{ 
	   int money = 1500;
	   public Son() { super(); } 
	   @Override public void sing() {  System.out.println("빅뱅-거짓말"); }
	} // end class
//////////////////////////////////////////////////////	
	public class PolyEx004 {
		   public static void main(String[] args) { 
		      Papa mypapa = new Son();    //부모 = 자식 / ( 업캐스팅 / 타입캐스팅 X)
		      // Q3. Papa mypapa 의미? A: Papa 자료형 쓸수 있어. {money =10000 , sing }
		      // Q4. 인스턴스화한 실제 메모리 빌려온그림     
		      //  A: mypapa = {int money = 1500 / [@sing - 빅뱅} - {int money = 10000] / --------} 
		      System.out.println(mypapa.money); // Q5.  출력   A. 10000
		      mypapa.sing();  //Q6. 출력  A. 빅뱅 - 거짓말 
		       // Q7. mypapa.money 를 이용해서  1500 출력되게 해주세요. 
		      //      Son을 (Son)으로 타입캐스팅해서 붙여주기만 하면 된다. 
		       System.out.println(((Son)mypapa).money );
	   }//end main
	}//end class
/*
	Object
	  ↑
	 papa {int money =10000 , sing - GOD}
	  ↑
	 Son  {int money =1500 , @sing - 빅뱅}
*/
	
//////////////////////////////////////////////////////
/* 연습문제4)  다형성
패키지명 : com.company.java012_ex
클래스명 : PolyEx004
다음과 같이 코드를 작성하시오.
*/
---
---
package com.company.java012_ex;
//1. 생성도그리기
//2. 각클래스에서 사용할수있는 멤버변수/멤버메서드
/*
	 Object
	   ↑ 
	 Parent7  {int x = 100 / Parent Method}
       ↑
     Child7	  {int x = 200 / @Child Method}
*/

class Parent7  extends Object{
	   int x = 100;
	   public Parent7() { super(); }
	   void method() { System.out.println("Parent Method"); }
	} 
	class Child7 extends Parent7 {
	   int x = 200;
	   public Child7() { super(); }
	   @Override  void method() { System.out.println("Child Method"); }
	   void papaMethod() {super.method();} 
	}

///////////////////////////////////////////////////////////////
public class PolyEx005 {
	   public static void main(String[] args) {
		      Parent7 p = new Child7();     
		      // Q3.  Parent7 p   보장하는 범위  
		      //   A: p = {int x = 100 / Parent Method} - {int x = 200 / Child Method}
		      // Q4. 인스턴스화 했을때 사용가능한 범위 : new Child7()  
		      //   A: {int x =200 / [@Child Method} - {int x = 100] / Parent Method}
              Child7 c = new Child7();     
		      System.out.println("p.x = " + p.x);  // Q5. 출력되는 내용 A: p.x = 100
		      p.method();  // Q6. 출력되는 내용  A: Child Method 
		      System.out.println("c.x = " + c.x);   // Q7. 출력되는 내용  A: c.x = 200
		      c.method();   // Q8. 출력되는 내용   A: Parent Method
		      //Bonus Q9. main에서 부모에서도 호출가능? - Parent Method (X)
		      ((Parent7)p).method();  //X 오버라이딩된 메서드를 직접호출하는 것은 불가능
		      c.papaMethod(); // 자식에서 부모호출가능
		      //((Child7)p).papaMehtod(); // 타입캐스팅 - 부모가 자식메서드 호출가능 (자식 생성자 호출시)
	   }//end main
	}//end class

///////////////////////////////////////////////////////////////

/*연습문제5)  다형성
패키지명 : com.company.java012_ex
클래스명 : PolyEx005
다음과 같이 코드를 작성하시오.

*/
---
---
package com.company.java013;

/* 	Abstract (is A)   일반클래스 + 설계
    고양이는 동물이다 
       개도 동물이다
       
        Animal
        ↑    ↑
       Cat  Dog
*/
abstract class Animal{       //일반클래스 + 설계
	String name; 
	abstract void eat();     //추상메서드가 있으면 반드시!! 추상클래스로 만들어줘야함.
	abstract void sleep();   // 구현부가 없음 : {}X 
	abstract void poo();     //추상화, 일반화, 설계: 공통의 속성, 구체적인 내용이 없음.
}
class Cat extends Animal{ //구현클래스 - 고양이는 동물이다.
	@Override void eat() {System.out.println(super.name + "고양이 냠냠!");}
	@Override void sleep() {System.out.println(super.name + "고양이 수면!");}
	@Override void poo() {System.out.println(super.name + "고양이 시원!");}
}
class Dog extends Animal{ //구현클래스 - 강아지는 동물이다. 
	@Override void eat() {System.out.println(super.name + "강아지 냠냠!");}
	@Override void sleep() {System.out.println(super.name + "강아지 수면!");}
	@Override void poo() {System.out.println(super.name + "강아지 시원!");}
}
public class Abstract001 {
	public static void main(String[]args) {
		//1. abstract class : 일반클래스 + 설계 
		// Animal ani = new Animal();  new 메모리빌리고, 객체생성 / Animal () 초기화, {} 구현부 없음
		
		Animal ani = null;
		ani = new Cat(); //부모 = 자식 , 업캐스팅, 타입캐스팅 필요없음 
		ani.name = "sally"; ani.eat();
		
		ani = new Dog(); //부모 = 자식 , 업캐스팅, 타입캐스팅 필요없음 
		ani.name = "alpha"; ani.eat();
		
		//2. 사용목적
		Animal [] arr = {new Cat(), new Cat(), new Dog(), new Dog() };
		int cnt=0;
		for(Animal a : arr) { a.name = "ani" + ++cnt; a.eat();}
	}
}

/* 	
    Object
      ↑ 
    Animal  {  name / eat(), sleep(), poo() }
    ↑    ↑
   Cat  Dog {  @eat(), @sleep(), @poo()  }
*/
---
---
package com.company.java013_ex;

/* 	   Abstract  :  일반클래스 + 설계  -  추상클래스: 공통기능 설계   
 *   
    		   Object 
      			  ↑
    			Robot   {   abstract charge(), move(), speak()  }
    ↑		      ↑          	 ↑
 CleaningRobot   SecurityRobot  CookingRobot   
 {@charge(),      {@charge(),    {@charge(), 
  @move(),         @move(),        @move(),
  @speak()         @speak()        @speak()    
 }                  }                }
 
 
*/
abstract class Robot{
	String model; int batteryLevel; 
	void   myrobot() {System.out.println("로봇입니다.");}
	abstract void charge();	// 충전방식
	abstract void move();   // 이동방식
	abstract void speak();  // 말하기방식
}
class CleaningRobot extends Robot{
	@Override void charge() {System.out.println("청소로봇 충전 중... 배터리");}
	@Override void move() {System.out.println("청소로봇: 청소중...");}
	@Override void speak() {  System.out.println("청소로봇 : 먼지를 제거합니다!"); }
}
class SecurityRobot extends Robot{
	@Override void charge() {System.out.println("경비로봇 태양광 충전 중... 배터리");}
	@Override void move() {System.out.println("경비로봇: 경비 중...");}
	@Override void speak() { System.out.println("경비로봇 : 이상없음. 안전확보!");  }
}
class CookingRobot extends Robot{
	@Override void charge() {System.out.println("요리로봇 인덕션 충전 중... 배터리");}
	@Override void move() {System.out.println("요리로봇 : 요리 만드는중...");}
	@Override void speak() {System.out.println("요리로봇: 오늘의 메뉴는 파스타입니다!");  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
public class AbstractEx001 {
	public static void main(String[]args) {
		//Robot robot = new Robot(); //Q1. why? 구현부( {} )가 없음.
		System.out.println("\n--- 로봇 배열 시뮬레이션 ---");
		//   부모        =        자식1               자식2                   자식3
		Robot [] bots   = {new CleaningRobot(), new SecurityRobot(), new CookingRobot()};
		int   [] levels = {50, 70, 95 };
		
		//Q2. 
		for( int i=0; i<bots.length; i++) {
			bots[i].model = "Robo" + (i+1);
			bots[i].batteryLevel = levels[i];
			bots[i].charge(); System.out.println(bots[i].batteryLevel + "%");
			bots[i].speak(); 
			System.out.println();
		}
// bots[0]  = 1번지 CleaningRobot{@charge() , @move() , @speak() } 
		//- Robot{model = "Robo1, batteryLevel=50 / -------, --------, -------}										
// bots[1]  = 2번지 CleaningRobot{@charge() , @move() , @speak() } 
		//- Robot{model="Robo2", batteryLevel=70 / -------, -------, -------}
// bots[2]  = 3번지 CleaningRobot{@charge() , @move() , @speak() } 
		//- Robot{model="Robo3", batteryLevel=95 / -------, ------, -------}
	}//end main
}//end class

////////////////////////////////////////////////////////////////////////////////////////////////////

/* 
method area : 클래스정보
 	
heap area: 동적, 배열					stack area : 임시
1번지{model, battery, charge()x}  ← robot(1번지)
--- 로봇 배열 시뮬레이션 ---
Robo1 청소로봇 충전 중... 배터리 50%
Robo1 청소로봇: 먼지를 제거합니다!
Robo2 경비로봇 태양광 충전 중... 배터리 70%
Robo2 경비로봇: 이상 없음. 안전 확보!
Robo3 요리로봇 인덕션 충전 중... 배터리 95%
Robo3 요리로봇: 오늘의 메뉴는 파스타입니다!
*/
---
---
ver-1
package com.company.java013_ex;
/*1) 상속도 구조
			          Object
		   		  	     ↑
  	                 Astronaut {abstract explore(), report(), rest()}
		 ↑               ↑             ↑
	  Engineer      Biologtst        Piot
	 {@explore(), 	{@explore(), 	 {@explore(),
	  @report(),     @report(),       @report(),
	  @rest()}       @rest()}         @rest()}   

- Astronaut는 추상 클래스이며, 모든 대원이 공통적으로 수행해야 할 기능을 설계함
- 각 대원 클래스는 Astronaut를 상속받아 기능을 구체적으로 구현함
- rest() 메서드는 각 대원의 고유한 휴식 방식 출력  
*/

abstract class Astronaut {
    protected String name; //인스턴스변수 / heap area / this. 각각
    protected int stamina; //protected (상속받은 자식만 사용가능)

    public void setName(String name) { this.name = name; }
    public void setStamina(int stamina) { this.stamina = stamina; }
    public int getStamina() { return stamina; }

    abstract void explore();
    abstract void report();
    abstract void rest();
}

class Engineer extends Astronaut {
    @Override void explore() { System.out.println(name + " 엔지니어 탐사: 기계 장치 점검 완료!"); }
    @Override void report() { System.out.println(name + " 보고서: 에너지 시스템 안정적"); }
    @Override void rest() { System.out.println(name + " 휴식: 공구 정리하며 재충전 중..."); }
}
class Biologist extends Astronaut {
    @Override void explore() { System.out.println(name + " 생물학자 탐사: 외계 식물 샘플 채취!"); }
    @Override void report() { System.out.println(name + " 보고서: 생명체 흔적 발견"); }
    @Override void rest() { System.out.println(name + " 휴식: 생체 리듬 조절 중..."); }
}
class Pilot extends Astronaut {
    @Override void explore() { System.out.println(name + " 파일럿 탐사: 항로 재설정 및 우주선 조종!"); }
    @Override void report() { System.out.println(name + " 보고서: 궤도 진입 성공"); }
    @Override void rest() { System.out.println(name + " 휴식: 조종석에서 짧은 명상..."); }
}

///////////////////////////////////////////////////////
public class AbstractEx002 {
	public static void main(String[]args) {
        // Astronaut astro = new Astronaut();  // Q1. 왜 객체 생성이 불가능한가? A: 구현부( {} )가 없기 때문
        // Astronaut {name, stamina / explore, report, rest }

        System.out.println("\n--- 우주 탐사 대원 시뮬레이션 ---");
        // crew[0] = Engineer{ explore(), report(), rest() } - { name = "Nova" , stamina = 75 / -----, -------, --------} 
        // crew[1] = Biologist{ explore(), report(), rest() } - { name = "Nova" , stamina = 75 / -----, -------, --------} 
        // crew[2] = Pilot{ explore(), report(), rest() } - { name = "Nova" , stamina = 75 / -----, -------, --------} 
        //    부모        =      자식1              자식2          자식3
        Astronaut[] crew = { new Engineer(), new Biologist(), new Pilot() };
        String[] names = { "Nova", "Flora", "Jet" };
        int[] stamina = { 75, 60, 85 };
        

        // Q2. 체력이 낮은 대원만 휴식  70미만이 휴식을 취하게 만들기 
        // crew[n] = n번지 { Method } - { Instance변수  }
        // crew[0] = 1번지 { explore(), report(), rest()} - {name, statmina}
        for(int i=0; i<crew.length; i++) { 
        	crew[i].setStamina(stamina[i]);  // 체력 crew[Engi. || Bio.|| Pilot  = i ].체력 = 체력[75 || 60|| 85  = i]
        	crew[i].setName(names[i]) ;	   	 // 이름 crew[Engi. || Bio.|| Pilot  = i ].이름 = 이름["Nova" || "Flora"|| "Jet"  = i]
        	crew[i].explore();  		     // crew[Engi. || Bio.|| Pilot  = i ].탐사(Engi. || Bio.|| Pilot)
        	crew[i].report();			     // crew[Engi. || Bio.|| Pilot  = i ].보고서(Engi. || Bio.|| Pilot)
        	crew[i].rest();				     // crew[Engi. || Bio.|| Pilot  = i ].휴식(Engi. || Bio.|| Pilot)
        	//if(대원의 체력이 70미만이라면?){휴식을 취해야합니다. 출력}
        	if(crew[i].stamina < 70) { crew[i].rest(); }
        	else {System.out.println(crew[i].name + "는 충분한 체력을 유지중입니다. ");}
        	System.out.println();
        } 
		
		//출력화면
		//--- 우주 탐사 대원 시뮬레이션 ---
		//Nova 엔지니어 탐사: 기계 장치 점검 완료!
		//Nova 보고서: 에너지 시스템 안정적
		//Nova는 충분한 체력을 유지 중입니다.
		//
		//Flora 생물학자 탐사: 외계 식물 샘플 채취!
		//Flora 보고서: 생명체 흔적 발견
		//Flora 휴식: 생체 리듬 조절 중...
		//
		//Jet 파일럿 탐사: 항로 재설정 및 우주선 조종!
		//Jet 보고서: 궤도 진입 성공
		//Jet는 충분한 체력을 유지 중입니다.
	}//end main 
}//end class
///////////////////////////////////////////////////////
/*연습문제2)
패키지명 : com.company.java013_ex 
클래스명 : AbstractEx002.java
다음과 같이 출력되게 main 코드를 작성하시오.
주어진 조건

            Object
              ↑
        Astronaut { abstract explore(), report(), rest() }
   ↑            ↑               ↑ 
Engineer     Biologist       Pilot
{ @explore(), @explore(),    @explore(),
  @report(),  @report(),     @report(),
  @rest() }   @rest() }      @rest() }
  

2) 코드

3) main
public class AbstractEx002 {
    public static void main(String[] args) {
    }
}


*/
---
--- 
ver-2
package com.company.java013_ex;
/*1) 상속도 구조
			          Object
		   		  	     ↑
  	                 Astronaut {abstract explore(), report(), rest()}
		 ↑               ↑             ↑
	  Engineer      Biologtst        Piot
	 {@explore(), 	{@explore(), 	 {@explore(),
	  @report(),     @report(),       @report(),
	  @rest()}       @rest()}         @rest()}   

- Astronaut는 추상 클래스이며, 모든 대원이 공통적으로 수행해야 할 기능을 설계함
- 각 대원 클래스는 Astronaut를 상속받아 기능을 구체적으로 구현함
- rest() 메서드는 각 대원의 고유한 휴식 방식 출력  
*/

abstract class Astronaut {
    protected String name;
    protected int stamina;

    public void setName(String name) { this.name = name; }
    public void setStamina(int stamina) { this.stamina = stamina; }
    public int getStamina() { return stamina; }

    abstract void explore();
    abstract void report();
    abstract void rest();
}

class Engineer extends Astronaut {
    @Override void explore() { System.out.println(name + " 엔지니어 탐사: 기계 장치 점검 완료!"); }
    @Override void report() { System.out.println(name + " 보고서: 에너지 시스템 안정적"); }
    @Override void rest() { System.out.println(name + " 휴식: 공구 정리하며 재충전 중..."); }
}
class Biologist extends Astronaut {
    @Override void explore() { System.out.println(name + " 생물학자 탐사: 외계 식물 샘플 채취!"); }
    @Override void report() { System.out.println(name + " 보고서: 생명체 흔적 발견"); }
    @Override void rest() { System.out.println(name + " 휴식: 생체 리듬 조절 중..."); }
}
class Pilot extends Astronaut {
    @Override void explore() { System.out.println(name + " 파일럿 탐사: 항로 재설정 및 우주선 조종!"); }
    @Override void report() { System.out.println(name + " 보고서: 궤도 진입 성공"); }
    @Override void rest() { System.out.println(name + " 휴식: 조종석에서 짧은 명상..."); }
}

///////////////////////////////////////////////////////
public class AbstractEx002 {
	public static void main(String[]args) {
        // Astronaut astro = new Astronaut();  // Q1. 왜 객체 생성이 불가능한가? A: 구현부( {} )가 없기 때문

        System.out.println("\n--- 우주 탐사 대원 시뮬레이션 ---");
        Astronaut[] crew = { new Engineer(), new Biologist(), new Pilot() };
        String[] names = { "Nova", "Flora", "Jet" };
        int[] stamina = { 75, 60, 85 };
        

        // Q2. 체력이 낮은 대원만 휴식  70미만이 휴식을 취하게 만들기 
        for(int i=0; i<crew.length; i++) { 
        	crew[i].stamina = stamina[i]; 
        	crew[i].name = names[i];
        	crew[i].explore();  
        	crew[i].report();
        	crew[i].rest();
        	if(crew[i].stamina < 70) { System.out.println("휴식을 취해야 합니다."); }
        }
		// crew[0] = 1번지 { explore(), report(), rest()} - {name, statmina}
		
		//출력화면
		//--- 우주 탐사 대원 시뮬레이션 ---
		//Nova 엔지니어 탐사: 기계 장치 점검 완료!
		//Nova 보고서: 에너지 시스템 안정적
		//Nova는 충분한 체력을 유지 중입니다.
		//
		//Flora 생물학자 탐사: 외계 식물 샘플 채취!
		//Flora 보고서: 생명체 흔적 발견
		//Flora 휴식: 생체 리듬 조절 중...
		//
		//Jet 파일럿 탐사: 항로 재설정 및 우주선 조종!
		//Jet 보고서: 궤도 진입 성공
		//Jet는 충분한 체력을 유지 중입니다.
	}//end main 
}//end class
///////////////////////////////////////////////////////
/*연습문제2)
패키지명 : com.company.java013_ex 
클래스명 : AbstractEx002.java
다음과 같이 출력되게 main 코드를 작성하시오.
주어진 조건

            Object
              ↑
        Astronaut { abstract explore(), report(), rest() }
   ↑            ↑               ↑ 
Engineer     Biologist       Pilot
{ @explore(), @explore(),    @explore(),
  @report(),  @report(),     @report(),
  @rest() }   @rest() }      @rest() }
  

2) 코드

3) main
public class AbstractEx002 {
    public static void main(String[] args) {
    }
}


*/
---<!--day027.md-->

---
package com.company.java013;

//1. 클래스는 부품객체
//2. 부품객체는 상태(멤버변수)와 행위(멤버함수) 
//3. 상속 : 클래스의 재사용 (업그레이드 후 다음 클래스---(반복)) / 클래스는 단일상속
//4. 인터페이스(부품객체) : can do this, 다중상속(interface일때만)

/*  Papa{brain}   Mama{brain}
         ↑ 			  ↑	
              Son{}  --> 누구것을 가지고 갈지 모름...(다중상속 X) -> Java에서 금지시켜놓음.
*/

/* (속이 빈 점선)
     Animal2 { Company="(주)메가스터디" / eat()}
       ↑   ↑
   Saram   Pig 
 {@eat()} {@eat()}
 
*/
class Papa{int brain;}
class Mama{int brain;}
//class Son extends Papa, Mama{}   //Syntax error on token ",", . expected

interface Animal2{
	String Company="(주)메가스터디"; 
	//public static final - [공용]클래스변수, Animal2.Company , method area , new X, this 각각 X 
	void eat(); //public abstract 메서드 
}
class Saram implements Animal2{
	@Override public void eat() {/*COMPANY="kakao";*/ System.out.println(Animal2.Company + "랍스터... 냠냠");
	}
}// The final field Animal2.Company cannot be assigned
class Pig implements Animal2{
	@Override public void eat() {/*COMPANY="kakao";*/ System.out.println(Animal2.Company + "꾸꾸리... 냠냠");
	}
}

//////////////////////////////////////////////////////////////////////////////////
public class Interface001 {
	public static void main(String[]args) {
		//Q1. 오류이유
		//Animal2 ani = new Animal2(); // Cannot instantiate the type Animal2
		Animal2 [] anis = {new Saram(), new Saram(), new Pig() , };
		for(Animal2 a : anis) {a.eat();}
	}//end main
}//end class
//////////////////////////////////////////////////////////////////////////////////
/* 
 1. 부모 = 자식           > 하나의 자료타입(부모)으로 여러타입(자식, 자식,,,, 자식들)을 관리
 2. 업캐스팅, 타입캐스팅 X,  > 부모가 메서드 사용시 자식의 메서드가 호출 @Override 

*/
---
---
package com.company.java013;
//1. 클래스는 단일상속
/*  Papa{brain}   Mama{brain}
       ↑ 			  ↑	
            Son{}  --> 누구것을 가지고 갈지 모름...(다중상속 X) -> Java에서 금지시켜놓음.
*/
class Papa2{int brain;}
class Mama2{int brain;}
//class Son extends Papa, Mama{}   //Syntax error on token ",", . expected

    
															
/*2. 인터페이스는 다중상속 가능  <<Interface >> = 스테레오타입    
 		{inter()}						  {method()}            {method()} 
     <<Interface >>Inter20    	<<Interface >>Inter21	   <<Interface >>Inter22
								                  ↑ 			     ↑  (실선 + 속이빈화살표)
				                                  <<Interface >>Inter23
				 ⋯⋯⋯△				            	  ⋯⋯⋯△
 <<class>>Papa2
(실선 + 속이빈화살표)    		            								 
			   	 Using1  extends Papa2 implements Inter23, Inter20	
			   	 -{@method()}
			   	 -{@method()}						       
*/

interface Inter20{void inter();}
interface Inter21{void method();}
interface Inter22{void method();}
interface Inter23 extends Inter21, Inter22 {   } 

//3. 많이 쓰는 형식 주요메인클래스 상속,           추가설계1      추가설계2   
class Using1 extends Papa2           implements Inter23, Inter20{
	@Override public void method() {   }
	@Override public void  inter() {   }
}

public class Interface002 {
	public static void main(String[]args) {
		//Inter23 my = new Inter23();
		Using1 my = new Using1();
		
		// instanceof 클래스확인, 상속확인( 내 부모? 족보확인) 
		if(my instanceof Object)  {System.out.println("1. Object");}
		if(my instanceof Papa2)   {System.out.println("2. Papa");}
		//if(my instanceof Mama2)   {System.out.println("3. Mama2");}
		//Incompatible conditional operand types Using1 and Mama2
		if(my instanceof Inter20) {System.out.println("4. Inter20");}

	}
}
---
---
package com.company.java013;

/*
			   원칙                              설명
S - SRP (단일 책임 원칙)   클래스는 하나의 책임만 가져야 함. 즉, 변경의 이유가 하나여야 함.
O - OCP (개방-폐쇄 원칙)   확장에는 열려 있고, 변경에는 닫혀 있어야 함. 기존 코드를 수정하지 않고 기능을 추가할 수 있어야 함.
L - LSP (리스코프 치환 원칙)   하위 클래스는 상위 클래스의 기능을 대체할 수 있어야 함. 즉, 다형성을 지켜야 함.
I - ISP (인터페이스 분리 원칙)   클라이언트는 자신이 사용하지 않는 메서드에 의존하면 안 됨. 인터페이스는 작고 명확하게 분리해야 함.
D - DIP (의존 역전 원칙)   고수준 모듈은 저수준 모듈에 의존하면 안 되고, 추상화에 의존해야 함. 즉, 인터페이스에 의존하라는 뜻.

1. S: (한클래스는 하나만)한 클래스는 한가지 일만 (쿠키반죽 반죽만, 쿠키굽기는 쿠키굽기만)
2. O: (수정하지말고 기존것에 추가만.)새로운 쿠키 쉽게 추가 
3. L: (다형성: 같은방식으로 처리) 모든 쿠키는 같은 방식으로 만들기 
4. I: (필요한 기능만 딱!) 인터페이스 나누기 
5. D: (추상적인 쿠키에 의존) 
*/

//1.    S: 단일책임의 원칙.
class CookieMaker{
	public void bakeCookie(String type) { System.out.println(type + "쿠키를 구워요!"); }
}

//2.    O: 개방-폐쇄의 원칙 (새로운쿠키를 추가할수 있지만, 기존코드 건들지 마세요!)
interface Cookie{ void make(); }
class ChocoCookie     implements Cookie{ @Override public void make() {System.out.println("초코쿠키");  } }
class DeepChocoCookie implements Cookie{ @Override public void make() {System.out.println("딥초코쿠키");  } }
class BananaCookie    implements Cookie{ @Override public void make() {System.out.println("바나나쿠키");  } }

//3.    L: 리스코프 치환 ( 어떤 쿠키든 Cookie 인터페이스로 바꿔써도 문제없어요! 부모 = 자식 )
class CookieFactory{
	public void makeCookie(Cookie cookie) { //Cookie cookie = 각종 쿠키종류
		cookie.make(); // 어떤 쿠키든 여기서 만들수 있어요~!
	}
}
//4.    I: interface - 너무 많은 기능을 강요하지 말것!! 꼭 필요한 기능만 (절차)
interface SimpleCookie{  void make(); /* make1(), make2()*/ }
class SimpleCookieMake implements SimpleCookie{
	@Override public void make() { System.out.println("쿠키 만든느 방법은 간단하게."); }
}

//5. 의존역전원칙 - CookieFactory는 구체적인 쿠키가 아니라 추상적인 Cookie에 의존
class CookieShop{
	private Cookie cookie;
	public CookieShop() { super();}
	public CookieShop(Cookie cookie) { super(); this.cookie = cookie; } 	//쿠키종류는 외부에서 넣어줘요!
	public void sell(){System.out.println( "cookie가게에서...."); cookie.make(); } //어떤 쿠키든 팔수 있음!
}

///////////////////////////////////////////////////////////////
public class SolidBasic {
	public static void main(String[]args) {
		//1.    S: 단일책임의 원칙.
		System.out.println("1. S: 단일책임의 원칙 - 쿠키굽기(기계)");
		CookieMaker maker = new CookieMaker();
		maker.bakeCookie("초코");
		maker.bakeCookie("오트밀");
		maker.bakeCookie("라즈베리");

		//2+3,   O, L
		System.out.println("\n2. OL: 개방폐쇄 (레시피만 추가) + 리스코프(공장 - 어떤쿠키든굽기가능) 치환");
		CookieFactory factory = new CookieFactory();
		factory.makeCookie(new ChocoCookie());
		factory.makeCookie(new DeepChocoCookie());
		factory.makeCookie(new BananaCookie());

		//4.      I 인터페이스 분리
		SimpleCookie making = new SimpleCookieMake(); making.make();
		
		//5.      D 의존역적 : 어떤쿠키든 가게에서 팔수 있어요!
		CookieShop shop = new CookieShop( new DeepChocoCookie() )
		shop.sell();
		
	}
}
///////////////////////////////////////////////////////////////
---
---
package com.company.java013_ex;

/*   상속도  
 			                     Object
                                    ↑
                                  Board  
                                { exec() }
   ⋯⋯⋯△		              ⋯⋯⋯△                    ⋯⋯⋯△                   ⋯⋯⋯△			
BoadInsert    		 BoardSelector             BoardUpdate             BoardDelete
{ @exec(){글쓰기} }  { @exec(){글읽기} }       { @exec(){글수정} }       { @exec(){글삭제} }   --> 이렇게 출력해줘.
      1. 인터페이스는 설계클래스 (상태: public static final / 행위 : public abstract )
  					method area[공용], new X, 생성자 X, this 각각 X, abstract method()이 없어서
  	  2. 부모 = 자식 : 한가지 타입(부모)으로 여러객체(자식들)를 관리목적
  	            업캐스팅 / 타입캐스팅 X / 부모에서 메서드호출시 @Override가 되서 (업그레이드된) 자식의 메서드 호출
      
*/


//1. 문제 설명
//다음은 게시판 기능을 인터페이스로 추상화한 프로그램이다. 
//Board 인터페이스는 게시판 기능의 공통 동작을 정의하며, 
//BoardInsert, BoardSelect, BoardUpdate, BoardDelete 클래스는 이를 구현하여 각각의 기능을 수행한다.
interface Board {    void exec();  }

//2. 주어진 조건
//구현 클래스들
class BoardInsert implements Board{ @Override public void exec() { System.out.println("글쓰기"); }} 
class BoardSelect implements Board{  @Override public void exec() {System.out.println("글읽기");}}  
class BoardUpdate implements Board{  @Override public void exec() {System.out.println("글수정");}}  
class BoardDelete implements Board{  @Override public void exec() {System.out.println("글삭제");}}  
//- 각 클래스는 exec() 메서드를 오버라이딩하여 해당 기능을 출력한다.

/*
---------------------------------------------------------------------------------------------
 method [공통: static, final, abstract]      Board , BoardInsert,,,, InterfaceEx001
---------------------------------------------------------------------------------------------
 heap                                     stack  
 4번지BoardDelete   {exec()글삭제 }         ← controller [4번지]   controller.exec();   //글삭제
 3번지BoardUpadate  {exec()글수정 }         ← controller [3번지]   controller.exec();   //글수정
 2번지BoardSelector {exec()글읽기 }         ← controller [2번지]   controller.exec();   //글읽기
 1번지BoardInsert   {exec()글쓰기 }         ← controller [1번지]   controller.exec();   //글쓰기
  						                    controller [null]     주소 못담았어.
*/


///////////////////////////////////////////////////////////
//3. 메인 클래스 작성 
public class InterfaceEx001 {
	public static void main(String[]args) {
        Board controller = null; 
        controller = new BoardInsert();  controller.exec();  // 글쓰기 기능
        controller = new BoardSelect();  controller.exec();  // 글읽기 기능
        controller = new BoardUpdate();  controller.exec();  // 글수정 기능
        controller = new BoardDelete();  controller.exec();  // 글삭제 기능 

		 /*
		   if(controller instanceof Object     ) {System.out.println("코드");}
		   if(controller instanceof BoardInsert) {System.out.println("글쓰기");}
		   if(controller instanceof BoardSelect) {System.out.println("글읽기");}
		   if(controller instanceof BoardUpdate) {System.out.println("글수정");}
		   if(controller instanceof BoardDelete) {System.out.println("글삭제");}
		   */

        
		//4.  실행 결과
		//코드
		//글쓰기
		//글읽기
		//글수정
		//글삭제

        
	}//end main
}//end class
///////////////////////////////////////////////////////////

/*연습문제1) 게시판 기능을 인터페이스로 구현하기
패키지명 :  package com.company.java013_ex;
클래스명 :  public class InterfaceEx001

*/
---
---
package com.company.java013_ex;
//Q. Driver 클래스를 작성하시오. 
//1. 상속도
/*
			Object 
			   ↑
			Vehicle   {public abstract void run();}
			↑     ↑
	MotorCycle     Car
	{@run(){     {@run(){
	오토바이가 		  자동자가 
	달립니다.}}         달립니다.}}
	
	1. 인터페이스는 설계클래스 (상태: public static final / 행위: public abstract)
				mtehod area[공용] , new X , 생성자 X, this 각각 X(공용) , {}X - 구현부 없음.
	2. 부모 = 자식 : 한가지타입(부모)으로 여러객체(자식, 자식,,,,,,자식들) 관리
		     업캐스팅 / 타입캐스팅 X / 부모에서(주체) 메서드호출시 오버라이드가 되서 자식메서드가 호출
*/

//Q.주어진조건
interface Vehicle { public void run(); }
class MotorCycle implements Vehicle { @Override public void run() { System.out.println("오토바이가 달립니다."); } }
class Car        implements Vehicle { @Override public void run() { System.out.println("자동차가 달립니다."); } }

class Driver {
	void drive ( Vehicle v ){ v.run(); } 
} // --> run - 실행.

/* --------------------------------------------------------------------
method[공통 : static, final, abstract]          Vechicle, MotorCycle, Car, Driver, InterfaceEx002
-----------------------------------------------------------------------
heap[동적]                                | stack[지역]
										void drive(Vehicle v)         { v.run();} 
								        driver.drive(MotorCycle:3번지) { Vehicle v = mo;  v(3번지).run();} 
									    driver.drive(car:2번지)        { Vehicle v = car; v(2번지).run();} 
3번지 MotorCycle {@run() 자동차달려    }    ← MotorCycle [3번지]
2번지 Car        {@run() 자동차달려    }    ← Car        [2번지]
1번지 Driver     {drive(Vehicle v); }    ← driver     [1번지]
                                         | main      
-----------------------------------------------------------------------

*/


///////////////////////////////////////////////////////
//2. 사용법
public class InterfaceEx002 {
	public static void main(String[]args) {
		  //3. 메인화면		
	      Driver driver = new Driver();
	      
	      Car car = new Car();
	      MotorCycle mo = new MotorCycle();
	      //The method drive (Car) is undefined for the type Driver -- 오류 
	      //메서드기본구조 : 리턴값 메서드명    ()      {}
	      //              void drive (Vehicle v ){}
	      driver.drive(car);
	      driver.drive(mo);
	      
			//4. 실행화면
			//자동차가 달립니다.
			//오토바이가 달립니다.

	      
	      
	}
}
///////////////////////////////////////////////////////
/*연습문제2)  
패키지명 :  package com.company.java013_ex;
클래스명 :  public class InterfaceEx002
*/
---
---
package com.company.java014;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;

//1. 콜렉션프레임워크 - 동적배열
//2. 배열의 단점개선  - 한가지 자료형으로 사이즈 고정


public class List001 {
	public static void main(String[]args) {
		//Step1. Array
		String [] arr = new String[3]; // String 자료형 공간 3개 [고정]
		arr [0] = "헐크";
		System.out.println(Arrays.toString(arr));
		
		//Step2. 동적배열 - List 사용법(1)
		List list = null; //  ctrl + shift + o  /F2(고정) 
		     list = new ArrayList();  //자식
		     list = new LinkedList(); //자식
		     list = new Vector();     //자식

		//Step3. <> 
		List<String> list2 = new ArrayList<String>();    // 자료형에 상관없이 내가 넣고 싶은 만큼
		list2.add("one");  	             //Object obj = 1; 
		//list2.add(1);                    //Object obj = 1; 
		list2.add(new String ("two"));   //Object obj = new String("two"); 
		//list2.add(3.14);
		//list2.add('A'); 
		System.out.println(list2);
		
		//Step4. add(추가), get(가져오기), size(갯수), remove(삭제), contains ■ 
	    List<String> list3 = new ArrayList<String>();
		list3.add("apple");		
		list3.add("banana");
		list3.add("apple");
		list3.add("coconut");
		
		System.out.println(list3);
		System.out.println(list3.get(3) ); 
		System.out.println(list3.size() );
		System.out.println( list3.remove(0) + "/" + list3);
		System.out.println(list3.contains("melon"));
		System.out.println(list3.contains("coconut"));

	}
}
---
---
package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;

//1. 콜렉션프레임워크 = 동적배열
//2. List - [기차] - 순번[index], 중복허용 
//3. add, get, size, remove, contains

////////////////////////////////////////////////////////////////
public class ListEx001 {
	public static void main(String[]args) {
		//String [] arr = new String[3];
		//arr[0] = "red";
		//arr[1] = "green";
		//arr[2] = "blue"; 
		//System.out.println(Arrays.toString(arr));
		
		List <String> colors = new ArrayList<>();
		colors.add("red");
		colors.add("green");
		colors.add("blue");
		//colors.add(1);
		
		System.out.println("1 : " + colors);
		System.out.println("2 : size + get ");
		for(int i=0; i<colors.size(); i++) {System.out.print(colors.get(i) + "\t");}
		
		System.out.println("\n3 : 향상된 for문 > ");
		for(String c : colors ) {System.out.println(c + "\t");}
	}
}
////////////////////////////////////////////////////////////////
/*연습문제1)  Collection  Framework
패키지명 : com.company.java014_ex
클래스명 : ListEx001
다음과 같이 코드를 작성하시오.
 1.  ArrayList이용해서 colors 만들기
 2. red, green, blue 데이터 추가
 3. 출력
*/
---
---
package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

///////////////////////////////////////////////////////////////////// 
public class ListEx002 {
	public static void main(String[]args) {
		//변수
		List<String> numbers = new ArrayList<>(); //add, get, size, remove, contains
		int num=-2;
		Scanner scanner = new Scanner(System.in);

		//입력
		numbers.add("one");
		numbers.add("two");
		numbers.add("three");
		System.out.println("숫자를 입력하세요.");
		num = scanner.nextInt();

		//처리  if / switch/ for
		// 만약 1이라면,  numbers.get(0);  --> one
		// 만약 2이라면,  numbers.get(1);  --> two 
		// 만약 3이라면,  numbers.get(2);  --> three
		//     if(num==1) {System.out.println(numbers.get(0));}
		//else if(num==2) {System.out.println(numbers.get(1));}
		//else if(num==3) {System.out.println(numbers.get(2));}
		//else 			{System.out.println("1,2,3이 아니다.");}
		
		//	 if(num==1) {numbers.get(0);}   numbers.get(num-1);
		//else if(num==2) {numbers.get(1);}   numbers.get(num-1);
		//else if(num==3) {numbers.get(2);}   numbers.get(num-1);
	

		//출력 
		System.out.println(numbers.get(num-1));
		
		
		     
	}//end main
}//end clas
/////////////////////////////////////////////////////////////////////


/*연습문제2)  Collection  Framework
패키지명 : com.company.java014_ex
클래스명 : ListEx002
1.  numbers ArrayList 만들기
2.  one, two, three 데이터 추가
3.  사용자에게 1,2,3 입력받기
4.  1을 입력받으면 one 출력
    2를입력받으면 two 출력
    3을입력받으면 three 출력
*/
---<!--day028.md-->
## JAVA
■ BANK
◎1. 시스템 개요 
프로젝트명: Bank Management System 
목적     : 사용자 계좌관리 기능을 제공하는 콘솔기반 은행시스템
기능     : 계좌생성, 입금, 출금, 계좌삭제, 로그인 
기술스택  : 
- 사용언어 - JAVA 
- 설계패턴 - MVC 
- UML    
특징     : 객체지향 원칙준수, 확장성 높은 구조


◎2. 클래스구조 설명
- MVC (Model, View, Controller)
1. 유저정보모델 : UserInfo
    - 사용자 계좌정보를 저장하는 데이터 모델
    - String id, String pass, doyble balance
    - List<UserInfo> users; 

2. 기능       : 인터페이스 & 클래스 
인터페이스: 공통동작정의
<<intereface>> BankController {  exec(ArrayList<UsertInfo>users );  } 

구현클래스:
    Login, Add, Deposit, Widthdraw, Delete

3. 메인컨트롤러 
<<class>> Bank_Main  
멤버변수 :   ArrayList<UserInfo>users, BankController controller
멤버함수 :   menu(), main() 

●3. UML 클래스 다이어그램  
Bank_Main → UserInfo <연관관계>
Bank_Main → BankController <의존관계> (Login, Add, Deposit, Widthdraw, Delete 사용.)
BankController ← Login, Add, Deposit, Widthdraw, Delete <실체화관계>

<<interface>>BankController 
....△ ....△   ....△    ....△     ....△
Login,  Add,   Deposit, Widthdraw, Delete

Bank_Main → UserInfo <연관관계> 실선화살표 - 멤버변수로 포함
Bank_Main → BankController <의존관계> 점선화살표 - 인터페이스를 일시적으로 사용,
                                                Login, Add 교체해서 사용.

참고1)
※ 연관관계  : 어떤 역할 수행(long)        - 실선 화살표
※ 의존관계  :             (short)       - 점선 화살표
※ 실체화관계 : 인터페이스                 - 속이빈화살표 점선  -   can do this 실체화관계

※ 일반화관계 : 상속                      - 속이빈화살표 실선  -   is a (고양이는 동물이다.)
※ 집합관계   : 합성관계 - 생성자에서new    - 속이찬 다이아몬드 ◆
               집약관계 - 생성자에서 참조  - 속이빈 다이아몬드 ◇

참조)    연관관계        의존관계
<<Driver>> ―――> <<Car>> ----> <<GasPump>>

class Driver{
    private Car car; //멤버변수 - 연관관계 
    public void fillGas(GaPump p){  p.getGas(amount);  } //연산의 인자(참조값) - 의존관계
}



◎4. 기능흐름도 or 시퀀스다이어그램 

◎5. 확장가능성 

◎6. 

---
package com.company.java014_ex;

import java.util.ArrayList;
import java.util.List;

/////////////////////////////////////////////////////////////////
public class Repeat029 {
	public static void main(String[]args) {
		List<String> colors = new ArrayList<>();
		colors.add("red");
		colors.add("green");
		colors.add("blue");
		System.out.println(colors);
		
		System.out.println("1: " + colors);
		System.out.println("2: size + get");
		System.out.println("\n1. for문 > ");
		for(int i=0; i<colors.size(); i++) {System.out.println(colors + "\t");}
		
		System.out.println("\n2. for문 > ");
		for(String c : colors) {System.out.println(c + "\t");}
	}
}
/////////////////////////////////////////////////////////////////
---
---
package com.company.bank005_interface;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Bank_Main {
	//멤버변수 
	private List<UserInfo> users; //add, get, size, remove, contains
	private BankController[] controller;
	
	public Bank_Main() {
		users	   = new ArrayList<>();
		controller = new BankController[]{
				new Login(), new Add(), new Show(),
				new Deposit(), new Withdraw(),  new Delete()
		};
	}
	//멤버함수(메뉴판)
	public void menu() {
		//변수 
		int num = -1;
		Scanner scanner = new Scanner(System.in);
		//입력 + 처리
		//1. 메뉴판 무한반복 - 입력
		//2. 메뉴가 1 - 사용자추가 Add()
		//3. 메뉴가 2,3,4,5 - 로그인한 후에 Login()
		//   		각각의 기능 2. Show(), 3. Deposit() 4. WithDraw(), 5. Delete()
		//   controller[2].exec(users); controller[3].exec(users)'
		/*
		 Q1. 무한반복 + 각번호 입력받으면 ~ 기능입니다. 출력 
		 Q2. 입력받은 번호가 1번이면 유저추가
		 Q3. 입력받은 번호가 2,3,4,5 이면
			//1. 유저추가
			//2,3,4,5
			// 1) Login 2) 2,3,4,5 각각에서 처리해야할 일
		
		 
		  while(9가아니라면 계속하기){
		  	  //메뉴판 출력
		  	  if(입력받은 번호가 1이라면){유저추가}
		  	  else if(9면){종료출력구문}
		  	  else {입력받은 번호가 2,3,4,5번이면} 
		  }
  		  	  1) Login처리
		  	  2) 2,3,4,5각각에서 처리해야할 일
		  	      switch(번호){
		  	          2라면: 조회처리 break
		  	          3라면: 입금처리 break
		  	          4라면: 출금처리 break
		  	          5라면: 삭제처리 break
		  	      }
		*/
		
		while(num != 9) { //9가 아니라면 계속.
			//메뉴판 출력
			System.out.println(users);
			System.out.println("🌟💰WELCOME TO BANK SYSTEM💰🌟"+"\n[1] ➕ 계좌 추가" + "\n[2] 🔍 계좌 조회" +
						       "\n[3] 💵 입금하기" + "\n[4] 💸 출금하기" + "\n[5] 🗑️ 계좌 삭제 " 
						       	+ "\n👉 번호를 선택하세요:");
			num=scanner.nextInt();
			int find=1; //찾은 유저정보 or 0 로그인 or 1 계좌추가
			//add, get(유저번호), size, remove(유저번호), contains()
			//추가 
			// 1번:controller[1].exec(users); - users.add(new UserInfo("id", "pass", 1 ) );
			// 2번: 로그인해서 : users.get(번호); /users.remove(번호)
			// 조회: users.get(번호)
			// 입금: users.get(번호) / users.setBalance(입금받았음.)
			// 삭제: usrs.remove(번호)
			//controller[2].exec(users, index);
//				 if (num == 1) {System.out.println("유저추가");  }
//			else if (num == 9) {System.out.println("종료합니다.");}
			if(num>=2 && num<=5) {
				find=controller[0].exec(users,0);
				if(find == -1) {System.out.println("유저정보를 확인해주세요~!"); continue;}
				}
			
			
//			controller[num].exec(users);
			controller[num].exec(users,find);
//			UserInfo finduser = controller[0].exec(users);//로그인 
		}//end while
			//else {
				//controller[0].exec(users); //로그인
				//switch (num) {
				//case 2: /*Show*/     controller[2].exec(users); break;
				//case 3: /*Deposit*/  controller[3].exec(users); break;
				//case 4: /*Withdraw*/ controller[4].exec(users); break;
				//case 5: /*Delete*/   controller[5].exec(users); break;
				//}//end switch	  
			//}//end else
	}//end menu
/////////////////////////////////////////////////////////////	
	public static void main(String[]args) {
		new Bank_Main().menu();		//start
			//출력
			//🌟💰 WELCOME TO BANK SYSTEM 💰🌟
			//
			//[1] ➕ 계좌 추가
			//[2] 🔍 계좌 조회
			//[3] 💵 입금하기
			//[4] 💸 출금하기
			//[5] 🗑️ 계좌 삭제  
			//
			//👉 번호를 선택하세요:
		
		
		
	}//end main
}//end class
/////////////////////////////////////////////////////////////	
---
---
package com.company.bank005_interface;

public class UserInfo {
	private String id;
	private String pass;
	private double balance;
	
	//생성자
	public UserInfo() { super(); }
	public UserInfo(String id, String pass, double balance) {
		super();
		this.id = id;
		this.pass = pass;
		this.balance = balance;
	}
	//toString
	@Override public String toString() { return "UserInfo [id=" + id + ", pass=" + pass + ", balance=" + balance + "]"; }
	
	//getters+setters
	public String getId() { return id; }  public void setId(String id) { this.id = id; }
	public String getPass() { return pass; }  public void setPass(String pass) { this.pass = pass; }
	public double getBalance() { return balance; }  public void setBalance(double balance) { this.balance = balance; }
	
	
	

}
---
---
package com.company.bank005_interface;

import java.util.List;

public interface BankController {
	  //  void exec(List<UserInfo>users);
	  //UserInfo exec(List<UserInfo>users);
		  int exec(List<UserInfo>users, int find);
		  
}
---
---
package com.company.bank005_interface;

import java.util.List;
import java.util.Scanner;

public class Login implements BankController {
	@Override public int exec(List<UserInfo> users, int find) {
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 아이디와 비밀번호 입력받기
		System.out.println("[1] 아이디입력> "); String tempid = scanner.next();
		System.out.println("[2] 비밀번호입력>"); String temppass = scanner.next();
		//처리 - users에서 아이디와 비밀번호 맞는 유저번호 찾기 - 찾앗으면 나오기 / 못찾았으면 -1
		//내가 입력받은아이디와 유저 0번째 users.get(0)의 아이디, 0번이 유저번호
		//if( 내가입력받은 아이디와 유저1번째 users.get(1)의 아이디 ){ 1번이 유저번호}
		for(int i=0; i<users.size(); i++ ) {
		if(tempid.equals(users.get(i).getId() ) && temppass.equals(users.get(i).getPass() )  ) {
			return i;
			}
		}
		//출력
		return -1;
		}
}
---
---
package com.company.bank005_interface;

import java.util.List;
import java.util.Scanner;

public class Add implements BankController {
	//@Override public UserInfo exec(List<UserInfo> users) {return null;}
	//@Override public void exec(List<UserInfo> users, int find) {}
	
	@Override 
	public int exec(List<UserInfo> users, int find) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("[1] 사용할 아이디 > "); String id=scanner.next();
		System.out.println("[2] 사용할 비밀번호 > "); String pass=scanner.next();
		System.out.println("[3] 입금할 금액 > "); double balance=scanner.nextDouble();

		users.add(new UserInfo(id,pass,balance)  );
		System.out.println("사용자 추가완료되었습니다.");
		return 1; //넣고 싶은 숫자
	}
}
---
---
package com.company.bank005_interface;

import java.util.List;
import java.util.Scanner;

public class Withdraw implements BankController {
	@Override public int exec(List<UserInfo> users, int find) {
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 입금할 금액 입력받기
		System.out.println("출금할 금액을 입력해주세요 > "); double balance = scanner.nextDouble();
		//처리 - 해당유저를 찾아서 금액 빼기
		UserInfo u = users.get(find);
		u.setBalance(u.getBalance() - balance);
		//출력 - 출금이 완료되었습니다.
		System.out.println("출금이 완료되었습니다 > " + u);	
		return 0;
		}
}

// users.add( new UserInfo("id" , "pw" , 1))
// users.get(0) 0번째유저
// users.size() 유저의갯수
// users.remove(0) 0번째유저 삭제
---
---
package com.company.bank005_interface;

import java.util.List;
import java.util.Scanner;

public class Deposit implements BankController {
	@Override public int exec(List<UserInfo> users, int find) {
		//Deposit : users.get(유저번호)
		//변수
		Scanner scanner = new Scanner(System.in);
		//입력 - 금액 입력받기
		System.out.println("입금할 금액을 입력 > "); double balance = scanner.nextDouble();
		//처리 - 해당유저의 금액에 추가
		UserInfo u = users.get(find);
		u.setBalance(u.getBalance()  +  balance);
		//출력 - 입금이 완료되었습니다.
		System.out.println("입급이 완료되었습니다. > " + u);
		return 0;
		}
}
---
---
package com.company.bank005_interface;

import java.util.List;

public class Delete implements BankController {
	@Override public int exec(List<UserInfo> users, int find) {
		//변수
		//처리
		UserInfo u = users.remove(find);
		//출력
		System.out.println("정보를 삭제했습니다. > " + u);
		return 0; 
		}
}
//users.add( new UserInfo("id" , "pw" , 1))
//users.get(0) 0번째유저
//users.size() 유저의갯수
//users.remove(0) 0번째유저 삭제
---
---
package com.company.bank005_interface;

import java.util.List;

public class Show implements BankController {

	@Override
	public int exec(List<UserInfo> users, int find) { // Show : users.get(유저번호)
		//출력 - users.get(유저번호).getId(), users.get(유저번호).getPass() users.get(유저번호).getBalance()
		
		UserInfo info = users.get(find);
		
		System.out.println("ID >" + info.getId() ); 
		System.out.println("PASS >" + info.getPass() ); 
		System.out.println("BALANCE >" + info.getBalance() ); 
		
		// users.add( new UserInfo("id" , "pw" , 1))
		// users.get(0) 0번째유저
		// users.size() 유저의갯수
		// users.remove(0) 0번째유저 삭제
		return 0;
		}
}
---<!--day029.md-->
---
# JAVA (20251010,20251013 ~20251017)
---
package com.company.java013_total;
//1. 클래스는 부품객체
//2. 클래스는 상태(멤버변수), 행위(멤버함수)
//3. 클래스( 설계도 )  →  장난감 조립 → 사용하는 방법
// 	  Coffee a1 = new Coffee("까페라떼" , 2, 4000)
//	  3-0. 장난감 이름: Coffee a1
//	  3-1. 장난감조립 : new → heap area 메모리빌리고 객체 생성
//	  3-2. 장난감 만드는 방법 : Coffee("까페라떼" , 2, 4000) , 아무말 안하면? → 아메리카노 1잔, 2000원
// 	  3-3. 장난감 갖고 놀수 있게 : a1 (어디에다가 만들었는지 번지) 

//////////////////////////////////////////////////////////////// 1단계 설계도
class Coffee{
	//상태(멤버변수) //인스턴스 변수 - heap area - new 관련O - this. 관련 - 각각
	String name;
	int price, num; 
	
	//행위(멤버함수)
	//생성자
	public Coffee() {
		super();
		this.name = "아메리카노";
		this.num = 1;
		this.price = 2000;
	}
	public Coffee(String name,  int num ,int price) {
		super();
		this.name = name;
		this.num = num;
		this.price = price;
	}
	//toString
	@Override
	public String toString() {
		return "Coffee012 [name=" + name + ", price=" + price + ", num=" + num + "]";
	}
	
	void show() {
		System.out.println("==========커피\r\n");
		System.out.println("커피이름 : " + this.name );
		System.out.println("커피잔수 : " + this.num );
		System.out.println("커피가격 : " + this.price*this.num );
	}
}//end class Coffee

////////////////////////////////////////////////////////////////
public class Repeat001_oop {
	public static void main(String[]args) {
		Coffee a1 = null; //2번지에 있는 클래스 자료형으로 a1이라는 장난감만들꺼야라고 했지......장난감 만든적은 없음.
			   a1 = new Coffee("까페라떼" , 2, 4000); //2단계 장난감조립
		// 3. a1 (1000번지)   = 1. new 메모리빌리고(1000번지) 객체(장난감)생성 2.Coffee 생성자로 장난감 만드는 방법 - 초기화
		a1.show(); //3단계 갖고놀기(1000번지). show()
		Coffee a2 = new Coffee(); 
		// 3. a2 (2000번지)   = 1. new 메모리빌리고(2000번지) 객체(장난감)생성 2.Coffee 생성자로 장난감 만드는 방법 - 초기화
		a2.show();//3단계 갖고놀기(2000번지). show()
	}//end main
}//end class
////////////////////////////////////////////////////////////////

/*
	초기화순서 
	1. 기본값   {name = null, num= 0, price=0 / show()}
	2. 명시적   {name = null, num= 0, price=0 / show()}
	3. 초기화블록 {name = null, num= 0, price=0 / show()}
	4. 생성자 {name = "아메", num= 1, price=2000 / show()}
*/


/************** 
 Repeat001_oop.java
 Repeat001_oop.class
[method : 정보보관] 
[1번지]: public Repeat001_oop.class ★ 
[2번지]: Coffee.class
------------------------------------------------------------
[heap:동적]                           			|    [stack:지역] 
												   ← a2(2000번지).show() @54번째줄  
2000번지												                    (a2 실제로 만든 장난감, 객체, 인스턴스) 
{name="아메", num=1, price = 2000}				   ← a2(2000번지).show() @52번째줄
------------------------------------------------------------
												   ← a1(1000번지).show() @51번째줄
1000번지 
{name-까페라떼, num=2, price=4000 / show() }		   ← a1(1000번지) @49번째줄
													 a1(null)    @48번째줄
												|    main ★
------------------------------------------------------------
*/
---
---
package com.company.java013_total;
//1. 클래스변수(static), 인스턴스변수(new:heap), 지역변수(stack)로 구분하고
//2. 오류날만한 코드를 적으시오.

class A{
	int a; //인스턴스 변수 - heap area - new O - this. 관련있음
	static String company="풀스택개발자과정"; //클래스변수 - method area - new X - A.company - this. X
										  //"풀스택개발자과정" = 명시적초기화
	static { company="MSA풀스택개발자과정"; }
//	void method() {int a; System.out.println(a);} //지역변수 void method() 안에서만 사용 ★ 오류나는 위지는 여기~~!
//	오류내용. The local variable a may not have been initialized
	//해결)
	void method () {int la =0; System.out.println(a);}
}//end class A




/////////////////////////////////////////////////////////
public class Repeat002_class {
	public static void main(String[]args) {
		//1. 사용방법 : 설계도 - 장난감조립 ( new 생성자불러서 ) - 갖고놀기
		//2. 위의 사용방법 툴이 깨짐. 
		System.out.println(A.company); // 1번만 메모리공간이 만들어지고 바로 직접적으로 사용가능
//		Company c1 = new c1 ();
//		c1.method(){}; 
		
	}
}
/////////////////////////////////////////////////////////
/*
		초기화순서			         		기본값 				명시적초기화			초기화블록				생성자  
시점1)지금바로 사용가능 company				null			  풀스택개발자과정	     MSA풀스택개발자과정
시점2)필요시 객체만들때마다 생성 - a    		 0		     		x 값은 0    			x 값은 0				x 값은 0
시점3)메서드변수 int la						쓰레기값 o  			x 쓰레기값 o          x 쓰레기값 o          x 쓰레기값 o
	new 하고나서도
	method() 사용할지말지모름. 		★ 지역변수는 개발자가 직접 초기화


*/
/************** 
[method : 정보보관]  A.class, public Repeat002.class / static A.company
------------------------------------------------------------
[heap:동적]                             |       [stack:지역] 
											   println(A.company)
									   |        main
------------------------------------------------------------
*/
---
---
package com.company.java013_total;
//Q. 다음 클래스를 작성 후, 에러가 난다면 에러가 나는 이유는?
//A. 인스턴스 변수가 아닌데, this.를 붙였기 때문
/*  초기화순서						기본값			명시적초기화		초기화블록 		생성자
 *  당장바로사용가능!
1) [static] su 					 0				10 				x여전히 10 		관련없지만static 사용가능 일단 여전히 10
2) [static] basicpay2			 0				x 여전히 0	    20000			관련없지만static 사용가능 일단 여전히 20000
--------------------------------------------------------------------------------------------------
 *new 객체만들때 생성 - 장난감만들때 필요시 생성
 *장난감마다 각각 - 생성된 장난감 위치 번지 생김 this
 *3) pay                0       10000 			x 여전히 10000 변경가능 여전히 10000
*/



class Sawon005{
	//(1)인스턴스변수 - heap area - new O - 실체화 - this. 각각 - 생성자
	int pay=10000; 
	//(2)클래스변수 - method area - new X - [바로사용가능해야함.]
	static int su = 10; //명시적초기화
	
//	static int basicpay = pay; //###000  / basicpay 메모리상에 올라가 있음, pay는 new 해서 사용해야함, 시점이 안맞음. 
	// ★ static에서는 instatnce 사용불가
	
	static int basicpay2; 
	static {basicpay2 = 20000;} //초기화블록
	
	//(3) 클래스메서드 - method - new X - [1.바로사용가능]
	public static void showSu() {System.out.println(su);} //###001
	
	//(4) 인스턴스메서드 - heap area - new O - 실체화 - this. 각각 - 생성자 [2. new해서 객체만들어서 사용]
	public static void showPay() {System.out.println(this.pay);}//###002
	public void showAll001() {
		System.out.println(su); //클래스변수 사용가능
		System.out.println(this.pay); //인스턴스 변수 사용가능
	}
	//(5) 클래스메서드 - method - new X - [1.바로사용가능]
	public void showAll002() { 
//		showAll001();  // ★ static 에서는 instance 사용불가 - 시점이 안맞음
//		System.out.println(this.pay); //★ static 에서는 instance 사용불가 - 시점이 안맞음
	}

}//end class Sawon005

//////////////////////////////////////////////////////////////////////
public class Repeat003_member {
	public static void main(String[]args) {
		Sawon005 sola = new Sawon005();
		sola.showAll001();
		
	}//end main
}//end class
//////////////////////////////////////////////////////////////////////
---
---
package com.company.java013_total;
//코드가 출력되도록 수정 
//옵션1. 분류타입인  division, jumin번호는 바뀌면 안되게 설정하고, 
//옵션2. 각 유저마다 데이터를 저장할 수 있게 만들기.
//A,B,C,D 4가지 타입으로 분류할 수 있다.
//1. 클래스는 부품객체
//2. 클래스는 상태와 행위
//3. 상태 - 인스턴스변수 ★, 클래스변수, 지역변수
//4. 바뀌면 안됨 - static, final - 하지마★ (멤버변수 - 상수, 멤버메서드 - 오버라이딩하지마, 클래스 - 상속받지마)
/*
	초기화순서 		 	 초기값				 명시적초기화 				초기화블록 				생성자
	division			\u0000				 x 유지 \u0000            x 유지 \u0000				처리 User004('B', "200101-1234567")
	jumin			    null				 x 유지 null            x 유지 null				처리 User004()  \u0000, null
*/

//////////////////////////////////////////////////// 1단계 설계도
class User004{
	final char division; // \u0000
	final String jumin;  // null
	
	public User004() {super();
	this.division='A';
	this.jumin = "123456-1234567";
	} //필드있는 생성자를 만들면 자동생성이 깨짐. 
	public User004(char division, String jumin) { super(); this.division = division; this.jumin = jumin; 	}
	@Override
	public String toString() {
		return "User004 [division=" + division + ", jumin=" + jumin + "]";
	}
	
}


//////////////////////////////////////////////////////////
public class Repeat004_final {
	public static void main(String[]args) {
		User004 c1 = new User004('B', "200101-1234567"); //2단계 장난감만들기
		System.out.println(c1);
		User004 c2 = new User004(); //2단계 장난감만들기
		System.out.println(c2);
	}//end main
}//end class
//////////////////////////////////////////////////////////
---
---
package com.company.java013_total;

class Score{  //## public > protected> package(default) 아무것도 없는거 >  private
	// 멤버변수 - private
	private String name;    
	private int kor, eng, math;   
	private double avg;
	private String pass;
	
	//멤버함수 - 기본생성자, 필드있는생성자, toString, getters/setters
	public Score() { super(); }
	public Score(String name, int kor, int eng, int math, double avg, String pass) { super(); this.name = name; this.kor = kor; this.eng = eng; this.math = math; this.avg = avg; this.pass = pass; }
	public Score(String name, int kor, int eng, int math) { super(); this.name = name; this.kor = kor; this.eng = eng; this.math = math; }
	
	@Override public String toString() { return "Score [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + ", avg=" + avg + ", pass=" + pass + "]"; }
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}

class ScoreProcess{
	public void process_avg(Score[] std) {
		for( Score s :   std ) {   s.setAvg(   ( s.getKor() + s.getEng() + s.getMath()  ) / 3.0     );  }
	}//  한명씩 꺼내와서   유저배열에서

	public void process_pass(Score[] std) { 
		for( Score s :   std ) {   //  한명씩 꺼내와서   유저배열에서
			s.setPass(  s.getAvg()<60  ? "불합격":  
							   s.getKor()<40 ||  s.getEng() <40 || s.getMath() <40 ? "재시험" : "합격"   );
		}
	}
}



class ScorePrint{
	public void show(Score[] std) {
		 System.out.println("=============================================================\r\n"
		+ "이름\t국어\t영어\t수학\t평균\t합격여부\r\n"
		+ "======================================================================");
		 for(int i=0; i<std.length; i++) {
			 System.out.println(std[i].getName()  + "\t" + std[i].getKor()  + "\t" +std[i].getEng()  + "\t" 
						+  std[i].getMath()  + "\t" +  String.format("%.2f", std[i].getAvg())   
						+ "\t" +  std[i].getPass());
		 }
	}
}

////////////////////////////////////////////////////////////
public class Repeat005 {
	public static void main(String[]args) {
		Score[] std = new Score[3];
		std[0] = new Score("아이언맨", 100, 100, 100);
		std[1] = new Score("헐크", 90, 60, 80);
		std[2] = new Score("블랙펜서", 20, 60, 90);
		
		ScoreProcess process = new ScoreProcess();
		process.process_avg(std);
		process.process_pass(std);
		
		ScorePrint print = new ScorePrint();
		print.show(std);
		
	}//end main
}//end class
////////////////////////////////////////////////////////////
---
---
package com.company.java013_total;
/*
	1. 클래스는 부품객체
	2. 상태와 행위
	3. 상속? 재사용
*/
//1. 클래스를 상속하는 이유는? 부모 클래스에서 자식 클래스의 내용을 출력하기 위해(반대도 가능.) = 재활용할려고
//2. 상속도   >>C1 myc = new C1();
/* 
	Object		 #4 Object(){                     #5} 객체생성 
	  ↑
	  A1     {a} #3 A1(){                    #6. a=0} 
	  ↑
	  B1 	 {b} #2 B1(){                    #7. b=0}
	  ↑
	  C1 	 {c} #1 C1(){                    #8. c=0}
	  
	  객체호출순서 C1() 	B1()  A1()  Object()
	  객체생성순서 Object  A1    B1    C1
*/
/**************    C1 myc = new C1();
[method : 정보보관]  A1.class, B1.class, C1.class,  public Repeat006.class  ★1) 설계도
------------------------------------------------------------
[heap:동적]							|       [stack:지역]
							myc(1번지).a = 10; myc(1번지).b = 20; myc(1번지).C = 30; @50번째줄
Object () {    }
	 A1() { a=0}
	 B1() { b=0}
1번지 C1() { c=0} 					  myc [1번지] @49번째줄
									|  main
------------------------------------------------------------
> 생성자의 인스턴스 변수를 초기화해서 사용가능하게 해준다.
*/

//3. ##을 채우고 출력되는 결과는?
class A1 extends Object { int a; public A1() {super();} }// Object 상속받기
class B1 extends A1 	{ int b; public B1() {super();} }// A1 상속받기
class C1 extends B1 	{ int c; public C1() {super();} 
	public void showC() {
		  System.out.println("상속받은 A클래스의 a : " + a);
		  System.out.println("상속받은 B클래스의 b : " + b);
		  System.out.println("자신멤버의 C클래스의 c: " + c);

	}
}//B1 상속받기

//////////////////////////////////////////////////
public class Repeat006 {
	public static void main(String[]args) {
		C1 myc = new C1();
		myc.a = 10; myc.b = 20; myc.c = 30;
		myc.showC();
	}
}
//////////////////////////////////////////////////
---
---
package com.company.java013_total;



class Papa1 extends Object{  
	int money = 10000;     
	public Papa1() { super(); }
	public void sing() {  System.out.println("GOD-거짓말");  }
}// end class

class Son2 extends Papa1{ 
	int money = 1500;
	public Son2() { super(); }
	@Override public void sing() { System.out.println("빅뱅-거짓말"); }
} // end class

public class Repeat007 {
  public static void main(String[] args) {
	Papa1 mypapa = new Son2();    
	System.out.println(mypapa.money);   //10000
	mypapa.sing();     // 빅뱅 
	System.out.println(((Son2)mypapa).money); // 1500 출력되게 해주세요.
  }
}
/*
[method : 정보보관] Papa1, Son2 , Repeat007
------------------------------------------------------------
[heap:동적]            			 			| [stack:지역] 
> 생성자가 인스턴스변수를 초기화해서 사용가능하게 해준다.
	   Papa1() {money = 10000 / -----   }
[1번지] Son2()  {money = 1500 / @sing 빅뱅}  ← Papa1 mypapa [1번지] {money = 10000 / @sing }  @19번째줄
											|  main
------------------------------------------------------------
*/

/*
Object
  ↑
Papa1 {money = 10000 / @sing GOD}
  ↑
 Son2 {money = 1500 / @sing 빅뱅}	  	  
*/
---
---
package com.company.java013_total;
/*
Q8.	 |	   abstract 		vs		     interface
-----------------------------------------------------------
	 | 둘다 설계가 가능한 클래스
-----------------------------------------------------------
공통점 | 자식객체를 통해서 코드를 구현
-----------------------------------------------------------
차이점 |	추상화 정도가 interface가 더 크다. 			        
-----------------------------------------------------------
abstract   - 인스턴스변수, 인스턴스메서드 사용가능
interface  - 상수(public static final), abstracat메서드
-----------------------------------------------------------

*/


////////////////////////////////////////////////////////////
public class Repeat008 {
	public static void main(String[]args) {
		
	}
}
////////////////////////////////////////////////////////////
---
---
package com.company.java013_total;

/* interface - can do this
Driver	......>			Vehicle { run() }
			-----△							-----△
		MotorCycle								Car
		{helmet() , @run() }				{@run() }
*/


interface Vehicle{public void run();}
class MotorCycle implements Vehicle{
	@Override public void run()
	{System.out.println("오토바이가 달립니다.");}
	public void helmet() {System.out.println("헬멧을 착용합니다");}
}
class Car implements Vehicle{
	@Override public void run()
	{System.out.println("자동차가 달립니다.");}
}
class Driver{
	public void drive(Vehicle v){  //의존관계  - 다형성( 부모객체로 여러자식객체들을 관리 ) / 부모.메서드() 오버라이드되서 자식메서드
		//자동차일때는 자동차가 달립니다. /오토바이 헬멧,달린다 
		if(v instanceof MotorCycle) { ((MotorCycle) v).helmet();}  // helmet은 부모에게 없고 자식에게 있는 최신기술
		v.run();  // 오버라이드되서 자식메서드
	}   
}
public class Repeat009 {
	public static void main(String[] args) {
		Driver driver = new Driver();
		
		MotorCycle motorCycle = new MotorCycle();
		Car car = new Car();
		
		driver.drive(car);  //public void drive(Vehicle v){ 해야할일  }   
		System.out.println("\n\n>>자동차가 고장나서 교통수단을 바꿉니다");

		driver.drive(motorCycle);//public void drive(Vehicle v){  자동차일때는 자동차가 달립니다. /오토바이 헬멧,달린다 }   
	}
}
---<!--day030.md-->
---

---