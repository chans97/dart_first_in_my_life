import 'dart:collection';

void main() {
  // data type
  // basic type
  String a;
  bool b;
  int c;
  double d;
  num int_double;
  var numbers = [];

  // list
  List<int> numvers = [
    1,
    3,
    4,
    if (true) 5,
  ];

  // String Interpolation
  var maW = 'chae';
  var aa = 'werwefdsf \$ $maW ${maW + '2'}';

  // Collection For
  var old = ["1", "2"];
  var newf = [
    '3',
    '4',
    '5',
    for (var nume in old) "😘$nume",
  ];
  print(newf);

  // Maps
  var maptest = {
    "we": 123,
    "er": "123",
  };

  // Sets
  Set settest = {1, 2, 3};
}
