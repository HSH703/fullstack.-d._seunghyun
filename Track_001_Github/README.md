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






```bash
## Track001 -  github (20250825~20250829)
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
