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

