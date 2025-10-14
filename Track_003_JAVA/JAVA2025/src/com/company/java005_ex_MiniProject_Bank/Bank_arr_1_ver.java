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

