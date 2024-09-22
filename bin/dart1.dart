//import 'dart:io';

// ignore_for_file: unnecessary_type_check

void main() {
  //printing hello world
  print("Hello world!");
  // imperative programming - executed in order of appearence
  print("from Dart");
/*
// io library for user input/output
// stdin = standard input.
// readLineSync() method (function) reads a line from the input.
  print("Hello + ${stdin.readLineSync()}");
*/


/* challenge:
In this challenge, your task is to display some text. The text you have to display is a famous movie quote.
*/
  print(
      "My mamma always said, life is like a box of chocolates. You never know what you're gonna get.");

  int myFirstVar = 22;
  print(myFirstVar);

/* Uninitialized variables have an initial value of null
  int unInitialized;
  print(unInitialized);
*/
/* num variableName = Number Literal
num variableName = Number Variable */
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
  print(exponent); // prints 143000.0

  // double integer = Number Variable
  double doubleVar = 2;

  print(doubleVar); // prints 2.0

// String variableName = String Literal
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

// You are given two variables, name and age, which store a person’s name and age respectively. You have to
//embed name and age in a larger string and print the ﬁnal string.

  String name = "Vikshan";
  int age = 22;
  String info = "$name is $age years old.";

  print(info);

//bool variableName = Boolean Literal

  bool b1 = true;

  print(b1);

// type inference = var variableName = Initial Value
  var channel = 'Vikshan Media';
  var owner = 'Vikshan';
  var subs = 600;

  print('The $channel channel is owned by $owner and has $subs subs');

  // runtimeType holds information about the data type of the variable.
  print(
      '"$owner" is a ${owner.runtimeType} while "$subs" is an ${subs.runtimeType}');

// Variable types are inferred from their initial value.
//It’s also important to mention that subsequent assignments are not considered.
//This means that too precise a type may be inferred.
//If that is not desired, you can add type annotation.

  var num1a = 4;
  print(num1a);

  /* num1 = 6.9; 
    print(num1);

  When you run the code snippet above, you will get an error. 
  When we initialized number with an integer, the compiler inferred that number is of type int. 
  Hence, when we reassigned it a value of type double, the compiler displays an error.*/

  /*Here, we can use type annotation and declare the number variable using the num data type. 
  Remember that type num is generic enough to hold both int and double.*/

  num num2a = 6;
  print(num2);

  num2a = 8.9;
  print(num2a);

// If you want a variable to hold objects of many types, you can declare a variable using the dynamic keyword.
  dynamic dyn = '';
  print(dyn.runtimeType);

  dyn = 5.6;
  print(dyn.runtimeType);

  dyn = 69;
  print(dyn.runtimeType);

  dyn = true;
  print(dyn.runtimeType);

// A ﬁnal variable (a variable created using the final keyword) is initialized the ﬁrst time it is used and can only

  final name1 = 'vikshan'; // compile-time & runtime
  print(name1);

  const age1 = 22; // compile-time only
  print(age1);

// arithmetic operations

  var num1b = 69;
  var num2b = 20;

  print(num1b + num2b); // addition: prints 89
  print(num1b - num2b); // subtraction: prints 49
  print(num1b * -num2b); // multiplication: prints -1380
  print(num1b / num2b); // division: prints 3.45
  print(num1b ~/ num2b); // integer division: prints 3
  print(num1b % num2b); // modulo: prints 9
  print(-num2b); // negation: prints -20

// Prefix and postfix operators#
// The increment and decrement operators are used to increase or decrease the value of a variable by 1.
// The increment operator has two forms: prefix and postfix.
// The prefix form (++variable) increases the value of the variable and then returns the value.

  var num1c = 5;
  print(++num1c); // prints 6
  print(num1c); // prints 6

  // The postfix form (variable++) returns the value of the variable and then increases the value.
  var num2c = 5;
  print(num2c++); // prints 5
  print(num2c); // prints 6

  // The decrement operator has the same behavior as the increment operator.
  var num3 = 5;
  print(--num3); // prints 4
  print(num3); // prints 4

  var num4 = 5;
  print(num4--); // prints 5
  print(num4); // prints 4

// Relational operators
// Relational operators are used to compare two values. They return a boolean value (true or false) based on the comparison.

  var num1d = 5;
  var num2d = 3;

  print(num1d > num2d); // greater than: prints true
  print(num1d < num2d); // less than: prints false
  print(num1d >= num2d); // greater than or equal to: prints true
  print(num1d <= num2d); // less than or equal to: prints false
  print(num1d == num2d); // equal to: prints false
  print(num1d != num2d); // not equal to: prints true

  // equality operators can be used on non-numeric data types as well
  var str1 = 'Dart';
  var str2 = 'dart';
  var str3 = 'Dart';

  print(str1 == str3); // prints true
  print(str1 == str2); // prints false
  print(str1 != str2); // prints true

// Type test operators
// Type test operators are used to check the data type of a variable. They return a boolean value (true or false) based on the comparison.

  var num1e = 5;
  var str1a = 'Dart';

  print(num1e is int); // prints true
  print(str1a is! int); // prints true
  print(str1a is String); // prints true
  print(num1e is! String); // prints true

// Logical operators
// Logical operators are used to combine two or more conditions. They return a boolean value (true or false) based on the conditions.

  var num1f = 5;
  var num2f = 3;

// logical AND: returns true if both conditions are true
// num1f > num2f is true and num1f < num2f is false
// true && false is false
  print(num1f > num2f && num1f < num2f); // logical AND: prints false

// logical OR: returns true if at least one condition is true
// true || false is true
  print(num1f > num2f || num1f < num2f); // logical OR: prints true

// logical NOT: returns the opposite of the condition
// !(num1f > num2f) is !(true) which is false
  print(!(num1f > num2f)); // logical NOT: prints false

// Assignment operators
// Assignment operators are used to assign values to variables.
//They are used to store the result of an expression in a variable.
// They take the form var1 += var2 which is equivalent to var1 = var1 + var2.

  num num1g = 5;
  num num2g = 3;

  num1g += num2g; // num1g = num1g + num2g
  print(num1g); // prints 8

  num1g -= num2g; // num1g = num1g - num2g
  print(num1g - num2g); // prints 2
  print(num1g); // prints 5

  num1g *= num2g; // num1g = num1g * num2g
  print(num1g); // prints 15

  num1g /= num2g; // num1g = num1g / num2g
  print(num1g); // prints 5.0

  num1g ~/= num2g; // num1g = num1g ~/ num2g
  print(num1g); // prints 1

  num1g %= num2g; // num1g = num1g % num2g
  print(num1g); // prints 1

// Bitwise operators
// Bitwise operators are used to perform bitwise operations on binary numbers.

  var num1h = 5; // binary 101
  var num2h = 3; // binary 011

  // bitwise AND: returns 1 if both bits are 1
  // 101 & 011 is 001 which is 1
  print(num1h & num2h); // prints 1

  // bitwise OR: returns 1 if at least one bit is 1
  // 101 | 011 is 111 which is 7
  print(num1h | num2h); // prints 7

  // bitwise XOR: returns 1 if the bits are different
  // 101 ^ 011 is 110 which is 6
  print(num1h ^ num2h); // prints 6

  // bitwise NOT: returns the complement of the number
  // ~101 is 010 which is 2
  print(~num1h); // prints -6

  // bitwise left shift: shifts the bits to the left
  // 101 << 1 is 1010 which is 10
  print(num1h << 1); // prints 10

  // bitwise right shift: shifts the bits to the right
  // 101 >> 1 is 10 which is 2
  print(num1h >> 1); // prints 2
}
