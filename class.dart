class Player {
  //initialize it only once later.
  late final String name;
  int age = 17;

  // Player(String name) {
  //   this.name = name;
  // }
  // you can use constructors in this way.
  //// Player(this.name);
  // If there are too many arguments, it's confusing.
  // so we can use in this way : Named Constructor Parameters
  Player({required this.name, required this.age});

  void sayName() {
// It is recommended not to use 'this' in a class method.
    print("Hi my name is $name");
  }
}

void main() {
// we don't have to use 'new' to make an object.
  // var player = Player("chance");

  // for Named Constructor Parameters
  var player = Player(name: "chance", age: 12);
}

class Gamer {
  int age, xp;
  String name, team;

  // Named Constructors
  Gamer.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;
}

// Cascade Notation
void main_cascade_notation() {
  // var gamer = Gamer.createBluePlayer(name: "chance", age: 12);
  //   gamer.name = "chaes";
  //   gamer.xp = 12;

  // Cascade Notation
  var gamer = Gamer.createBluePlayer(name: "chance", age: 12)
    ..name = "chaes"
    ..xp = 12;
}

// Enums
enum Team {
  red,
  blue,
}

class Player_enum {
  String name;
  int age;
  Team team;

  Player_enum({
    required this.name,
    required this.age,
    required this.team,
  });
}

// Abstract Classes
abstract class Human {
  void walk();
}

class Walker extends Human {
  int age = 1;
  void walk() {
    print("working!");
  }

  Walker({required this.age});
}

// Inheritance
class Human_inheritance {
  late final String name;
  Human_inheritance(this.name);
}

class Player_inheritance extends Human_inheritance {
  final Team team;
  Player_inheritance({required this.team, required String name}) : super(name);
}

// Mixins

// Mixin means a class without a constructor.
// Mixin class uses with instead of extends when inheriting.
// The key to a mixin is that it can be reused for multiple classes.

class Tall {
  final double tall = 190.00;
}

class Human_mixins with Tall {
// pass
}
