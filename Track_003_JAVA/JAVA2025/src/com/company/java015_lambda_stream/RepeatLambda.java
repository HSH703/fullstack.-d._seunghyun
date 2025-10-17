package com.company.java015_lambda_stream;
										// (파라미터X) -> {리턴값O}
interface InterC2{String hi();}			// (       ) -> {return}   
										// (파라미터 O ) -> {리턴값X}
interface Ex2{void print(String s); }   // (String s ) -> {      }

public class RepeatLambda {
	public static void main(String[]args) {
			//Inter C2 c = new InterC2(){};
			//익명객체 (1회성)	
			//Ex1)
			InterC2 c1 = new InterC2(){ 
				@Override public String hi() {return "Good Day~!";}
				};
				System.out.println("c.hi()");
			InterC2 c2 = new InterC2(){ 
				@Override public String hi() {return "Good Day~!";}
				};
				System.out.println("c.hi()");
			//람다식 ( )->{ };
			InterC2 c3 = ()->{return "G:ood Day~!";};
			System.out.println( c3.hi() );
			InterC2 c4 = ()-> "G:ood Day~!";
			System.out.println( c4.hi() );

			//Ex2)
			//Ex2 ex2 = (s)->{ System.out.println(s); };
			Ex2 ex3 = System.out::print; //어떤클래스, 어떤메서드
			ex3.print("lambda :)");
			
	}//end main
}//end class
