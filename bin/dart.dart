/* void main() {
  //printing hello world
  print("Hello world!");
  // imperative programming - executed in order of appearence
  print("from Dart");
} */

/* import 'dart:io';
// io labrary for user input/output
// stdin = standard input. 
// readLineSync() method (function) reads a line from the input.
void main() {
  print("Hello" + stdin.readLineSync());
}
*/

/*
/* challenge:
In this challenge, your task is to display some text. The text you have to display is a famous movie quote.
*/
void main() {
  print(
      "My mamma always said, life is like a box of chocolates. You never know what you're gonna get.");
}
*/

/*
void main() {
  int myFirstVar = 22;
  print(myFirstVar);
}
*/

/*
// Uninitialized variables have an initial value of null
void main() {
  int unInitialized;
  print(unInitialized);
} */

/*
/* num variableName = Number Literal
num variableName = Number Variable */
void main() {
  // num variableName = Number
  num firstNum = 5;
  num secNum = 3.14;

  // num variableName = variable
  num thirdNum = firstNum + secNum;

  print(firstNum); // prints 5
  print(secNum); // prints 3.14
  print(thirdNum); // prints 8.14

// int variableName = Number Literal
  int simpInt = 10;
  int hexInt = 0x10;

  // int variableName = Number Variable
  int integer = simpInt;

  print(hexInt); // prints 16
  print(integer); // prints 10

// double variableName = Number Literal
  double simpDouble = 10.45;
  double exponent = 1.43e5;

  print(simpDouble); // prints 10.45
  print(exponent); // prints 1430000.0

  // double integer = Number Variable
  double doubleVar = 2;

  print(doubleVar); // prints 2.0
}
*/

// String variableName = String Literal
void main() {
  String s1 = "Dart ";
  String s2 = "is ";
  String s3 = "awesome";
  // string conantation
  print(s1 + s2 + s3);

  // string concentation works on multiple lines as well
  String m1 = 'This '
      "also "
      'works!';
  print(m1);

  // string interpolation using just $

  print('This code $s2 written in $s1 and it\'s $s3');
  int num1 = 3;
  int num2 = 5;
  // string interpalatio using ${}
  print("The sum of $num1 and $num2 is ${num1 + num2}");

// multiline strings => close with '''string''' or """string"""
String multi1 = '''This is a
multiline string''';
String multi2 = """This is also a
multiline string""";

print(multi1);
print(multi2);

}
