package com.company.java015;

//////////////////////////////////////////////////////////

interface InterA2{ void hi(); }
interface InterB2{ void hi(String name); }
interface InterC2{ String hi(); }
interface InterD2{ String hi(int num, String name); }
//////////////////////////////////////////////////////////
public class Lambda002 {
	public static void main(String[]args) {
		//interface InterfaceA2{ void hi (); }
		System.out.println("\n\n[STEP1] 매게변수 X, 리턴값 X");
		//1-1. 익명객체 hi 출력 
		InterA2 a  = new InterA2(){
			@Override public void hi() {System.out.println("hi");}
		}; a.hi();
		//1-2. 람다식 () -> {}; 
		InterA2 a2 = ()->{System.out.println("hi2");}; a2.hi();
		InterA2 a3 = ()-> System.out.println("hi3");   a3.hi();  // 처리할 일이 1줄이면? { } 생략 가능. 
																 //여러줄일때는 {} 사용~ ( {} 생략하면 출력 X)
		
		//interface InterB2{ void hi(String name); }
		System.out.println("\n\n[STEP2] 매개변수 O, 리턴값 X");
		//2-1. 익명객체 hi sally!출력
		InterB2 b = new InterB2() {
			@Override public void hi(String name) { System.out.println("hi! " + name); }
		}; b.hi("Sally");
		
		//2-1. 람다식()->{};
		InterB2 b2 = (String name) -> { System.out.println("hi! " + name); 
		}; b2.hi("Alpha");
		InterB2 b3 = (name) -> { System.out.println("hi! " + name); 
		}; b3.hi("buja");
		InterB2 b4 =  name ->  System.out.println("hi! " + name);  //name, age ,,, 복수입력X
		 b4.hi("빨강이");
		
		 //interface InterC2{ String hi(); } 리턴값주는법?
		System.out.println("\n\n[STEP3] 매개변수 X, 리턴값 X");
		//3-1 익명객체 Good: Day출력	
		InterC2 c = new InterC2() {
			@Override public String hi() {return "Good : Day~! ";}	
		};
		System.out.println( c.hi() );
		
		//3-2. 람다식 ()->{};
		InterC2 c2 = ()->{return "G:ood Day~!";};
		System.out.println("c2.hi()");
		
		InterC2 c3 = ()->{return "G:ood Day~!";};
		System.out.println("c3.hi()");
		
		//interface InterD2{ String hi(int num, String name); }
		System.out.println("\n\n[STEP4] 매개변수 O, 리턴값 O");
		//4-1. 익명객체 System.out.println(d.hi( 1, "sally")); //hi sally ★
		//			  System.out.println(d.hi( 2, "sally")); //hi sally ★★
		InterD2 d1 = new InterD2() {
			@Override public String hi(int num, String name) {
				String star = "";
				for(int i=0; i<num; i++) {star+="★";}
				return   "hi" + name + star; 
				}
		};
		System.out.println(d1.hi( 1, "sally"));
		System.out.println(d1.hi( 2, "sally"));

		//4-2. 람다식() -> {};
		InterD2 d2 = (int num, String name)->{
			String star = "";
			for(int i=0; i<num; i++) {star+="★";}
			return   "hi" + name + star; 
		};	
		System.out.println(d2.hi( 3, "alpha")); //hi sally ★★★
		System.out.println(d2.hi( 4, "alpha")); //hi sally ★★★★

		InterD2 d3 = (num,  name)->{
			String star = "";
			for(int i=0; i<num; i++) {star+="★";}
			return   "hi" + name + star;
		};	
		System.out.println(d3.hi( 5, "buja")); //hi sally ★★★★★
		System.out.println(d3.hi( 6, "buja")); //hi sally ★★★★★★
	}//end main
}//end class
//////////////////////////////////////////////////////////






