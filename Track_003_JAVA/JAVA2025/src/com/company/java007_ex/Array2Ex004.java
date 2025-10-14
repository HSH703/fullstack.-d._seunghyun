package com.company.java007_ex;

public class Array2Ex004 {
	public static void main(String[]args) {
		//변수
		char arr[] [] =new char[2] [3]; //00 01 02
									    //10 11 12
		
		
		//		System.out.println("ver-1");
		//		arr[0][0] = 'A'; arr[0][1] = 'B'; arr[0][2] = 'C'; 
		
		//		System.out.println("ver-2");
		//		char data='A';
		//		for(int ch=0; ch<arr.length; ch++) {
		//			for(int kan =0; kan<arr[ch].length; kan++) 
		//			{arr[0][kan]= data++;
		//			}
		//		}

		//		System.out.println("ver-3");
		//		char data = 'A'; 
		//		for(int ch=0; ch<arr.length; ch++) {
		//			for(int kan =0; kan<arr[ch].length; kan++)
		//			{arr[ch][kan] = data++;
		//			}
		//
		//		}
		
		//System.out.println("ver-4");
		//입력
		char data ='A';
		for(int ch=0; ch<arr.length; ch++) {
			for(int kan=0; kan<arr[ch].length; kan++) {arr[ch][kan] = data++;}
			data='B'; //한 층이 끝나면 해야할 일
		}
		
		//출력
		for(int ch =0; ch<arr.length; ch++ ) {
			for(int kan=0; kan<arr[ch].length; kan++) {
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println(); //한 층이 끝나면 해야할 일
		}

		
		
	}

}
/*연습문제4)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex004
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. new 연산자 이용하여 다차원배열만들기
2. for + length 이용해서 대입   
3. for + length 이용해서 출력 
   A   B   C
   B   C   D
*/