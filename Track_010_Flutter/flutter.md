### ■ FLUTTER

#### 1단계: FLUTTER 설치
[실습]

 1. Git으로 설치:
git clone https://github.com/flutter/flutter.git -b stable C:\flutter
2. 환경 변수 설정:
시스템 환경 변수 편집 → Path → C:\flutter\bin 추가
3. 실행 테스트:
flutter doctor


#### 2단계: VS 설치 / 확장프로그램
**[실습]**
- [x] VS Code 설치 ([공식 사이트](https://code.visualstudio.com/))  
- [x] 확장 프로그램 설치 (Ctrl+Shift+X):
  - Flutter  
  - Dart  

```
PS C:\flutter> flutter doctor
flutter : 'flutter' 용어가 cmdlet, 함수, 스크립트 파일 또는 실행할 수 있는 프
로그램 이름으로 인식되지 않습니다. 이름이 정확한지 확인하고 경로가 포함된 경우
 경로가 올바른지 검증한 다음 다시 시도하십시오.
위치 줄:1 문자:1
+ flutter doctor
+ ~~~~~~~
    + CategoryInfo          : ObjectNotFound: (flutter:String) [], CommandNot 
   FoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### 3단계: 앱실행
#### (A) Android Studio + 에뮬레이터
**[실습]**
- [x] Android Studio 설치 ([공식 사이트](https://developer.android.com/studio))  
- [x] SDK Manager 설정  
  - SDK Platforms → 최신 API 레벨 설치 (예: **Android 14**)  
  - SDK Tools → Command-line Tools, Emulator, Platform-Tools, Build-Tools 체크  
- [x] New Project  → hello1 (java)  
- [x] AVD Manager → **Pixel 6** 가상 디바이스 생성  
- [x] 디바이스 실행 - 무겁다....
- [x] 설치완료확인:  


#### 4단계: 첫 프로젝트 생성
**[실습]** 
- [x] 실행:
  ```bash
  flutter create hello2
  cd hello2
  ```
  ```bash
  flutter devices
  flutter run -d emulator-5554
  flutter run -d chrome
  ```

**[실습]**
- `lib/main.dart` 수정
```dart
    return Scaffold(
      appBar: AppBar( title: Text('첫번째 Flutter 앱')),
      body: Center( child: Text('Hello Flutter')),
    );
```
```
앱 실행중 터미널에서
- `r` → reload
- `R` → Restart
```



#### 5단계: 필수패키지 설치
**[실습]**
- [x] `pubspec.yaml` 수정(들여쓰기 주의):
  ```yaml
  dependencies:
    flutter:
      sdk: flutter
  1. http: ^1.1.0                서버통신  
  2. provider: ^6.1.1            상태관리패키지
  3. shared_preferences: ^2.2.2  로컬장소 (다크모드 설정, 로그인 토큰)
  4. go_router: ^12.1.3          url 기반 라우팅
  ```
- [x] 패키지 설치:
  ```bash
  flutter pub get
  flutter pub add http
  flutter pub add provider
  ```

pubspec.yml (환경 설정 파일)
  1. http: ^1.1.0                서버통신  
  2. provider: ^6.1.1            상태관리패키지
  3. shared_preferences: ^2.2.2  로컬장소 (다크모드 설정, 로그인 토큰)
  4. go_router: ^12.1.3          url 기반 라우팅




#### 6단계: dart 기본문법
```dart
// 1. lib/basic.dart  
// 2. dart run lib/basic.dart →  실행
// dart 기본문법

void main(){
  //1. 변수 선언
  int number = 10;
  double pi    = 3.14;
  String name  = "sally";
  bool   isb   = true;  //bool = boolean
  print("1. number : $number , pi: $pi , name: $name , isb: $isb");

  //2. 리스트(list)
  List<String> fruits = ["apple" , "banana" , "cocount"];
  fruits.add("durian");
  print("2. list : $fruits");

  //3. 맵(Map)
  Map<String, int> scores = {"one":1 , "two":2};
  scores["three"] = 3;
  print("3. map : $scores");

  //4. 조건문
  if(number > 5){
    print("4. 5 보다 크다.");
  }else{
    print("4. 5 보다 작다.");
  }

  //5. 반복문
  for( var f in fruits){
    print("5. fruits : $f");
  }

  //6. 함수(function) - 리턴값, 메서드명, 파라미터
  int sum(int a, int b){
    return a + b;
  }

  print("6. sum(3,5) = ${sum(3,5)}");

  //7. 클래스
  Person p =  Person("홍길동", 20);
  p.hello();

  //8. 비동기처리
  fetchData().then( (value)=>print("then : $value") );
  testAsync();
}

class Person{
  String name;
  int age;

  Person(this.name, this.age);
  void hello(){
    print("7. hello~! 저는 $name이고, 나이는 $age살 입니다.");
  }
}

// 비동기함수 
Future<String> fetchData() async{
  await Future.delayed(Duration(seconds:2));
  return "서버에서 데이터 가져오기 완료";
}

void testAsync() async {
  String result = await fetchData();
  print("await: $result");
}

```
