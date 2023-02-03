void main() {
  print('hello world');

// variables

// When you declare a variable inside a function,
// you don't have to specify the variable type.
// You can use var.
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
  // used in class concept
  final chance = "whale";

  /// late
  late final once;
  once = 1233;

  /// const
  //// compile time const
  const Name = "we";
}
