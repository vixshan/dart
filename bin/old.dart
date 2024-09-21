// This is a comment, Dart ignores it.

void main() {
  
    // Declaring a variable named 'name' and assigning it a string value.
    String name = "Vikshan";
    // Declaring a variable named 'age' and assigning it an integer value.
    int age = 22;
    // Declaring a variable named 'isStudent' and assigning it a boolean value.
    bool isStudent = false;

  // Printing the values of the variables to the console.
    print("Hello, $name! You are $age years old.");

    if (isStudent) {
      print("You are currently a student.");
    } else {
      print("You are not currently a student.");
    };
    if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }; 

  

    // Create variables to store your favorite color, a number representing your lucky number, and a boolean indicating whether you like pizza.

    String favColor = "cyan";
    int luckyNum = 69;
    bool likePizza = true;

    print("You also like the color $favColor and your lucky number is $luckyNum.");
      if (likePizza) {
        print("You do like pizza.");
      } else {
          print("You hate pizza");
        };

          
  int num1 = 12;
  int num2 = 2;

  int sum = num1 + num2; // sum will be 13
  int perimeter = sum * 2; // perimeter of a rectangle num1 by num2
  int difference = num1 - num2; // difference will be 7
  int product = num1 * num2; // product will be 30
  double quotient = num1 / num2; // quotient will be 3.3333333333333335
  // Use integer division: If you only want the whole number part of the result (e.g., the quotient of 10 / 3 is 3), use the integer division operator (~/).
  int intDiv = num1 ~/ num2; // quotient will be 3
  int remainder = num1 % num2; // remainder will be 1

  print("Sum: $sum");
  print("Difference: $difference");
  print("Area: $product");
  print("Perimeter: $perimeter");
  print("Quotient: $quotient");
  print("integer Division: $intDiv");
  print("Remainder: $remainder");

  int numberToCheckEven = 6; // Replace with the number you want to check

if (numberToCheckEven % 2 == 0) {
  print("$numberToCheckEven is even.");
} else {
  print("$numberToCheckEven is odd.");
}



}
