##1. node+react

###1. node.js
- javascript 런타임환경
- 비동기 이벤트 기반 

#### (1) 설치
http://nodejs.org/kr

1. 다운로드
2. 설치
3. 설치확인
```
cmd

C:\WINDOWS\system32>node -v
v24.12.0

C:\WINDOWS\system32>
C:\WINDOWS\system32>
C:\WINDOWS\system32>npm -v
11.6.2

C:\WINDOWS\system32>
```

4. vs code에서 열기 (node 인식못하는 경우)
4-1. powershell node인식확인 (node -v)
4-2. 오류

```
PS C:\Users\tj-bu-703-14>
PS C:\Users\tj-bu-703-14>
PS C:\Users\tj-bu-703-14> npm -v
npm : 이 시스템에서 스크립트를 실행할 수 없으므로 C:\Program Files\nodejs\npm.ps1 파일을 로드할 수 없습니다. 자세한 내
용은 about_Execution_Policies(https://go.microsoft.com/fwlink/?LinkID=135170)를 참조하십시오.
위치 줄:1 문자:1
+ npm -v
+ ~~~
    + CategoryInfo          : 보안 오류: (:) [], PSSecurityException
    + FullyQualifiedErrorId : UnauthorizedAccess
```

4-3. 
``` js

PS C:\Users\TJ-BU-703-강사PC> Get-ExecutionPolicy
RemoteSigned
PS C:\Users\TJ-BU-703-강사PC> Set-ExecutionPolicy  RemoteSigned
```


#### (2) 프로젝트 만들기
```js
npm init
```

■[실습]
[project]
ㄴ back    # node  ✅
ㄴ front   # react

```js 명령어 입력 순서
mkdir back - directory 만들기
cd back
npm init
```

■ 구조확인
back/
├── config/
│   └── db.js              #  Oracle Db 설정     
├── middlewares/
│   └── isAuthenticated.js # 로그인 인증 미들웨어     
├── models/
│   └── users.js           # 사용자 DB 모델 및 쿼리함수   
├── passport/
│   ├── index.js           #   Password 초기화
│   └── local.js           #   Local 전략 설정   
├── routes/
│   └── user.js            #    사용자 관련 api 라우터
├── node_modules/          #    npm패키지           
├── .env                   #    환경변수         
├── app.js                 #    서버 진입점             
├── package.json           # ✅ 프로젝트 설정 및 스크립트         
├── package-lock.json      # 패키지 버전 고정         
├── test1_model_testUsers.js  # 테스트스크립트


```js
사용하고자 하는 모듈설정이 들어간 package.json을 폴더에 넣기
npm install
```

#### (3) 서버 진입점 ( 'app.js' )
1. app.js 작성
2. 실행
```js
npx nodemon app.js
```

### 2. 개발
### 1. model
```js
SQL> desc appuser;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 APP_USER_ID                               NOT NULL NUMBER(5)
 EMAIL                                     NOT NULL VARCHAR2(100)
 PASSWORD                                           VARCHAR2(100)
 NICKNAME                                           VARCHAR2(50)
 MOBILE                                             VARCHAR2(50)
 MBTI_TYPE_ID                                       NUMBER(3)
 UFILE                                              VARCHAR2(255)
 CREATED_AT                                         DATE
```


create sequence APPUSER_SEQ;


(2) db설정 
back/
├── config/
│   └── db.js                 #     Oracle Db 설정        
├── .env                      #     환경변수  
├── models/
│   └── users.js              # 사용자 DB 모델 및 쿼리함수
├── test1_model_testUsers.js  # 테스트스크립트

2-1. .env   - 무거우니깐 깃허브에는 올리지 말기.
2-2. [config] - db.js


(3) [models] - [users.js]
(4) 모델함수 테스트

