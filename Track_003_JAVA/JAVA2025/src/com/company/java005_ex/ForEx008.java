package com.company.java005_ex;

public class ForEx008 {
	public static void main(String[]args) {
		//Q1.
		System.out.println("1-1. for");
		for (int i=1; i<=5; i++){System.out.print(i + "\t");}
		System.out.println();
		
		System.out.println("1-2. while");
		int i1=1;
		while (i1<= 5) {
			System.out.print(i1 + "\t");
			i1++;
		}
		System.out.println();

		System.out.println("1-3. do while");
		i1=1;
		do {
			System.out.print(i1 + "\t");
			i1++;
		} while(i1<=5);
		System.out.println();

		//Q2.
		System.out.println("2-1. for");
		for (int i2=5; i2>=1; i2--){System.out.print(i2 + "\t");}
		System.out.println();

		System.out.println("2-2. while");
		int i2=5;
		while (i2 >= 1) {
			System.out.print(i2 + "\t");
			i2--;
		}
		System.out.println();

		System.out.println("2-3. do while");
		i2 = 5;
		do {
			System.out.print(i2 + "\t");
			i2--;
		} while (i2 >= 1);
		System.out.println();
		//Q3.
		System.out.println("3-1. for");
		for (int i3=1; i3<=3; i3++){System.out.print("JAVA" + i3 + "\t");}
		System.out.println();

		System.out.println("3-2. while");
		int i3 = 1;
		while (i3 <= 3) {
			System.out.print("JAVA" + i3 + "\t");
			i3++;
		}
		System.out.println();

		System.out.println("3-3. do while");
		i3 = 1;
		do {
			System.out.print("JAVA" + i3 + "\t");
			i3++;
		} while (i3 <= 3);		

		
	}
}

/*연습문제8)  for, while, do while
패키지명 : com.company.java005_ex
클래스명 :  ForEx008 
1.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  1 2 3 4 5
2.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  5 4 3 2 1
3.  for , while , do while문을 이용해서 다음과 같이 출력하시오 :  JAVA1   JAVA2  JAVA3
*/