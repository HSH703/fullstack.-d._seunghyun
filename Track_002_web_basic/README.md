## Track002 - html + css + js/jquery (WEB BASIC) (20250825~20250829)
1. 웹의 작업순서
   1) html 구조
   2) css 꾸미기
   3) js/jquery / react 동작
   4) jsp + oracle  서버전송 + 데이터저장

2. html 파일템플릿
- ! + enter
- html : 문서의 시작과 끝
- head : 문서 정보
- body : 사용자에게 보이는 내용
- 다소문자 / 시작태그와~ 끝나는태그

```bash
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web basic001</title>
</head>
<body>
   안녕 Html 
</body>
</html>
```

```bash
# ■ WebBasic
### 3. Tag
1. 웹페이지의 구성요소를 알려주는 표시언어
2. h1~h6  제목
   - h1 : 로고, 상호명
   - h2 : 주메뉴
   - h3~h6 : 중요도 상세메뉴 (소제목)
3. p, pre : 문단
   - p : 일반문단
   - pre : 줄바꿈과 공백을 유지하는 서식텍스트
4. img  : 이미지
   - src : 경로  , alt : 대체용어 
5. a : 링크
   - href : 다른페이지나 파일로 연결 , target="_blank" 새창열기
6. 리스트태그 : ul , ol, dl
   - ul  : 순서없는리스트
   - ol  : 순서있는리스트
   - dl  : 설명리스트  
7. 그룹핑 : div

`web002_basic.html`      
```

```bash 
# ■ WebBasic
### 3. Tag  (연습문제 - a태그까지 정리)
1. 웹페이지의 구성요소를 알려주는 표시언어
2. h1~h6  제목
   - h1 : 로고, 상호명
   - h2 : 주메뉴
   - h3~h6 : 중요도 상세메뉴 (소제목)
3. p, pre : 문단
   - p : 일반문단
   - pre : 줄바꿈과 공백을 유지하는 서식텍스트
4. img  : 이미지
   - src : 경로  , alt : 대체용어 
5. a : 링크
   - href : 다른페이지나 파일로 연결 , target="_blank" 새창열기
6. 리스트태그 : ul , ol, dl
   - ul  : 순서없는리스트
   - ol  : 순서있는리스트
   - dl  : 설명리스트  
7. 그룹핑 : div

`web002_basic.html`      

### 4. CSS
1. 여백 - margin / padding
   1. margin : 바깥쪽여백
   2. padding : 안쪽여백

2. 글자스타일
   1.글자색상
      color:red
   2.글자크기
      font-size:16px
   3.정렬
      text-align:center /left /right/justify 문단의 정렬을 체크해주는 부분인데 left(왼쪽정렬) , right(오른쪽정렬) , center(중앙) , justify(수평정렬)
   4.밑줄
      text-decoration:none; 깃허브
   5. 글꼴
      font-family:sans-serif;
   6. 굵게
      font-weight:bold;

3. 배경꾸미기
      background-color: gold;
      background:black;
      background:linear-gradient(to right, pink, orange) background:linear-gradient(45deg, pink, orange)
      background: red url(./img/five.png) repeat center / 20px 20px
                  색상 경로 반복여부 중앙배치 가로사이즈 세로사이즈  

4. 박스디자인
   1. 가로 : width:300px
   2. 선 : border:3px solid red
   3. 둥근모서리 : borer-radius : 20px
   4. 그림자효과 : box-shadow: 0 4px 12px rgba(0,0,0,0.5)
```

```bash
# ■ WebBasic
### 3. Tag  (연습문제 - a태그까지 정리)
1. 웹페이지의 구성요소를 알려주는 표시언어
2. h1~h6  제목 
   - h1 : 로고, 상호명 
   - h2 : 주메뉴 
   - h3~h6 : 중요도 상세메뉴 (소제목)
3. p, pre : 문단
   - p : 일반문단
   - pre : 줄바꿈과 공백을 유지하는 서식텍스트
4. img  : 이미지
   - src : 경로  , alt : 대체용어 
5. a : 링크
   - href : 다른페이지나 파일로 연결 , target="_blank" 새창열기
6. 리스트태그 : ul , ol, dl
   - ul  : 순서없는리스트
   - ol  : 순서있는리스트
   - dl  : 설명리스트  
7. 그룹핑 : div

`web002_basic.html`      
```

```bash
### 4. CSS
1. 여백 - margin / padding
   1. margin : 바깥쪽여백
   2. padding : 안쪽여백

2. 글자스타일
   1.글자색상
      color:red
   2.글자크기
      font-size:16px
   3.정렬
      text-align:center /left /right/justify 문단의 정렬을 체크해주는 부분인데 left(왼쪽정렬) , right(오른쪽정렬) , center(중앙) , justify(수평정렬)
   4.밑줄
      text-decoration:none; 깃허브
   5. 글꼴
      font-family:sans-serif;
   6. 굵게
      font-weight:bold;

3. 배경꾸미기
      background-color: gold;
      background:black;
      background:linear-gradient(to right, pink, orange) background:linear-gradient(45deg, pink, orange)
      background: red url(./img/five.png) repeat center / 20px 20px
                  색상 경로 반복여부 중앙배치 가로사이즈 세로사이즈  

4. 박스디자인
   1. 가로 : width:300px
   2. 선 : border:3px solid red
   3. 둥근모서리 : borer-radius : 20px
   4. 그림자효과 : box-shadow: 0 4px 12px rgba(0,0,0,0.5)
```

---

```bash
## Track002 - html + css + js/jquery (WEB BASIC) (20250825~20250829)
```

---
# ■ WebBasic
### 3. Tag  (연습문제 - a태그까지 정리)
1. 웹페이지의 구성요소를 알려주는 표시언어
2. h1~h6  제목
   - h1 : 로고, 상호명
   - h2 : 주메뉴
   - h3~h6 : 중요도 상세메뉴 (소제목)
3. p, pre : 문단
   - p : 일반문단
   - pre : 줄바꿈과 공백을 유지하는 서식텍스트
4. img  : 이미지
   - src : 경로  , alt : 대체용어 
5. a : 링크
   - href : 다른페이지나 파일로 연결 , target="_blank" 새창열기
6. 리스트태그 : ul , ol, dl
   - ul  : 순서없는리스트
   - ol  : 순서있는리스트
   - dl  : 설명리스트  
7. 그룹핑 : div

`web002_basic.html`      

### 4. CSS
1. 여백 - margin / padding
   1. margin : 바깥쪽여백
   2. padding : 안쪽여백

2. 글자스타일
   1.글자색상
      color:red
   2.글자크기
      font-size:16px
   3.정렬
      text-align:center /left /right/justify 문단의 정렬을 체크해주는 부분인데 left(왼쪽정렬) , right(오른쪽정렬) , center(중앙) , justify(수평정렬)
   4.밑줄
      text-decoration:none; 깃허브
   5. 글꼴
      font-family:sans-serif;
   6. 굵게
      font-weight:bold;

3. 배경꾸미기
      background-color: gold;
      background:black;
      background:linear-gradient(to right, pink, orange) background:linear-gradient(45deg, pink, orange)
      background: red url(./img/five.png) repeat center / 20px 20px
                  색상 경로 반복여부 중앙배치 가로사이즈 세로사이즈  

4. 박스디자인
   1. 가로 : width:300px
   2. 선 : border:3px solid red
   3. 둥근모서리 : borer-radius : 20px
   4. 그림자효과 : box-shadow: 0 4px 12px rgba(0,0,0,0.5)

> 1. CSS 연습문제  `web003_1_user.html`
> 2. MARKUP 연습문제  `web003_2_users.html`

---
---

# ■ WebBasic
## 5. css 내부적용 id  vs  class
1. id? 유일한 값
2. id 특징
- html 문서에서 한번만 사용가능
- 중복불가
- css에서 #id명
- 우선순위가 id와 class모두 있을때 id가 더 높음

3.class? 여러개 선택시
4. class 의 특징
- 재사용가능 : 여러요소에 class 지정
- 하나의 요소에 여러개의 class 사용가능
- css에서 .class명
- 반복스타일에 적합
---
---
## wed basic

---
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ID VS CLASS</title>
  <style>
    /* 전체선택자 - 전체여백빼기*/
    * {margin:0; padding:0;}
    /* body - 좋이하는 글꼴 선택 */
    body{ font-family: 'Fraklin Gothic Medium', 
                        'Arial Narrow', Arial , sans-serif;
      background-image: linear-gradient(135deg, white, green);
    }
    /* Q1. h3 중앙정렬, 글자색상 : #e1360c, 아래쪽여백 : 10px*/
    h3{ text-align: center; color:aqua ; margin-bottom:10px; }
 
    /* Q2. p 중앙정렬, 글자크기 : 14px, 글자색상 : #666, 아래쪽여백 : 20px */
    p { text-align: center; font-size: 14px; color:aquamarine; margin-bottom:20px}
    /* Q3. div 배경색상 : #fff,
                  너비 : 300px, 
                  여백 : 위아래 30px 좌우 중앙정렬, 
               안쪽여백 : 20px, 
           테두리 둥글게 : 15px,
            그림자효과, 왼쪽정렬 */
    div {background-color: #34c0ef; width: 300px; 
                   margin:30px auto;
                  padding:20px; 
            border-radius:15px; 
               box-shadow: 0 4px 12px rgba(0,0,0,0.1);
               text-align:left;}
    /* Q4. dt 글자굵기 : 굵게, 아래쪽여백 : 10px, 글자색상 : #333 */
    dt {font-weight:bold; margin-bottom:10px; color: rgb(42, 29, 182);}
    /* Q5. dd 글자크기 : 14px, 글자색상 : #666, 아래쪽여백 : 8px, 왼쪽 안쪽여백 : 10px */
    dd { font-size: 14px; color: rgb(31, 146, 90); margin-bottom:8px; padding-left: 10px;}
    /* Q6. id1, id2 글자색상 :  각각 색상다르게 글자굵기 : 굵게 */
    #id1, #id2{font-weight: bold; }
    #id1{font-weight: bold; color:#0d90bc; background-color: whitesmoke;}
    #id2{font-weight: bold; color:rgb(7, 48, 211); background-color: rgba(255, 255, 255, 0.881);}

    /* Q7. class=""
            .mycss 배경색상 : #f9f1f7, 왼쪽 테두리 : 4px 실선 #e1306c, 안쪽여백 : 5px 10px, 테두리 둥글게 : 5px */
    .mycss{background-color: antiquewhite;
                border-left: 4px solid greenyellow;
                    padding:5px;
              border-radius: 5px; }
---

---
  </style>
</head>
<body>
  <div>
    <h3> id </h3>
    <p>유일한 값(고유식별자)</p> 
    <dl>
      <dt>id의 특징</dt>
      <dd>html문서에서 한 번만 사용가능</dd>
      <dd id="id1">중복불가</dd>
      <dd id="id2">css에서 #id명</dd>
      <dd>우선순위가 id와 class 모두 있을때 id가 더 높음</dd>
    </dl>
  </div><!-- end div-->
---

---
  <div>
    <h3>class</h3>
    <p>여러개 선택시</p>
    <dl>
      <dt>class의 특징</dt>
      <dd class="mycss1">재사용가능 : 여러요소에 class 지정</dd>
      <dd>하나의 요소에 여러개의 class 사용가능</dd>
      <dd class="mycss2">css에서 .class명</dd>
      <dd>반복스타일에 적합</dd>
    </dl>
  </div><!-- end div-->
</body>
</html>
---

```


```bash

---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
          /* Q1. body 여백제거, 안쪽여백 : 30px, 글꼴 : 'Segoe UI', 배경 : 그라디언트 #fff1eb → #ace0f9 */
          body{margin: 0; padding: 30px; font-family: 'Segoe UI'; 
                background-image: linear-gradient(135deg, rgb(107, 210, 210), whitesmoke); }
          /* Q2. h1 중앙정렬, 글자색상 : #34495e, 아래쪽여백 : 40px */
          h1{ text-align: center; color:#34495e; margin-bottom: 40px;}
          /* Q3. .portfolio 너비 : 250px, 여백 : 아래쪽 30px 중앙정렬, 테두리 둥글게 : 20px, 그림자효과, 안쪽여백 : 20px, 트랜지션 : 0.3초 */
          .portfolio{width: 250px; margin: 0 auto 30px; border-radius: 20px; box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                    padding: 20px; transition: all 0.3s; cursor:pointer;}
          /* Q4. .portfolio:hover 확대 + 회전 + 밝기 + 그림자 강조 */
          .portfolio:hover{transform: scale(1.05) rotate(-1deg); 
                            filter:brightness(1.05);
                            box-shadow:0 4px 12px rgba(0,0,0,0.25);}
          /* Q5. .project1 배경 : 그라디언트 #fceabb → #f8b500 */
          .portfolio.project1{background-image: linear-gradient(135deg,#fceabb,#f8b500 );}
          /* Q6. .project2 배경 : 그라디언트 #d5fefd → #a1c4fd */
          .portfolio2{background-image: linear-gradient(135deg, #d5fefd, #a1c4fd);}
          /* Q7. .project3 배경 : 그라디언트 #fbc2eb → #a6c1ee */
          .portfolio3{background-image: linear-gradient(#fbc2eb,#a6c1ee )}
          /* Q8. .portfolio img 너비/높이 : 90px, 원형처리, 이미지 비율 유지, 테두리 : 3px 실선 #34495e */
          .portfolio img{width: 150px; height:90px; border-radius: 20px;
                         object-fit:cover; border:3px solid#34495e;
                          display:block; margin:auto; }
          /* Q9. .portfolio h2 여백 : 위10px 아래5px, 글자크기 : 18px, 글자색상 : #2c3e50 */
          .portfolio h2{ margin: 10px 0 5px; font-size: 18px; color:#2c3e50;}
         /* Q10. .portfolio p 글자크기 : 14px, 글자색상 : #555, 아래쪽여백 : 10px */
         .portfolio p{font-size: 14px; color: #555; margin-bottom: 10px;}
         /* Q11. .portfolio a 글자크기 : 13px, 글자색상 : #34495e, 밑줄 제거 */
         .portfolio a{font-size: 13px; color:#34495e; text-decoration:none;  }
         /* Q12. .portfolio h3 위쪽여백 : 20px, 글자크기 : 16px, 글자색상 : #2c3e50 */
         .portfolio h3{margin-top: 20px; font-size: 16px; color:#2c3e50;}
         /* Q13. .portfolio ul 왼쪽정렬, 왼쪽 안쪽여백 : 20px, 글자색상 : #2c3e50  */ 
         .portfolio ul{text-align: center; padding-left: 20px; color:#2c3e50; }

    </style>
</head>
<body>
    <div>
        <h1>프로젝트 설명 카드</h1>
        <div class="portfolio project1">
            <p><img src="./portfolioimg/portfolio1.jpg" alt=""></p>
            <h2>도서 추천 웹앱</h2>
            <p>기획자: 사장님</p>
            <p>사용자 취향 기반으로 도서를 추천하는 웹 서비스</p>
            <p><a href="" title="">GitHub 저장소 보기</a></p>
            <h3> 핵심 기능</h3>
            <ul>
                <li>사용자 입력 기반 추천 알고리즘</li>
                <li>카드 UI를 활용한 도서 정보 시각화</li>
                <li>팀원 역할 분담 및 협업 관리</li>
            </ul>
        </div>
        <div class="portfolio project2">
            <p><img src="./portfolioimg/portfolio2.jpg" alt=""></p>
            <h2>반응형 포트폴리오 사이트</h2>
            <p>프론트엔드: June</p>
            <p>디자이너와 협업하여 제작한 개인 포트폴리오 웹사이트</p>
            <p><a href="" title="">배포된 페이지 보기</a></p>
            <h3> 주요 기술</h3>
            <ul>
                <li>HTML5 / CSS3 / JavaScript</li>
                <li>미디어쿼리를 활용한 반응형 디자인</li>
                <li>Figma 기반 UI 설계</li>
            </ul>
        </div>

        <div class="portfolio project3">
            <p><img src="./portfolioimg/portfolio3.jpg" alt=""></p>
            <h2>AI 기반 독서 취향 분석기</h2>
            <p>AI 분석: Mina</p>
            <p>독서 이력 데이터를 기반으로 취향을 분석하고 도서를 추천</p>
            <p><a href="" title="">프로젝트 상세 보기</a></p>
            <h3> 기술 스택</h3>
            <ul>
                <li>Python / Pandas / Scikit-learn</li>
                <li>자연어 처리 기반 키워드 분석</li>
                <li>데이터 시각화 및 사용자 피드백 반영</li>
            </ul>
        </div>

    </div>
</body>
</html>

---
---

---
# ■ WebBasic
```bash
## 6 배치요소


■1. Web  Basic  복습문제
■1. Web  Basic  복습문제
■1. Web  Basic  복습문제
■1. Web  Basic  복습문제

### 1. block vs inline
1) box model  
- 콘텐츠가 자리하는 영역을 의미하며, 박스의 구성 요소는 
   content(내용)  ,  padding , border , margin 로 이루어진다.

2) block 요소  
- width/height 설정이 (O/X): O  
- 앞뒤 줄바꿈이 (O/X): O  
- 대표 태그: div , p , h3

3) inline 요소  
- width/height 설정이 (O/X): X  
- 앞뒤 줄바꿈이 (O/X): X  
- 대표 태그: a, strong , span


### 2. 배치(1) - float
- 요소를 좌우로 배치할 때 사용하는 속성은  float 이다.  
- 다음 요소의 흐름을 정리하려면 clear속성을 사용한다.  
- float를 끊는 대표적인 방법은 클래스명으로  .clear 를 사용한다.
.clear{  clear:both ; }

### 3. 배치(2) - position
- 자식 요소를 부모 기준으로 위치시키려면 부모에  relative , 자식에 absolute를 설정한다.  
- 브라우저 전체 기준으로 고정하려면 fixed 속성을 사용한다.  
- position의 주요 값 4가지는  relative , absolute , fixed , static 이다.


### 4. 배치(3) - display

- 요소의 기본 속성을 바꾸려면 display 속성을 사용한다.  
- block 요소를 inline처럼 보이게 하려면 inline,  
  inline 요소를 block처럼 보이게 하려면 block 값을 사용한다.


```



---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 포트폴리오</title>
    <style>
/* Q1: 페이지 전체에 배경 그라디언트를 적용하고 기본 글꼴과 안쪽 여백을 주려면
   - 배경: 135도 방향의 그라디언트 (#f0f9ff → #e0f7fa)
   - 글꼴: Arial
   - 안쪽 여백: 30px */
 *{margin:0; padding:0; box-sizing: border-box;}
 body{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    background-image: linear-gradient(135deg,#f0f9ffe3, #e0f7fac1);
    padding: 30px
}

/* Q2: 제목(h1)을 가운데 정렬하고 색상과 아래 여백을 주려면?
   - 정렬: 가운데
   - 글자 색상: #00796b (청록색 계열)
   - 아래 여백: 40px */
h1{
    text-align: center; color: #04796b;
    margin-bottom: 40px;
}

/* Q3: 콘텐츠 박스를 가운데 배치하고 너비를 50%로 설정하려면?
   - 너비: 50%
   - 좌우 자동 마진으로 가운데 정렬 */
.container{width: 50%; margin:auto;}

/* Q4: 카드 박스를 가로로 배치하고 시각적 스타일을 주려면?
   - float: left (가로 정렬)
   - 너비: 250px
   - 바깥 여백: 20px
   - 안쪽 여백: 20px
   - 배경색: 흰색 (#ffffff)
   - 모서리 둥글게: 15px
   - 그림자: 흐림 효과 (10px)
   - 위치 기준점: relative
   - 텍스트 가운데 정렬
   - 애니메이션: 등장 시 아래에서 위로 이동 (translateY)
   - 테두리: 투명 3px, 배경 클립 설정 */
.card{
    float: left;
    width: 250px;
    margin: 20px;
    padding: 20px;
    background-color: #ffffffe2;
    border-radius:15px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    position:relative;
    text-align: center;
    transition:all 0.3s ease;
    transform:translateY(20px);
    border:3px solid transparent;
    background-clip: padding-box;
    opacity:0; /*## 화면에 안보이기 - 투명도*/
    animation:fadeInup        0.8s            ease                 forwards; 
    /*##     애니메이션이름    지속시간       처음과끝느리게      애니메이션끝나도마지막상태유지*/
}


/* Q5: 두 번째 카드에 애니메이션 지연을 주려면?
   - 지연 시간: 0.3초
   .card를 대상으로 nth-of-type
   부모를 기준으로   nth-child */ 
   .card:nth-of-type(1){
    animation-delay: 0.3s;
    }
    .card:nth-of-type(2){
    animation-delay: 0.6s;
    }
    .card:nth-of-type(3){
    animation-delay: 0.9s;
    }



/* Q6: 카드에 마우스를 올렸을 때 효과를 주려면?
   - 위로 이동: 5px
   - 그림자 강조: 15px
   - 테두리 색상 변경: #00796b */
.card:hover{
    transform:translateY(-5px);
    box-shadow:0 0 15px rgba(0,0,0,0.2);
    border:3px solid #059887;
}


/* Q7: 카드에 마우스를 올렸을 때 그라디언트 테두리를 나타내려면?
   - 위치: 카드 바깥쪽 (-3px)
   - 배경: 45도 방향의 그라디언트 (#00c9ff → #92fe9d)
   - 둥근 테두리: 18px
   - 투명도: hover 시 1로 변경 
   css에서는 border에 그라디언트색상을 줄수 없음!
   1) : before  가상요소 카드보다 살짝 크게 만들기
   */
    .card:before{
        content:"" ;
        position: absolute;
        top: 3px; left: 3px; right: 3px; bottom: 3px;
        background-image: linear-gradient(45deg, #00c8fff5, #92fe9df7);
        border-radius:15px;
        opacity: 0;
        z-index:-1;
        transition: opacity 0.5s ease;
    }

.card:hover::before{
    opacity:1;
}

/* Q8: 카드 이미지에 크기와 스타일을 주려면?
   - 너비: 120px
   - 높이: 80px
   - 둥근 모서리: 10px
   - 이미지 비율 유지: object-fit: cover
   - 테두리 색상: #00796b */
.card img{
    width:120px;
    height:80px;
    border-radius:10px;
    object-fit: cover;
    border:3px solid #058071;
}

/* Q9: 카드 제목(h2)에 글자 크기와 여백, 색상을 주려면?
   - 글자 크기: 18px
   - 여백: 위 15px, 아래 10px
   - 색상: #333 (진회색) */
h2{
    font-size: 18px;
    margin:15px 0 10px;
    color:#333333e8;
}

/* Q10: 카드 설명(p)에 글자 크기와 색상, 아래 여백을 주려면?
   - 글자 크기: 14px
   - 색상: #555 (중간 회색)
   - 아래 여백: 10px */
p{
    font-size: 14px;
    color:#555555f5;
    margin-bottom: 10px;
}

/* Q11: 카드 오른쪽 상단에 고정된 버튼을 만들고 스타일을 주려면?
   - 위치: absolute (top:10px, right:10px)
   - 배경색: #00796b
   - 글자색: 흰색
   - 패딩: 8px 12px
   - 둥근 모서리: 12px
   - 글자 크기: 13px */
.card .more-btn{
    position:absolute; 
    top:10px;
    right:10px;
    background-color: #03796b;
    color: white;
    padding: 8px, 12px;
    border-radius: 12px;
    font-size:13px;
    text-decoration:none;
    transition: background 0.3s ease ;
}



/* Q12: 버튼에 마우스를 올렸을 때 색상 변경과 흔들림 효과를 주려면?
   - 배경색 변경: #004d40
   - 애니메이션: shake (0.3초) */
   .card .more-btn:hover{
         background-color:#004d40;
        animation: shake 0.3s ease-in-out;
}

/* Q13: 흔들림(shake) 애니메이션을 정의하려면?
   - 좌우/상하로 2px씩 이동 반복 */
@keyframes shake {
     0%{ transform: translate(0,0);}
    25%{ transform: translate(2px,2px);}
    50%{ transform: translate(-2px,-2px);}
    75%{ transform: translate(2px,2px);}
   100%{ transform: translate(0,0);}

}


/* Q14: 카드가 아래에서 위로 부드럽게 등장하도록 애니메이션을 정의하려면?
   - 시작: opacity 0, translateY(20px)
   - 종료: opacity 1, translateY(0) */
   @keyframes fadeInup {
    to{
        opacity:1;
        transform:translateY(0);
    }
   }

/* Q15: float를 끊고 아래 설명 박스를 만들려면?
   - clear: both
   - 위 여백: 50px
   - 안쪽 여백: 15px
   - 배경색: #e0f2f1
   - 둥근 모서리: 10px
   - 텍스트 가운데 정렬, 글자색: #333 */
   .clear{ 
        clear:both; 
        margin: top 50px;
        background-color: #e0f2f1;
        border-radius:10px;
        padding:15px;
        text-align:center;
        color:#333;
}

    </style>
</head>
<body>
    <div>
        <div class="container">
            <h1>나의 포트폴리오</h1>
            <div class="card">
                <p><img src="./portfolioimg/portfolio1.jpg" alt="프로젝트1 썸네일"></p>
                <h2> 쇼핑몰 웹앱</h2>
                <p>React + Firebase 기반의 쇼핑몰 웹 애플리케이션</p>
                <p>사용 기술: React, Firebase, Styled-components</p>
                <a href="" class="more-btn">더보기</a>
            </div>   <!-- end div 1-->


            <div class="card">
                <p><img src="./portfolioimg/portfolio2.jpg" alt="프로젝트2 썸네일"></p>
                <h2> AI 챗봇 서비스</h2>
                <p>Python 기반의 자연어 처리 챗봇 시스템</p>
                <p>사용 기술: Flask, TensorFlow, NLP</p>
                <a href="" class="more-btn">더보기</a>
            </div>   <!-- end div 2-->

            <div class="card">
                <p><img src="./portfolioimg/portfolio3.jpg" alt="프로젝트3 썸네일"></p>
                <h2> 자연어 AI 챗봇 서비스</h2>
                <p>Python 기반의 자연어 처리 챗봇 시스템</p>
                <p>사용 기술: Flask, TensorFlow, NLP</p>
                <a href="" class="more-btn">더보기</a>
            </div>   <!-- end div 3-->

            <div class="clear">이 포트폴리오는 실제 프로젝트를 기반으로 구성되었으며,
                                각 프로젝트는 GitHub에서 확인할 수 있습니다.</div>
    </div>
</body>                         
</html>
---

---
## Track002 - html + css + js/jquery (WEB BASIC) (20250908~20250912)
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /*   Q1. 전체여백빼기
             box-sizing: border-box;  박스크기계산을 통일  ,
             width와 height에 padding 과 border까지 포함해서 계산
             박스크기가 100px, padding: 10px 자동으로 크지조절
        */
        *{  margin:0; padding:0; box-sizing: border-box;}

        /*   Q2. body 글꼴 , 전체배경색상  */
        body{ font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
            background-image: linear-gradient(135deg, #f4ffb8 , #8affd0);
        }
       /*   Q3. h3 왼쪽에 선넣기 , 배경색  */
        h3{ border-left:3px solid #123456;
            border-bottom:1px solid #123456;
        }
       /*   Q4. strong 배경색  */
        strong{ background-color:crimson; color:whitesmoke; padding:2px;
            width:500px; /* 적용X inline */
        }
        /*   Q5. box 예)  */
        .container{ width:60%; margin:50px auto; background-color:#fff;
                    padding:20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        .item{  padding:10px; background-color: #333; color:white;}

        /*  Q6. float  */
        .i1{float:left; box-sizing:100px;}
        .i2{float:right; }
        .i3{float:center; }

        /* Q7. position */
        .me{background-color: gold; padding: 10px; color: white;  
              top:0; left:0; 
        }
        .p1{position:relative;}  /*  1. 부모 (감싸는 박스에 공간확보)*/
        .p1  .me{position: absolute; right:0; bottom: 0;} /*  2.  자식(absolute)*/

        .p2  .me{position:fixed; bottom:100px; right: 0;  /* 브라우저기준*/
                background-color:red ;
            }
        /* Q8. display */
        .dl li {display: inline; }
        .d2 li {display: inline-block;
                width:100px; padding: 10px; background-color: gold;
                text-align: center;}


    </style>
</head>
<body>
    <div class="container">
        <h3> 1. block vs inline</h3>
        <p><strong>block</strong> 그릇 width/height O, 줄바꿈 O</p>
        <p><strong>inline</strong> 콘텐츠 - 간장 width/height X, 줄바꿈X </p>
    </div>

    <div class="container f1">
        <h3>2. 배치 - float</h3>
        <p class="item i1">LEFT</p>
        <p class="item i2">RIGHT</p>
        <p class="item i3">float: left, float: right 사용시 왼쪽. 오른쪽 배치 / clear:both </p>
    </div>

    <div class="container p1">
        <h3>3. 배치 (2)  position - relative + absolute</h3>
        <p class="me"> WHERE I AM?</p>
        <p>부모: relative (공간확보) / 자식요소 absolute(공간유지 안됨.)</p>
    </div>

    <div class="container p2">
        <h3>3. 배치 (2)  position - fixed</h3>
        <p class="me"> WHERE I AM?</p>
    </div>

    <div class="container">
        <h3>4. display요소속성변경</h3>
        <ul>
            <li>APPLE</li><li>BANANA</li><li>COCONUT</li>
        </ul>
        <hr/>
            <ul class="d1">
                <li>APPLE</li><li>BANANA</li><li>COCONUT</li>
            </ul>
        <hr/>
        <hr/>
            <ul class="d2">
                <li>APPLE</li><li>BANANA</li><li>COCONUT</li>
            </ul>
        <hr/>
    </div>
</body>
</html>
<!--web005_1.html-->
---
---
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>우주 CSS 탐험</title>
  <style>
/* Q1: 모든 요소의 기본 여백을 없애고 박스 크기 계산을 통일하려면? (margin: 0, padding: 0, box-sizing: border-box) */
*{margin: 0; padding: 0; box-sizing: border-box;}

/* Q2: 페이지 전체에 어두운 배경(#0b0c10), 흰 글씨(#fff), 글꼴(Segoe UI)을 적용하려면? */
body{background-color:#11131a; 
      color: white; 
      font-family: 'Segoe UI', sans-serif;}

/* Q3: 제목(h3)에 왼쪽 테두리(10px solid #00bfff), 배경색(#1f2833), 아래 여백(1em), 패딩(1em)을 주려면? */
h3{ border-left:10px;  background-color: #1d252e; margin-bottom: 1em; padding: 1em; }

/* Q4: 콘텐츠 박스를 중앙에 배치하고 너비(80%), 바깥 여백(2em auto), 안쪽 여백(2em), 배경색(#2c3e50), 모서리 둥글게(10px) 하려면? */
 .container{width: 80%; padding: 2em auto; margin: 2em;
             background-color:#2a3e52; border-radius: 10px;}

/* Q5: 왼쪽으로 float된 행성 박스를 만들고 너비(40%), 배경색(#ff6347), 패딩(1em), 모서리 둥글게(10px) 하려면? */
.float-zone.planet{float: left; width: 40%; background-color: #ff6347e9; padding: 1em; 
                    border-radius: 10px; }

/* Q6: 오른쪽으로 float된 우주선 박스를 만들고 너비(40%), 배경색(#f1c40f), 패딩(1em), 모서리 둥글게(10px) 하려면? */
.float-zone.spaceship{ float:right; width:40%; padding:1em; background-color:#f4c715;
                        border-radius: 10px;}

/* Q7: float 해제(clear: both) 후 콘텐츠 공간 확보 + 위쪽 여백(2em), 배경색(#34495e), 패딩(1em), 모서리 둥글게(10px) 하려면? */
.clear{
  clear:both;
  margin-top:2em; background-color:#344b62; padding:1em;
   border-radius: 10px;
}
/* ---float end---*/

/* Q8: 자식 absolute 요소 기준이 되는 공간을 만들고 배경색(#1abc9c), 패딩(2em), 모서리 둥글게(10px) 하려면? */
.space{position:relative; background-color: #21bf9f; padding: 2em; 
      border-radius: 10px; }

/* Q9: 부모 기준으로 위치 지정된 우주비행사 박스를 만들고 위치(top:10px, left:10px), 배경색(#ecf0f1), 글자색(#2c3e50), 패딩(0.5em), 모서리 둥글게(5px) 하려면? */
.astronaut{position:absolute; top:10px; left:10px; background-color:#ecf0f1f1; 
            color:#30455a; padding: 0.5em; border-radius:5px;}

/* Q10: 화면 고정 위치에 붙어 있는 위성 박스를 만들고 위치(bottom:10px, right:10px), 배경색(#9b59b6), 패딩(0.5em), 모서리 둥글게(5px) 하려면? */
.satelittle{position:fixed; bottom: 10px; right: 10px; background-color: #9f58bb; 
            padding: 0.5em; border-radius: 5px;}
/*--- position end---*/


/* Q11: 인라인으로 나열된 은하 항목을 만들고 오른쪽 여백(10px), 배경색(#95a5a6), 패딩(0.5em), 모서리 둥글게(5px) 하려면? */
.galaxy li{margin-top: 10000px; width: 1000px; /* X 줄 못 벗어남.*/
  display:inline; background-color: #95a5a6f5;
  margin-right: 10px;  padding: 0.5em; border-radius: 5px; 
}

/* Q12: 너비(120px) 지정 가능한 인라인 블록 항목을 만들고 배경색(#e74c3c), 바깥 여백(5px), 패딩(1em), 텍스트 가운데 정렬, 모서리 둥글게(10px) 하려면? */
.nebula li{display:inline-block; width: 120px; background-color: #ee4c3a; padding: 1em; text-align: center; 
        border-radius: 10px;} 

/* Q13: 여백(margin:30px)과 안쪽 공간(padding:20px)이 있는 탐사 미션 박스를 만들고 배경색(#2980b9), 모서리 둥글게(10px) 하려면? */
.container.mission{ margin:30px; padding: 20px; background-color: #2980b9; 
  border-radius:10px;} 

  /*display end*/
  </style>
</head>
<body>
<div class="wrapper">
  <h3>001. BLOCK vs INLINE - 우주 요소 정렬</h3>
  <div class="container">
    <p><strong>BLOCK 요소:</strong> 우주선, 행성 등 큰 구조물 (div, p)</p>
    <p><strong>INLINE 요소:</strong> 별, 텍스트 등 작은 요소 (span, a)</p>
 </div>

  <h3>002. float 배치 - 행성과 우주선</h3>
  <div class="container float-zone">
    <div class="planet">🌍 행성</div>
    <div class="spaceship">🚀 우주선</div>
    <div class="clear">float 이후 우주 공간 확보 완료!</div>
  </div>

  <h3>003. position 배치 - 우주비행사와 위성</h3>
  <div class="container space">
    <div class="astronaut">🧑‍🚀 우주비행사</div>
    <p>position:relative 영역에서 absolute로 위치 지정</p>
  </div>
  <div class="satellite">🛰️ 고정된 위성 (fixed)</div>

  <h3>004. display 속성 - 은하계 리스트</h3>
  <div class="container">
    <ul class="galaxy">
      <li>🌟 별</li>
      <li>🌌 은하</li>
      <li>🪐 행성</li>
    </ul>
    <hr/>
    <ul class="nebula">
      <li>🌟 별</li>
      <li>🌌 은하</li>
      <li>🪐 행성</li>
    </ul>
  </div>

  <h3>005. margin & padding - 탐사 미션 박스</h3>
  <div class="container mission">
    <p>📦 이 박스는 margin과 padding을 통해 우주 공간을 확보했어요!</p>
  </div>
</div>
</body>
</html>

---
---
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>내부적용 css -users</title>
  <style>
    * { margin:0; padding:0; }
    body {
      font-family:'Franklin Gothic Medium',Arial;
      background-image:linear-gradient(135deg,#fdfbfb , #ffa4dc);
    }
    h1 {
      text-align: center;
      color:#e1306c;
      margin-bottom:40px;
    }
    .container {
      width:90%;
      margin:50px auto;
    }
    .clear{clear:both; 
            background-color: whitesmoke;} /* float 끊기 */
    .card {
      position:relative;
      float:left;
      width:250px;
      margin:30px;
      border-radius:20px;
      box-shadow: 0 0 10px rgba(0,0,0, 0.1);
      text-align: center;
      padding:20px;
      transition: all 0.3s ease; 
    }
    .card:hover {
      transform:translateY(-5px);
      box-shadow: 0 0 10px rgba(0,0,0, 0.2);
    }
    .jack { background-image: linear-gradient(135deg, #dbeafe , #f0f9ff); }
    .june { background-image: linear-gradient(135deg, #ffe0f0 , #fff0f5); }
    .mina { background-image: linear-gradient(135deg, #ede9fe , #f5f3ff); } 
    .yuna { background-image: linear-gradient(135deg, #fce7f3 , #fff1f2); }
    .leo  { background-image: linear-gradient(135deg, #e0f2f1 , #f1f8e9); }

    .card img {
      width:90px;
      height:90px;
      border-radius: 50%;
      object-fit: cover;
      border:3px solid #e1306c;
    }
    .card h2 { margin:10px 0 5px 0; font-size:18px; color:#333; }
    .card p { font-size:14px; color:#444; margin-bottom:10px; }
    .card a { font-size:13px; color:#e1306c; text-decoration: none; }
    .card h3 { margin-top:20px; font-size:16px; color:#333; }
    .card ul, .card ol, .card dl {
      text-align: left;
      padding-left:20px;
      color:#333;
      margin:0;
    }
    .card dt { font-weight: bold; }
    .card dd { margin-bottom:10px; }

    /*Q1. float : 카드들을 가로방향으로 배치*/
    /*Q2. position : 카드 오른쪽 상단에 고정된 '더 보기' 버튼을 만들고, 
      배경색과 글자 스타일을 설정하며 hover 시(마우스 올렸을때) 색상이 바뀌도록 한다.*/
    .card .more-btn{position:absolute; right:10px; top:10px;
                    background-color: rgba(0, 0, 0, 0.737); color:white;
                    padding:10px; border-radius:15px;
    }
    .card .more-btn:hover{
                    background-color: crimson;
    }
    /*Q3. a 태그는 inline, 속성을 block으로 바꿔서 링크영역확대*/
    .card .github{ 
      display:block; 
      width:80%; margin:auto; 
      background-color:chartreuse;
      color:white;
      padding:10px; transition:all 0.3s ease;
    }
    .card .github:hover{background-color: crimson;}
 
  </style>
</head>
<body>
  <div class="container">
    <h1>사용자 프로필 카드</h1>

    <div class="card jack">
      <p><img src="./img/1.png" alt="Jack 프로필사진"/></p>
      <h2>Jack</h2>
      <p>백엔드 개발자 | Node.js & DB전문가</p>
      <p>팔로워 : 3200명</p>
      <p><a href="#" class="github">깃허브 보기</a></p>
      <h3>Jack이 좋아하는 기술</h3>
      <ul>
        <li>Node js</li><li>MongoDB</li><li>Docker</li>
      </ul>
      <a href="a" class="more-btn" title="더 보기 새창열기">더보기</a>
    </div>

    <div class="card june">
      <p><img src="./img/2.png" alt="June 프로필사진"/></p>
      <h2>June</h2>
      <p>프론트엔드 디자이너 | React & UI/UX</p>
      <p>팔로워 : 2,100명</p>
      <p><a href="#" class="github">깃허브 보기</a></p>
      <h3>프론트엔드 학습 추천 순서</h3>
      <ol>
        <li>HTML & CSS</li><li>JavaScript</li><li>React</li>
      </ol>
      <a href="a" class="more-btn" title="더 보기 새창열기">더보기</a>
    </div>


    <div class="card mina">
      <p><img src="./img/6.png" alt="Mina 프로필사진"/></p>
      <h2>Mina</h2>
      <p>AI 연구원 + Python & 머신러닝</p>
      <p>팔로워 : 1,500명</p>
      <p><a href="#" class="github">깃허브 보기</a></p>
      <h3>Mina의 역할</h3>
      <dl>
        <dt>직무</dt><dd>AI 연구원</dd>
        <dt>주요기술</dt><dd>Python, 머신러닝</dd>
        <dt>관심분야</dt><dd>자연어 처리, 딥러닝</dd>
      </dl>
      <a href="a" class="more-btn" title="더 보기 새창열기">더보기</a>
    </div>


    <div class="card yuna">
      <p><img src="./img/5.png" alt="Yuna 프로필사진"/></p>
      <h2>Yuna</h2>
      <p>사이버 보안 전문가 | 네트워크 & 침투 테스트</p>
      <p>팔로워 : 2,900명</p>
      <p><a href="#" class="github">깃허브 보기</a></p>
      <h3>Yuna의 보안 스킬셋</h3>
      <dl>
        <dt>직무</dt><dd>보안 컨설팅 및 모의 해킹</dd>
        <dt>사용 툴</dt><dd>Wireshark, Metasploit</dd>
        <dt>관심분야</dt><dd>정보보호, 취약점 분석</dd>
      </dl>
      <a href="a" class="more-btn" title="더 보기 새창열기">더보기</a>
    </div>

    <div class="card leo">
      <p><img src="./img/7.png" alt="Leo 프로필사진"/></p>
      <h2>Leo</h2>
      <p>모바일 앱 개발자 | iOS & Android</p>
      <p>팔로워 : 4,200명</p>
      <p><a href="#" class="github">깃허브 보기</a></p>
      <h3>Leo의 개발 환경</h3>
      <ol>
        <li>Swift</li><li>Kotlin</li><li>Flutter</li>
      </ol>
      <a href="a" class="more-btn" title="더 보기 새창열기">더보기</a>
    </div>

    <div class="clear">
      우리는 기술을 통해 문제를 해결하고, 사용자 경험을 혁신하는 것을 목표로 하는 팀입니다.<br/>
      Jack은 안정적인 서버를, June은 아름다운 인터페이스를, Mina는 똑똑한 알고리즘을 책임지고 있습니다.<br/> 
      Leo는 모바일 환경에서도 최고의 사용자 경험을 구현합니다.
    </div>
  </div>
</body>
</html>
---


---

---
