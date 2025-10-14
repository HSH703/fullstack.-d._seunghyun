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


