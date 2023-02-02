import 'dart:ffi';

void main() {
  print('hello world');

// variables
  var name = "chansoo";
  dynamic age = 12;
  age = "123";
  var height;
  if (age is String) {
    age.isNotEmpty;
  }

  /// null safety
  String? nico = 'nico';
  nico = null;
  if (nico != null) {
    nico.isNotEmpty;
  }
  nico?.isNotEmpty;

  /// final
  final chance = "whale";

  /// late
  late final once;
  once = 1233;

  /// const
  //// compile time const
  const Name = "we";

  // data type
  String a;
  bool b;
  int c;
  double d;
  num int_double;
  var numbers = [];
  List<int> numvers = [
    1,
    3,
    4,
    if (true) 5,
  ];
  print(numvers[2]);

  var maW = 'chae';
  var aa = 'werwefdsf \$ $maW ${maW + '2'}';
  print(aa);

  var old = ["1", "2"];
  var newf = [
    '3',
    '4',
    '5',
    for (var nume in old) "😘$nume",
  ];
  print(newf);

  var maptest = {
    "we": 123,
    "er": "123",
  };

  Set settest = {1, 2, 3};
  print(sayHello(name: 'wr', age: 234, country: '234s'));

// cascade Notation
  // var jisoung =
  //     Player(name: "jisoung", age: 17, description: "Happy code is end coding")
  //       ..name = "nico"
  //       ..age = 20
  //       ..description = "Best Project is End Project";
}

String sayHello({String name = "", int? age, required String country}) {
  return "$name, $country, $age";
}

String asay2(String nam) => "$nam";

String asay3([String nam = "12"]) => "$nam";

String capitalizeName(String? name) => name?.toUpperCase() ?? "we";

// TypeDef

// 자료형에 사용자가 원하는 alias를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)

typedef ListOfInts = List;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversedList = list.reversed.toList();
  return reversedList;
}

// dart에서 property를 선언할 때는 타입을 사용해서 정의한다.
class Player {
// 이럴 때 late를 사용한다.
  late final String name;
  late final int age;
// 클래스 이름과 같아야한다!
  // Player(String name) {
  //   this.name = name;
  // }
  // 생략
  // Player(this.name, this.age);
  Player({required this.name, required this.age});

  // Player.createBluePlayer({
  //   required String name,
  //   required int age,
  // })  : this.age = age,
  //       this.name = name,
  //       this.team = 'blue',
  //       this.xp = 0;
}

enum Team { red, blue }

//abstract class
abstract class Human {
  void walk();
}

class Player23 extends Human {
// 생략
  void walk() {
    print("working!");
  }
}

class Human12 {
  final String name;
  Human12({required this.name});
  void sayHello() {
    print("$name");
  }
}

class Player12 extends Human12 {
  final Team team;
  Player12({required this.team, required String name}) : super(name: name);
  @override
  void sayHello() {
    super.sayHello();
  }
}

// ## Mixins
// Mixin은 생성자가 없는 클래스를 의미한다.
// Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
// Mixin의 핵심은 여러 클래스에 재사용이 가능하다는 점이다.
// ```dart
class Tail {
  final double tall = 190.00;
}

class Human1 with Tail {
// 생략
  final num asd;
  Human1({required this.asd});
}
