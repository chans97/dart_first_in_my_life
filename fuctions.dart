// Defining a Functions
String sayHello_origin(String name) {
  return "Hello ${name} nice to meet you.";
}

String sayHello_fat_arrow_syntax(String name) =>
    "Hello ${name} nice to meet you.";

// Named Parameters
// Its variables are optional by default.
// Therefore, you must either provide a default value, mark it as required, or allow it to be null.
String sayHello_named_parameters(
    {String name = "chan", required int age, String? country}) {
  return "${name} / ${age} / ${country}";
}

// Optional Positional Parameter
String sayHello_optional_positional_parameter(String name,
    [int? age = 1, String? country = ""]) {
  return 'Hello ${name}, You are ${age} from the ${country}';
}

// QQ Operator
// null error case
String upperName_null_error_case(String name) => name.toUpperCase();
void main_null_error_case() {
  upperName_null_error_case('jisoung');
  upperName_null_error_case(null); // Error!
}

// Let's fix the bug.
String upperName_fix_bug(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'NONE';
}

void main_fix_bug() {
  upperName_fix_bug('jisoung');
  upperName_fix_bug(null); // Ok!
}

//make it short.
String upperName_short(String? name) =>
    name != null ? name.toUpperCase() : "NONE";

// QQ Operator is better.
String upperName(String? name) => name?.toUpperCase() ?? "NONE";

// typedef
typedef ListOfInts = List<num>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversedList = list.reversed.toList();
  return reversedList;
}
