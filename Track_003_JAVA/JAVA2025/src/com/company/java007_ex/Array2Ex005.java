package com.company.java007_ex;

public class Array2Ex005 {
	public static void main(String[]args) {
		//변수 + 입력
		int [][] arr = {
				{1,1,1},
				{2,2,2},
				{3,3,3}, 
				{4,4,4}
		};
		
		int total=0; double avg=0;
		
		
		//처리-1 (총점구하기)
		//total += arr[0][0];
		//total += arr[0][1];	데이터 누적
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[j].length; j++) { 
				System.out.print(total+=arr[i][j]);
						}
			System.out.println();
		}
		
		//처리-2 12 = 층*칸 = arr.length * arr[0].length
		 avg = (double)total/(arr.length * arr[0].length);
		 
		//출력
		 System.out.println("총점> " + total);
		 System.out.println("평균> " + avg);
		
		
		
		
	}//end main
}//end class

/*연습문제5)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex005
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. 다음의 주어진조건을 이용하여 총점과 평균을 구하시오.

 int[][] arr = {
   { 1, 1, 1,},
   { 2, 2, 2,},
   { 3, 3, 3,},
   { 4, 4, 4,},
 };
 int total=0;  double avg=0.0;
 출력내용:
총점 : 30
평균 : 2.5
*/