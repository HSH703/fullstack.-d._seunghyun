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