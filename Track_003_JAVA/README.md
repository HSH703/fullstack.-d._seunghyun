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