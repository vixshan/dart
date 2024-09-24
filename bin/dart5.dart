void main() {
/*An Introduction to Control Structures
Control structures are used to control the flow of a program. Dart has the following control structures:
1. if-else
2. switch-case
3. for loop
4. while and do-while loop
5. assert
6. break and continue
*/
// if-else
// The if-else statement is used to execute a block of code if a condition is true. If the condition is false, another block of code can be executed.
// lets check an exapmle to empty a list only if its not empty
  var fruits = ['Apple', 'Banana', 'Mango'];
  print('Fruits list: $fruits'); // prints Fruits list: [Apple, Banana, Mango]
  if (fruits.isNotEmpty) {
    fruits.clear();
    print(
        'Fruits list is now empty: $fruits'); // prints Fruits list is now empty: []
  }

  // else and else if
  // The else statement is used to execute a block of code if the condition in the if statement is false.
  var numbers = [];
  print(numbers);

  if (numbers.isNotEmpty) {
    print("Emptying List");
    numbers.clear();
  } else {
    print("Adding stuff to List");
    numbers.addAll({2, 4, 8, 16, 32});
  }
  print('Numbers: $numbers'); // prints Numbers: {2, 4, 8, 16, 32}

  // The else if statement is used to execute a block of code if the condition in the if statement is false and another condition is true.
  var ageAlice = 25;
  var ageBob = 30;

  if (ageAlice > ageBob) {
    print('Alice is older than Bob');
  } else if (ageAlice < ageBob) {
    print('Alice is younger than Bob');
  } else {
    print('Alice and Bob are the same age');
  }

  // the ternary operator
  // The ternary operator is a shorthand way of writing an if-else statement.

  var a = 5;
  var b = 10;
  var result = a > b ? 'a is greater than b' : 'a is less than or equal to b';
  print(result); // prints a is less than or equal to b

/* Given the final percentage a student has gotten at the end of a semester, you need to write a program that decides if the student has passed or failed the semester.

If the percentage is higher than or equal to 60, the student has passed the semester. If the percentage is lower than 60, the student has failed the semester.

However, the percentage is not the only thing that determines if a student has passed or failed. A student does not pass if their score is 5 points below the class average.

For instance, if the average class score is 70, the student must have a minimum score of 65 to pass.

If the average class score is 50, the student still needs a score of 60 to pass based on our first condition. */

  var average = 83;
  var percentage = 81;

  if (percentage >= 60 && percentage - average >= 5) {
    print('pass');
  } else {
    print("fail");
  }

// for loop
// The for loop is used to execute a block of code a specified number of times.
// lets print the first 5 even numbers
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // iterating over a collection
  var fruits2 = ['Orange', 'Pineapple', 'Grapes', 'Watermelon'];
  for (var fruit in fruits2) {
    print('I love $fruit');
  }

  // Alternatively
  for (var i = 0; i < fruits.length; i++) {
    print('I love ${fruits2[i]}');
  }
  /* // the same can be achieved using forEach 
  fruits2.forEach(
      (fruit) => print('i love $fruit')); // prints apple, banana, mango */

  // the for-in loop can also be used with maps
  var ages = {'Natasha': 35, 'Clint': 40, 'Peter': 18};
  for (var entry in ages.entries) {
    print('${entry.key} is ${entry.value} years old');
  }
  // It can be used with sets as well
  var colorList = ['blue', 'yellow', 'green', 'red'];

  for (var i in colorList) {
    print('Color: $i');
  }

  /* Project Idea: Multiplying and Filtering Lists
  You have to create and populate a list of integers using an already existing list. 
  Multiply each item in the list with 3. 
  The items of the final list should only contain even numbers.*/

  var evenList = [];
  var integers = [6, 7, 3, 9, 2, 5, 4];

  for (var i = 0; i < integers.length; i++) {
    var tripledValue = integers[i] * 3;
    if (tripledValue % 2 == 0) {
      evenList.add(tripledValue);
    }
  }

  print('evenList: $evenList'); // prints evenList: [18, 6, 12]

  // while loop
  // The while loop is used to execute a block of code as long as a condition is true.
  var count = 0;
  while (count < 5) {
    print(count);
    count++;
  }
  print('count: $count'); // prints count: 5

  // do-while loop
  // The do-while loop is used to execute a block of code at least once, and then repeatedly execute it as long as a condition is true.
  var count2 = 0;
  do {
    print('count2: $count2');
    count2++;
  } while (count2 < 5);

  // infinite loop
  // An infinite loop is a loop that never stops executing. It is created by omitting the condition in the while loop.
  // while (true) {
  //   print('This is an infinite loop');

  //   // to stop the infinite loop, use the break statement
  //   break;
  // }

  // assert
  // The assert statement is used to test if a condition is true. If the condition is false, the program will throw an AssertionError.
  var x = 5;
  var y = 10;
  assert(x < y); // no output because the condition is true
  // assert(x > y); // AssertionError: 'x < y' is not true.

  /*Your oven has an initial temperature and you need to heat it to 375o. 
  If the temperature of the oven, upon checking, is under 375o, you increase the temp by 25o each time.

You need to keep track of the number of times you had to increase the temperature by 25o.*/
  var ovenTemp = 300;
  var count3 = 0;

  while (ovenTemp < 375) {
    ovenTemp += 25;
    count3++;
  }

  print(
      'The oven temperature is $ovenTemp and it took $count3 times to heat it to 375o');

// alternatively
  var temperature = 300;
  var tempList = [];
  while (temperature < 375) {
    temperature += 25;
    tempList.add(temperature);
  }
  print(tempList);
  var count4 = tempList.length;
  print(
      'The oven temperature is $temperature and it took $count4 times to heat it to 375o');

// note if we use initial temp as 321, the output will be [346, 371, 396] and 3.
// !to fix

// break and continue
  var numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var number in numbers2) {
    if (number == 5) {
      break;
    }
    print(number);
  }

  // continue
  // The continue statement is used to skip the rest of the code in the loop and move to the next iteration.
  var exp = [10, 2, 7, 5, 8, 3, 1, 6, 9, 4];
  for (var index = 0; index < exp.length; index++) {
    var candidateExp = exp[index];
    if (candidateExp < 5) {
      continue;
    }
    print("Call candidate $index for an interview.");
  }

  // switch-case
}

