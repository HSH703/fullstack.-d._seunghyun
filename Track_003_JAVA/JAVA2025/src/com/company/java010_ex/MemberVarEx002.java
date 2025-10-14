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



