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
