package com.company.java007_ex;

public class Array2Ex003 {
	public static void main(String[]args) {
		//변수 + 대입
		int [][] arr = new int[2] [3]; // 00 01 02
								       // 10 11 12
				
		//System.out.println("ver-1");
		//arr [0][0] = 101; arr[0][1] = 102; arr[0][2] = 103;
		
		//System.out.println("ver-2");
		//int data=1;
		//arr[0][0] = data++; arr[0][1] = data++; arr[0][2] = data++;
		//arr[1][0] = data++; arr[1][1] = data++; arr[1][2] = data++;
		
		//		System.out.println("ver-3");
		//		int data=1;
		//		for(int kan = 0; kan<arr[0].length; kan++) {arr[0][kan] = data++;}
		//		for(int kan = 0; kan<arr[1].length; kan++) {arr[1][kan] = data++;}

		System.out.println("ver-4");
		int data=101;
		for( int ch=0; ch<arr.length; ch++) {
			for( int kan=0; kan<arr[ch].length; kan++) {arr[ch][kan] = data++;}
		}
		
		for(int ch =0; ch<arr.length; ch++ ) {
			for(int kan =0; kan<arr[ch].length; kan++){
				System.out.print(arr[ch][kan] + "\t");
			}
			System.out.println();
		}
		
		
		
	}
}

/*연습문제3)  array
패키지명 : com.company.java007_ex
클래스명 :  Array2Ex003
배열을 이용하여 다음의 프로그램을 작성하시오.   
1. new 연산자 이용하여 다차원배열만들기
2. for + length 이용해서 대입   
3. for + length 이용해서 출력 
   101       102       103
   104    105    106
*/