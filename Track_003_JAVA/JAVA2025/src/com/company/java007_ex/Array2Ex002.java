package com.company.java007_ex;

import java.util.Arrays;

public class Array2Ex002 {
	public static void main(String[]args) {
		
		int[][] arr2= {
					  {101,102,103}, //00 01 02
					  {201,202,203}  //10 11 12
					  };
		
		
		System.out.println(arr2);
		System.out.println(Arrays.toString(arr2));
		System.out.println(Arrays.deepToString(arr2));
		
		System.out.println("ver-1");
		System.out.print(arr2[0][0] + "\t"); System.out.print(arr2[0][1] + "\t"); System.out.print(arr2[0][2] + "\t");
		System.out.println();
		System.out.print(arr2[1][0] + "\t"); System.out.print(arr2[1][1] + "\t"); System.out.print(arr2[1][2] + "\t");
		System.out.println();

		System.out.println();
		
		System.out.println("ver-2");
		for(int kan=0; kan<=2; kan++){System.out.print(arr2[0][kan] + "\t");}
		System.out.println();
		for(int kan=0; kan<=2; kan++){System.out.print(arr2[1][kan] + "\t");}
		System.out.println();
		
		System.out.println();
		
		System.out.println("ver-3");
		for(int ch=0; ch<=1; ch++) {	//아파트의 층수   아파트 length
			for(int kan=0; kan<=2; kan++){System.out.print(arr2[ch][kan] + "\t");} //층의 칸수 층의 칸 .length
			
			System.out.println();
				}
		System.out.println();

		System.out.println("ver-4");
		for(int ch=0; ch<arr2.length; ch++) {	
			for(int kan=0; kan<arr2[ch].length; kan++){System.out.print(arr2[ch][kan] + "\t");}
			System.out.println();
				}


		
	}
}

/*연습문제2)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex002
배열을 이용하여 다음의 프로그램을 작성하시오.   
  
   int[][] arr2={{101,102,103},{201,202,203}};

   이중for 이용해서 출력하기
*/