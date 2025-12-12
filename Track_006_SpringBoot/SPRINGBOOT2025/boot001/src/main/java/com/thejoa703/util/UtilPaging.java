package com.thejoa703.util;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class UtilPaging {
	   private  int  listtotal;    	//#1) 전체글256
	   private  int  onepagelist;  	//#2) 한페이지에 보여줄 게시물의 수 10
	   private  int  pagetotal;     //#3) 총페이지수 256/10 25페이지 + 6글 = 26개
	   private  int  bottomlist;    //#4) 하단에 페이지수    이전 11 12 13 14 15 디음
	   private  int  pstartno;      //#5) 페이지 시작번호 (1) 1,10 (2) 11,20 ...
	   private  int current;        //#6) 하단에 페이지수   이전 11 12 [13] 14 15    디음
	   private  int start;          //#7) 하단에 페이지수   이전 [11] 12 13 14 15    디음
	   private  int end;			//#8) 하단에 페이지수   이전 [11] 12 ,,,19 [20]  디음
	   
	   //## 기본생성자 (10개씩, 하단네비블록 10개)
	   public UtilPaging(int listtotal, int pageNo) { 
		   this( listtotal, pageNo, 10,10 );
	   }

	   //## 오버로딩된 생성자 (페이지 크기와 하단 네비 크기를 직접 지정) ####
	   public UtilPaging(int listtotal, int pageNo, int onepagelist, int bottomlist) { //(1) 1,10 (2) 11,20  // # = 계산식
			this.listtotal   = (listtotal<=0)? 1:listtotal;
			this.onepagelist = 10;  //# 기본값 : 한페이지 10개
			this.pagetotal   = (int)Math.ceil(this.listtotal/(double)onepagelist); //#
			//  193/10 = 19.3 → 올림 → 20  / 256/10  → 25.6 → 26  //###
			//  200/10 = 20   → 올림 → 20  / 
			this.bottomlist  = 10;  //#######(바꿔서 사용가능)
			//하단 페이지 블록계산
			this.current     = pageNo;   // 23 → start=21 , end=30
			this.start       = ((current - 1)/bottomlist)*bottomlist + 1; //#
			// 21  → (21-1) / 10 → 앞자리2로 *10+1
			// 30  → (30-1) / 10 → 앞자리2로 *10+1
			this.end         = start + bottomlist -1 ; //21+10-1 = 30 //#
			if( end > pagetotal ) { end = pagetotal; } // 30 > 26   마지막은 26번으로 //#
	   } 
	   
	   //검색어 기준 전체 건수
	   
}







