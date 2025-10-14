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