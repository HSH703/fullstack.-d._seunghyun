package com.company.java007_ex;

import java.util.Arrays;

public class Array2Ex001 {
	public static void main(String[]args) {
		//변수 + 입력
		int [] [] arr2= { {100,200,300,}, //00 01 02
						  {400,500,600}	  //10 11 12
		};
		
		System.out.println(arr2);
		System.out.println(Arrays.toString(arr2));
		System.out.println(Arrays.deepToString(arr2));
		
		//처리 + 출력
		System.out.println("ver-1");
		System.out.print(arr2 [0][0] + "\t"); System.out.print(arr2 [0][1] + "\t");	System.out.print(arr2 [0][2] + "\t");
		System.out.println();
		System.out.print(arr2 [1][0] + "\t"); System.out.print(arr2 [1][1] + "\t");	System.out.print(arr2 [1][2] + "\t");
		System.out.println();
		
		System.out.println();
		
		System.out.println("ver-2");
		for (int kan=0; kan<=2; kan++){System.out.print(arr2[0] [kan] + "\t");}
		System.out.println();
		for (int kan=0; kan<=2; kan++){System.out.print(arr2[1] [kan] + "\t");}
		System.out.println();
		
		System.out.println("ver-3");
		for(int ch=0; ch<=1; ch++) {		
			for (int kan=0; kan<=2; kan++){System.out.print(arr2[ch] [kan] + "\t");}
			System.out.println();
		}
		
		System.out.println("ver-4 .length");
      	for(int ch=0; ch<arr2.length; ch++) { //아파트의 층	
			for (int kan=0; kan<arr2[ch].length; kan++) //층의 칸수
			{System.out.print(arr2[ch] [kan] + "\t");}
			System.out.println();
		}

		
		
	}

}
/*연습문제1)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex001
배열을 이용하여 다음의 프로그램을 작성하시오.   
  
   int[][] arr2={{100,200,300},{400,500,600}};

   이중for 이용해서 출력하기
*/