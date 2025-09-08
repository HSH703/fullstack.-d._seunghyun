 # 🚀 한승현 | 문제 해결에 강한 실전형 풀스택 개발자
 
완성을 향해 가는 과정에서 배우고 성장하는 **기획부터 배포까지, 사용자 흐름을 설계하고 끝까지 해결하는 개발자**

단순한 기능구현을넘어
**Computer Science기반의 구조적 문제해결능력**과 **협업 중심의 실전 경험을 바탕으로 역량을 증명해왔습니다.** 

<br/>
<br/>
<br/>

---
<!--  
1. ![이미지](/bandmusic.png)
2. 이름 , 이메일, 깃허브주소, 포트폴리오  4*2의 테이블형식으로 -->

## 📌Contact  & Links 
<!--이름, 이메일 깃허브주소, 포트폴리오, 4*2의 테이블형식으로-->
<img src="./bandmusic.png"
     alt="프로필"  width="80" />




|||
|-|-|
|이름|한승현|
|이메일|h48097435@gmail.com|
|깃허브주소|https://github.com/HSH703/fullstack.-d._seunghyun|
|포트폴리오|끊임없이 배우고 성장하며, 기획부터 배포까지 전 과정을 주도하는 개발자입니다. 사용자 흐름을 설계하고, 문제를 끝까지 해결하는 데 집중합니다.

단순한 기능 구현을 넘어, Computer Science 기반의 구조적 문제 해결 능력과 협업 중심의 실전 경험을 통해 실무에 바로 투입 가능한 역량을 증명해왔습니다.|


<br/>
<br/>
 <br/>



---
 ## Golds
 - Github의 **핵심기능** 이해하고 실습
 - markdown을 통해 **문제화능력향상**
 - 공동작업을 위한github **워크플로워 익히기**
 - ai tool을 이용한 **개발환경체험**

 ---
 <!--cs와 연결지어서-->
 ## 기술스택 기반 cs역량
 - git & github
 - markdown
 - vs code
 - html5
 - css3
 - ai 프롬프트

 ---

| **기술 스택**        | **CS 기반 역량** | **실무 활용 능력** |
|----------------------|------------------|--------------------|
| **Git & GitHub**     | 분산 버전 관리 시스템의 핵심 원리인 SHA 해시, 트리 구조, 브랜치 전략에 대한 이해 | 협업 시 충돌 해결 능력, 효율적인 브랜치 전략 수립, PR 리뷰 및 CI/CD 연계 경험 |
| **Markdown**         | 정보 구조화 및 문서화 능력, 텍스트 기반 마크업 언어의 문법적 이해 | README, Wiki, 이슈 템플릿 등 개발 문서 작성 및 유지보수 능력, 기술 블로그 운영 |
| **VS Code**          | 경량 IDE 환경에서의 디버깅, 확장성, 코드 자동화에 대한 이해 | ESLint, Prettier, GitLens 등 확장 기능을 통한 생산성 향상, 터미널 기반 작업 숙련 |
| **HTML5**            | DOM 트리 구조, 시맨틱 태그, 웹 표준 및 접근성에 대한 이해 | 구조적이고 유지보수 가능한 마크업 작성, SEO 최적화 및 크로스 브라우징 대응 |
| **CSS3**             | 박스 모델, Flex/Grid 레이아웃, 렌더링 최적화 원리 이해 | 반응형 웹 구현, 디자인 시스템 적용, 애니메이션 및 트랜지션 활용 |
| **AI 프롬프트**      | 자연어 처리(NLP)와 생성형 모델의 작동 원리에 대한 기본 이해 | ChatGPT, Copilot 등 도구를 활용한 코드 생성, 문서화, 테스트케이스 작성 등 업무 자동화 |


</span>
 
<br/>
<br/>
<br/>

---

 <!/--  JAVA, HRML+CSS+JS/JQUERY...-->
 <!-- ## 포트폴리오
 <br/>
 <br/>
 <br/>


``` 


<!-- ## 포트폴리오
---


 <br/>
 <br/>
 <br/>
-->
---
<!--정리해놓은것 day1, day2,  -->
 ## 트러블슈팅(github에서 발생)
### 트러블슈팅 (1)
```bash
TJ-BU-703-P03@DESKTOP-5CVIKGS MINGW64 /c/KIMYOUNGMIN/workspace (master)
$ git commit -m "git 수정 후 다시올리기"
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)       
        modified:   day001.md

no changes added to commit (use "git add" and/or "git commit -a")
```

### 트러블슈팅 (2)
```bash
TJ-BU-703-강사PC@DESKTOP-2Q95R1R MINGW64 /d/hyojung/workspace (master)
$ git pull  origin master 
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)     
Unpacking objects: 100% (3/3), 1.03 KiB | 15.00 KiB/s, done.
From https://github.com/sally03915/fullstack_20250825
 * branch            master     -> FETCH_HEAD
   031d931..5ac68d8  master     -> origin/master
Auto-merging day002.md
CONFLICT (content): Merge conflict in day002.md
t the result.


### 트러블슈팅 (3)
```bash
TJ-BU-703-강사PC@DESKTOP-2Q95R1R MINGW64 /d/hyojung/workspace (master|MERGING) $ git pull origin master error: You have not concluded your merge (MERGE_HEAD exists). hint: Please, commit your changes before merging. fatal: Exiting because of unfinished merge.
- **느낌점**  
  Git은 상태 기반으로 동작한다는 걸 실감했다. 병합 중이라는 상태를 명확히 인식하고, 단계별로 처리해야 오류를 피할 수 있다. Git의 내부 동작을 더 깊이 이해하게 된 계기였다.


```


---

 <br/>
 <br/>
 <br/>





## 📌 참고문헌
- [Git 공식 문서](https://git-scm.com/doc)  
- [Markdown 가이드](https://www.markdownguide.org/basic-syntax/)  
- [VS Code 공식 사이트](https://code.visualstudio.com/)  
- [AI 프롬프트 작성 팁](https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/prompt-engineering?tabs=chat)







## Track001 -  github (20250825~20250829)
```bash
---
### 1. git  vs  github
- git - 로컬에 파일의 변경이력 ( 내컴퓨터에 타임머신)
- github - 클라우드올려서 협업 (친구들과 공유작업공간)

---
### 2. 기본명령어
   `git init`  저장소 생성   (빈 상자 만들기 )
   `git add .`  변경된 파일추가 ( 상자에 그림넣기)
   `git commit -m "설명" `  저장 ( 그림에 이름붙여저장)
---
### 3. [실습1] github 회원가입 및 로그인
 -  https://github.com/

---
### 4. [실습2] github 저장소
-  오른쪽상단 - [+] - [New Repository]

---
### 5. [실습3] git
- git-scm.com
- 다운로드 - [설치] 
   - ■ (New!) Add a Git Bash Profile to Windows Termial

---
### 6. [실습4] git 
#### 6-1.  Gitbash   이름, 이메일 설정정보 
```bash
git  config  --global  user.name  "Sally An"
git  config  --global user.email   "sally03915@gmail.com"
git  config  --list
```
#### 6-2.  git init    로컬상자만들기 ★
```bash
vs code - https://code.visualstudio.com/
본인폴더 - [workspace] 폴더만들기
폴더로이동 - 터미널열기  ( ctrl + ` )
git init 
```
#### 6-3.  git add .  파일만들고 / 상자에 파일넣기  ★
#### 6-4.  git status  상태확인
#### 6-5.  git commit  -m "first commit"  
   뭘저장했는지 이름붙이고 저장  ★
#### 6-6.  git  remote  add  origin   `깃허브주소(원격저장소-공유작업)`
```bash
git  remote  add  origin  https://github.com/sally03915/fullstack_20250825.git
```
#### 6-7.  git  remote  -v  연결확인
#### 6-8.  git  push origin master   원격저장소에 올리기

---
###  7. [실습5] git 수정후 (ctrl + s) 다시 올리기
```bash
파일수정
git  add  .
git commit -m "git 수정후 다시올리기"
git push origin master
```
### 8. 트러블슈팅
##### 8-1. 문제코드
```bash
TJ-BU-703-P03@DESKTOP-5CVIKGS MINGW64 /c/KIMYOUNGMIN/workspace (master)
$ git commit -m "git 수정 후 다시올리기"
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)       
        modified:   day001.md

no changes added to commit (use "git add" and/or "git commit -a")
```
##### 8-2. 🔧 해결 방법
- 아래방법을 했는데도 처리안됨.
- 너무나도 단순한 이유였음!  **저장안함**......

✅ 방법 1: 특정 파일만 추가
```bash
git add day001.md
git commit -m "git 수정 후 다시올리기"
```

✅ 방법 2: 모든 변경된 파일 추가
```bash
git add .
git commit -m "git 수정 후 다시올리기"
```

✅ 방법 3: 변경된 파일 자동 추가 후 커밋
```bash
git commit -am "git 수정 후 다시올리기"
```


```bash
## Track001 -  github

# 다른친구가 수정하고 올림!
### 9  pull & push  - 최신상황 반영하고 올리기
나도 수정했거든?
**[개념설명]**
- [git:로컬] - push - [github:클라우드]
- [github:클라우드] - pull - [git:로컬]

1. [git-로컬]day002.md 파일만들기 - 제목쓰기
2. [git-로컬]day002.md 파일 올리기 (github)
```bash
git add .     
git commit  -m  "day002.md"
git push origin master
```
3. [github]  github에서 day002.md 파일 수정 (깃허브에서바꾸고싶은내용)
4. [git-로컬] day002.md 파일수정 후 commit (로컬에서 바꿔서 서로 다르게 만들기)
```bash
git add .
git commit -m "day002.md local 파일수정"
```
5. [git-로컬] `git pull origin master` 충돌
```bash
git pull origin master
```
6. 두개 파일중 원하는 파일을 선택해서 파일 수정한다.   
7. 오류수정후 파일상태저장해서 다시 올리기
```bash
git add .
git commit -m "day002.md 오류해결완료"
git pull  origin master
git push  origin master
```


### 트러블슈팅 (1)
```bash
TJ-BU-703-강사PC@DESKTOP-2Q95R1R MINGW64 /d/hyojung/workspace (master)
$ git pull  origin master 
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)     
Unpacking objects: 100% (3/3), 1.03 KiB | 15.00 KiB/s, done.
From https://github.com/sally03915/fullstack_20250825
 * branch            master     -> FETCH_HEAD
   031d931..5ac68d8  master     -> origin/master
Auto-merging day002.md
CONFLICT (content): Merge conflict in day002.md
t the result.
```
 
- 해결방안: 
1) 두개파일비교해서 local파일수정
2) git add .     
3) git commit  -m "test"  
4) git pull origin master
5) git push orign  master
 

### 트러블슈팅 (2)
```bash
TJ-BU-703-강사PC@DESKTOP-2Q95R1R MINGW64 /d/hyojung/workspace (master|MERGING) $ git pull origin master error: You have not concluded your merge (MERGE_HEAD exists). hint: Please, commit your changes before merging. fatal: Exiting because of unfinished merge.
```
git에서 merge 안된상태에서 git pull 시도
> 병합을 시작했지만 아직완료되지 않음.

- 해결방안: 
1) 두개파일비교해서 local파일수정
2) git add .     
3) git commit  -m "test"  
4) git pull origin master
5) git push orign  master


### .gitignore
```bash
PS D:\hyojung\workspace> git add . warning: in the working copy of 'track003_java/.gitignore', LF will be replaced by CRLF the next time Git touches it warning: in the working copy of 'track003_java/java2025/.gitignore', LF will be replaced by CRLF the next time Git touches it PS D:\hyojung\workspace>
```
> 단순한 줄바꿈(Line Ending) 관련 안내. 
> Git이 .gitignore 파일을 처리할 때 줄바꿈 형식을 자동으로 바꾼다는 뜻
```


```bash
## Track001 -  github

# ■ Github   
### 10. 기본  markdown 문법 
📁 `track001_github/`  
├── `me2.png` : 프로필 이미지  
├── `markdown.md` : `**마크다운 문법 정리 파일**` 
├── `README.md` : `**프로젝트 소개 및 기술스택 요약**`   

```
# 제목 (제일 큰 제목 - h1)
## 중간 제목
### 작은 제목
#### step4
##### step5
###### step6

<!-- 주석 : 제목 h1~h6 -->
---
🍟🍔  이모지 `윈도우 + .(점)`

---

- 🍟🍔 햄버거세트
- 🍕  피자
- 🌭 핫도그

1. 주문한다
2. 만든다.
3. 커피를먹는다.

---
*기울이기*
**굵은글씨**
~~취소선~~    `~~`

> 말풍선

***`강조`***

```
여러줄 긴코드블록
여러줄을 쓸때 이렇게
```

```java
public class Hello{
  public static void main(String []args){
    System.out.println("Hello");
  }
}
```

[🔗링크걸기](https://github.com/sally03915/fullstack_20250825)

![프로필](./me.png)

---
|이름|나이|
|-|-|
|sally|7살|
|alpha|3살|
```

```bash
## Track001 -  github

# ■ Github   
### 12. 깃허브 협업 
> 복습문제로 정리

## 📚 day003 복습문제  
#  Markdown 문법 복습
1. 가장 큰 제목을 만들기 위한 Markdown 문법은 `#`이다.
2. 텍스트를 기울이게 하려면 `*기울이기*`처럼 작성한다.
3. 굵은 글씨는 `**굵게**`로 표현한다.
4. 취소선을 만들기 위한 문법은 `~~취소선~~`이다.
5. 여러 줄의 코드를 작성할 때 사용하는 블록 문법은 `<code>```</code>`이다.
6. 링크를 걸기 위한 문법은 `[텍스트](http://www.naver.com)`이다.
7. 이미지를 삽입할 때 사용하는 문법은 `![텍스트](./img/user1.png)`이다.
8. 순서 있는 리스트는 `ol` 태그로 작성하고,  1. 
   순서 없는 리스트는 `ul` 태그로 작성한다.  -
9. 말풍선을 표현할 때 사용하는 문법은 `>`이다.
10. 강조를 위한 문법은 `***강조***`이다.

#   HTML 문법 복습
11. 제목을 나타내는 태그는 `h1`부터 `h6`까지 있다.
12. 줄바꿈과 공백을 유지하는 문단 태그는 `pre`이다.
13. 이미지를 삽입할 때 사용하는 태그는 `img`이며, 경로는 `src`, 
    대체 텍스트는 `alt` 속성으로 지정한다.
14. 링크를 연결할 때 사용하는 태그는 `a`이고, 
    새 창으로 열기 위해 사용하는 속성은 `target="_blank"`이다.
15. 설명 리스트를 만들기 위한 태그는 `dl`이다.
16. HTML에서 그룹핑을 위한 태그는 `div`이다.

# JAVA 문법 복습
17. 줄바꿈 없이 출력하는 명령어는 `System.out.print()`이다.
18. 줄바꿈이 포함된 출력은 `System.out.println()`이다.
19. 줄바꿈을 위한 특수문자는 `\n`이다.
20. 포맷 형식으로 문자열과 숫자를 출력할 때 사용하는 명령어는 `System.out.printf()`이며, 형식은 `이름 : %s  나이 : %d`이다.
// 문제. 포맷형식을 이용하여 다음과 같은 출력 결과가 나오도록 전체 클래스 파일 작성하시오
// 출력 결과:
// 이름 : 길동  나이: 12
```java
package  com.company.java001;  //패키지경로

public class A001{ //어디서든지 접근가능한, 부품객체, A001
   public                   static void main(String[] arg){ 
 //어디서든지 접근가능한 , 바로사용가능 , 전원버튼이름
       System.out.printf("이름 : %s  나이: %d" ,  "길동", 12 );   
   }
}
```
> 정리3번 -   
```

```bash
## Track001 -  github

# ■ Github   
### 12. 깃허브 협업🚀
> 복습문제로 정리
>실습
- Q1. 금일 정리파일 day005.md   깃허브에 올리기
- Q2. github [클라우드] 에서 day005.md.
- Q3. git에서 [로컬]에서  day005.md 
      클라우드와 수정한 다른부분 수정 올리기
- Q4. Q3. 발생하는 오류 - 트러블슈팅 




```bash
 git add .
 git commit -m "현재상태저장"
 git pull origin msater
 git push origin master 
```


```bash
 발생문제 : 로컬 master 와 원격브렌치 (origin/master) 차이 발생
 해결방안 : 
```

 git pull origin master --rebase


```bash
 --rebase 로컬변경사항을 원격변사항위에 덮기
``` 

```bash
 git diff
 q 빠져나오기
 ```

 ```bash
 git status
 ```

---

```bash
## Track001 -  github (20250901~20250905)

```## Track001 -  github
# ■ Github   
### 12. 깃허브 협업 
  
---
■ 1. 어필 본인 소개  
■ 2. 랜덤 팀 뽑기

ㅁ3. 프로젝트 들어가즈음 - 내팀장을찾아서 팀장뽑아주기 ... 다음번 프로젝트시
ㅁ4. 팀장 팀원 ... 다음번 프로젝트시
1. 팀 - 팀장
2. 팀 - 자리 ( 팀장님들 체크)
3. 팀 - 팀명  
4. 팀 - 우리팀에 관한 질문
> This Week~!
■ 1. 이력서사진  → ~이번주  > .png , .gif
■ 2. 팀뽑기


---
1. html + css + js/jquery 
2. spring + mybatis + jstl  + thymeleaf 
3. node + react
4. spring boot + jpa + mybatis + react
5. flutter + spring boot + jpa + mybatis + react


### [실습1] 정리

- [ ] 1.  vs code
- [ ] 2.  github 
- [ ] 3.  git  (서명바꾸기)
- [ ] 4.  자료옮기기 ( 본인주소 )

```bash
git clone https://github.com/사용자명/저장소명.git
git clone https://github.com/sally03915/fullstack_20250825.git
```


### [실습2] 친구저장소 (포트폴리오1) 가져오기
- [] 1. 친구저장소 fork 누르기
- [] 2. git clone  https://github.com/내아이디/복사된저장소.git
```bash
https://github.com/sally03915/fullstack_parkHJ.git
```
- [] 3. cd 복사된 저장소
- [] 4. 새작업공간만들기(branch) git checkout -b  dev-본인닉네임
- [] 5. dev-본인닉네임.md  파일에 내용추가
- [] 6. git add .  / git commit -m "인사말추가" / git push origin  dev-본인닉네임

> Q question 
1. [팀장] - portfolio 저장소   트러블슈팅 올리고 의견나눌 저장소( 정리 ) 
2. [팀원] - fork / git clone / 인사파일올리기


###  [실습3] 팀프로젝트
1. 팀장 - 저장소 / 친구들 초대 (Settings / Collaborators and teams ) - add
   sally03915@gmail.com  
2. 팀원 - 이메일( 초대잘받았다~ )  / 수락
3. 팀원 - 저장소복제  ( 저장소클록 / 폴더이름지정 )
         조장이 만든 상자를 내컴퓨터로 가져오기 - 폴더명은 teacher
```
git clone  https://github.com/sally03915/fullstack_20250825  teacher
cd  teacher
```
4. 팀원 - 팀플시작 (1)
```
cd  teacher 
git checkout -b   dev-소문자이름
dev-소문자이름.md      파일만들기 - teacher폴더안
git add dev-소문자이름.md
git commit -m "first dev-소문자이름"
git push origin  dev-소문자이름
```
5. 팀원 - 팀플시작 (2)
```
1. 팀장 깃허브주소
2. Compard & pull  request 클릭
3. 제목과 메시지 작성 - 작업마무리완료입니다. 제안
```
 



### [실습4] 팀프로젝트

3i1e         : https://github.com/kyoungsjjj0211/portfolio.git
드래곤치킨     : https://github.com/taehun00/dragonchicken.git
트리플윈      : https://github.com/suda77881/triple1

1조 : 유희재, 한승현, 김정민, 강서현
2조 : 성태훈, 길상현, 박현주, 임경민
3조 : 최상욱, 김영민, 신준용


> 각 조장님 포함 브랜치만들기
> 파일체크

> 다음파일  - 파일이름 myteam.md  [하나로 해결해서 합치기]

| 항목 | 질문 예시 | 활용 방향 |
|------|-----------|------------|
| 팀명  | 우리 팀 이름은 무엇이며 어떤 의미를 담고 있나요? | 브랜딩 요소 |
| 팀장  | 우리 팀의 리더는 누구이며 어떤 스타일인가요? | 리더십 유형 분석 |
| 팀원1 | 팀장님들의 자리는 어디에 있나요? (역할 중심) | 역할 분담 시각화 |
| 팀원2 | 팀장님들의 자리는 어디에 있나요? (역할 중심) | 역할 분담 시각화 |
| 팀원3 | 팀장님들의 자리는 어디에 있나요? (역할 중심) | 역할 분담 시각화 |
| 좋아하는 것 | 각 팀원이 좋아하는 분야나 기술은 무엇인가요? | 역량 매핑 |
| 팀규칙 | 카톡 읽씹하지 말기, 지각조퇴결석 연락주기| 성장 중심 팀 문화 강조 가능 |
| **함께 만든 것** | 우리가 함께 만들고 싶은 프로젝트는 무엇인가요? | 포트폴리오 콘텐츠 |

---
---
## Track001 -  github

 ## 📚 day006복습  
Q1. 복습문제 - GITHUB
복습문제1) FORK 와 팀원을 초대했을때의 차이점은?
```
FORK     :  저장소 복사해서 가져오기, 수정권한 없음
팀원 초대 :  저장소 커밋, 브랜치생성, pr등을 할수 있는 권한 부여
```

복습문제2) 팀원들을 EMAIL로 초대해서 작성시 다음부분을 코드 채우시오. 
1-1. 팀원 -  팀장이 만든 상자를 내컴퓨터로 가져오기 - 폴더명은  portfolio
```
git clone  주소  portfolio
```
1-2. 팀원 - 브랜치 만들어서 파일한개 올리기
``` 
cd portfolio
git checkout -b  브랜치명
파일만들기
git  add  파일명
git  commit -m "메시지"
git  push origin  브랜치명
```
1-3. 팀원 - pr하는방법은?
``` 
팀장깃허브 /  compard & pull request 클릭 / 메시지작성 제안
```
 





# ■ Github   
### 12. 깃허브 협업 

---
1. html + css + js/jquery 
2. spring + mybatis + jstl  
3. node + react
4. spring boot + thymeleaf + jpa + mybatis + react  
5. flutter + spring boot + jpa + mybatis + react


---
1조 : 유희재, 한승현, 김정민, 강서현
2조 : 성태훈, 길상현, 박현주, 임경민
3조 : 최상욱, 김영민, 신준용
3i1e         : https://github.com/kyoungsjjj0211/portfolio.git
드래곤치킨     : https://github.com/taehun00/dragonchicken.git
트리플윈      : https://github.com/suda77881/triple1
 
Q 깃허브정리문제
1. 파일명 portfolio.md
2. 각 branch 를 이용하여 본인 관심있는 or 
   취업에 유리한 포트폴리오 주제3개씩 적어서 적고 팀별 best 1,2,3 정리  
   
```bash  
> ai 프롬프트
풀스택개발자 포트폴리오를 연결해서 시리즈로 작성하려고하는데 각주제별 시리즈로 내용연결해서 실무진이 이 주제를 보고 정말로 뽑고싶다라는 생각이 드는 매력적인 주제 3가지만 뽑아줘
```

---
---
## Track001 -  github
```bash
## 📚 day007복습  
■ 복습문제 
복습문제1)  ~09:50  정리 및 스크린샷
<div class="card jack"></div>
<style>
   .card {
      width:250px; margin:0 auto 30px auto;  border-radius:20px; 
      box-shadow:0 0 10px rgba(0,0,0,0.1); text-align:center; padding:20px;
   }
   .jack {  background-image:linear-gradient(135deg, #dbeafe , #f0f9ff ); }
</style>
내부적용방법으로 다음을 작성하시오.
Q1. .card 너비 : 250px, 여백 : 아래쪽 30px 중앙정렬, 테두리 둥글게 : 20px, 그림자효과, 중앙정렬, 안쪽여백 : 20px,  
Q2. .jack 배경 : 그라디언트 #dbeafe → #f0f9ff 




# ■ Github   
### 12. 깃허브 협업 
 
---
1조 : 유희재, 한승현, 김정민, 강서현
2조 : 성태훈, 길상현, 박현주, 임경민
3조 : 최상욱, 김영민, 신준용
3i1e         : https://github.com/kyoungsjjj0211/portfolio.git
드래곤치킨     : https://github.com/taehun00/dragonchicken.git
트리플윈      : https://github.com/suda77881/triple1

> 자기 소개페이지 찾아보기  + 참고사항 정리

■ 참고링크
https://nbcamp.spartacodingclub.kr/blog/%EA%B0%9C%EB%B0%9C%EC%9E%90-%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4-%EC%98%88%EC%8B%9C-5%EA%B0%9C-%EB%AA%A8%EC%9D%8C-%EA%B3%B5%EC%9C%A0-%EB%B0%B1%EC%97%94%EB%93%9C-%ED%94%84%EB%A1%A0%ED%8A%B8%EC%97%94%EB%93%9C-%EA%B0%9C%EB%B0%9C%EC%9E%90-%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4-63589

■ 자기소개페이지

| 이름 | 특징 | 링크 |
|------|------|------|
| **최지은 포트폴리오** | 감성적인 타이포그래피, 부드러운 인터랙션, 섹션별 명확한 구성 | [jieun-portfolio.vercel.app](https://jieun-portfolio.vercel.app) |
| **이정민 포트폴리오** | 미니멀한 UI, 섹션별 애니메이션 효과 | [leejeongmin.vercel.app](https://leejeongmin.vercel.app) |
| **박세빈 포트폴리오** | 감성적인 컬러와 인터랙션, 프로젝트 중심 구성 | [savinpark.github.io/portfolio](https://savinpark.github.io/portfolio) |
| **강모대 포트폴리오** | Azure 기반 배포, 깔끔한 구성 | [onlyone-modaekang.azurewebsites.net](https://onlyone-modaekang.azurewebsites.net) |
| **이보아 포트폴리오** | 디자이너 감성의 레이아웃, 섬세한 타이포그래피 | [leeboa.com](http://leeboa.com) |

---

---
## Track001 -  github

```bash
# ■ Github   
### 12. 깃허브 협업 
 
---
1조 : 유희재, 한승현, 김정민, 강서현
2조 : 성태훈, 길상현, 박현주, 임경민
3조 : 최상욱, 김영민, 신준용
3i1e         : https://github.com/kyoungsjjj0211/portfolio.git
드래곤치킨     : https://github.com/taehun00/dragonchicken.git
트리플윈      : https://github.com/suda77881/triple1
```

---

---
## Track001 -  github (20250908~20250912)


# ■ Github   
### 12. 깃허브 협업 
---
1조 : 유희재, 한승현, 김정민, 강서현
2조 : 성태훈, 길상현, 박현주, 임경민
3조 : 최상욱, 김영민, 신준용
3i1e         : https://github.com/kyoungsjjj0211/portfolio.git
드래곤치킨     : https://github.com/taehun00/dragonchicken.git
트리플윈      : https://github.com/suda77881/triple1

---


---

---