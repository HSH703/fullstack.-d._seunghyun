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
