# **Variables and Data Types**

* **Variables:** Think of them like containers to store information.
* **Data Types:** Tell Dart what kind of information is in the container.

**Code Example**

```dart
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

    // Create variables to store your favorite color, a number representing your lucky number, and a boolean indicating whether you like pizza.

    String favColor = "cyan";
    int luckyNum = 69;
    bool likePizza = true;

    print("You also like the color $favColor and your lucky number is $luckyNum.");
      if (likePizza) {
        print("You do like pizza.");
      } else {
          print("You hate pizza");
        }
          if (age >= 18) {
    print("This person is eligible to vote.");
  } else {
    print("This person is not eligible to vote.");
  }

  }
```

**Explanation**

* `//`: Used for single-line comments.
* `String`: Stores text.
* `int`: Stores whole numbers.
* `bool`: Stores `true` or `false`.
* `print()`: Displays output on the console.
* `$`: Used for string interpolation (inserting variable values into strings).
* `if/else`: Controls the flow of the program based on conditions.

**Exercise**

* Create variables to store your favorite color, a number representing your lucky number, and a boolean indicating whether you like pizza.
* Print these values to the console in a creative way.

Feel free to ask if you have any questions or want to see more examples! 


# **Strings and String Operations**
## **Basic Arithmetic Operators**

*   `+` (Addition)
*   `-` (Subtraction)
*   `*` (Multiplication)
*   `/` (Division)
*   `%` (Modulo - gives the remainder of a division)

**Code Example**

```dart
void main() {
  int num1 = 12;
  int num2 = 2;

  int sum = num1 + num2; // sum will be 13
  int perimeter = sum * 2;
  int difference = num1 - num2; // difference will be 7
  int product = num1 * num2; // product will be 30
  double quotient = num1 / num2; // quotient will be 3.3333333333333335
  // Use integer division: If you only want the whole number part of the result (e.g., the quotient of 10 / 3 is 3), use the integer division operator (~/).
  int intDiv = num1 ~/ num2; // quotient will be 3
  int remainder = num1 % num2; // remainder will be 1
  int numberToCheck = 6; // Replace with the number you want to check
  int age = 17; // Replace with the person's age

  print("Sum: $sum");
  print("Difference: $difference");
  print("Area: $product");
  print("Perimeter: $perimeter");
  print("Quotient: $quotient");
  print("integer Division: $intDiv");
  print("Remainder: $remainder");
   if (age >= 18) {
    print("This person is eligible to vote.");
  } else {
    print("This person is not eligible to vote.");
  }

  if (numberToCheck % 2 == 0) {
    print("$numberToCheck is even.");
  } else {
    print("$numberToCheck is odd.");
  }
}

```

**Comparison Operators**

*   `==` (Equal to)
*   `!=` (Not equal to)
*   `>` (Greater than)
*   `<` (Less than)
*   `>=` (Greater than or equal to)
*   `<=` (Less than or equal to)

**Logical Operators**

*   `&&` (AND)
*   `||` (OR)
*   `!` (NOT)

**Exercise**

1.  Calculate the area of a rectangle with length 12 and width 5.
2.  Check if a number is even or odd.
3.  Determine if a person is eligible to vote (age >= 18).

Excellent questions! Let's tackle them one by one.

**Check if a Number is Even or Odd**

```dart
int numberToCheck = 7; // Replace with the number you want to check

if (numberToCheck % 2 == 0) {
  print("$numberToCheck is even.");
} else {
  print("$numberToCheck is odd.");
}
```

**Explanation**

*   `%`: The modulo operator gives the remainder of a division.
*   If the remainder when dividing by 2 is 0, the number is even.
*   Otherwise, it's odd.

**Determine if a Person is Eligible to Vote**

```dart
int age = 17; // Replace with the person's age

if (age >= 18) {
  print("This person is eligible to vote.");
} else {
  print("This person is not eligible to vote.");
}
```

**Explanation**

*   `>=`: The greater than or equal to operator checks if the left side is greater than or equal to the right side.
*   If the age is 18 or more, the person is eligible.
*   Otherwise, they are not.

**Key Points**

*   These examples demonstrate the use of `if/else` statements for decision-making in your code.
*   You can replace the example values with variables to make your code more dynamic.

Now, you have the tools to check even/odd numbers and voting eligibility! 


