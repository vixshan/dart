/// This Dart script demonstrates various operations on lists, including:
/// 
/// - Creating lists using literals and constructors
/// - Accessing elements using indexing
/// - Getting the length of a list
/// - Adding elements using `add` and `addAll`
/// - Inserting elements using `insert` and `insertAll`
/// - Removing elements using `remove`, `removeAt`, `removeLast`, `removeRange`, and `removeWhere`
/// - Clearing all elements using `clear`
/// - Sorting elements using `sort`
/// - Creating sublists using `sublist`
/// - Transforming elements using `map`
/// - Iterating over elements using `forEach`
/// - Checking conditions using `any` and `every`
/// - Filtering elements using `where`
/// - Finding elements using `firstWhere` and `singleWhere`
/// - Combining elements using `reduce` and `fold`
/// - Joining elements using `join`
/// 
/// Additionally, it includes a challenge to:
/// 
/// - Calculate the sum of all elements in a list of integers
/// - Calculate the cube of each element in a list of integers

// ignore_for_file: dangling_library_doc_comments, avoid_function_literals_in_foreach_calls

void main() {
  String name = "Vikshan";

  print("name.indexOf('h') = ${name.indexOf('h')}"); // prints 2

// lists
// 1. using literals
  var list = [1, 2, 'ver'];

  print('list = $list'); // prints [1, 2, ver]

// 2. using constructor
// you have to specify the type of the list
  var list2 = <dynamic>[];
  list2.add(1);
  list2.add(2);
  list2.add('ver');

  print('list2 = $list2'); // prints [1, 2, ver] */

  // indexing
  // lists use 0 based indexing
  print('list[0] = ${list[0]}'); // prints 1
  print('list[1] = ${list[1]}'); // prints 2
  print('list[2] = ${list[2]}'); // prints ver

  // length
  // length returns the number of elements in the list
  // it is a read-only property
  print('length of list2 = ${list2.length}'); // prints 3

  // add
  // add() is used to add an element of the same type to the end of the list

  var vegetables = ['potato', 'tomato'];
  vegetables.add('carrot');
  print('vegetables.add = $vegetables'); // prints [potato, tomato, carrot]

  // addAll
  // addAll() is used to add multiple elements of the same type to the end of the list

  var fruits = ['apple', 'banana'];
  fruits.addAll(['mango', 'kiwi']);
  print('fruits.addAll = $fruits'); // prints [apple, banana, mango, kiwi]

  // insert
  // insert() is used to insert an element at a specific index in the list

  var animals = ['cat', 'dog', 'elephant'];
  animals.insert(1, 'lion');
  print('animals.insert = $animals'); // prints [cat, lion, dog, elephant]

  // insertAll
  // insertAll() is used to insert multiple elements at a specific index in the list

  var birds = ['parrot', 'sparrow'];
  birds.insertAll(0, ['crow', 'pigeon']);
  print('birds.insertAll = $birds'); // prints [crow, pigeon, parrot, sparrow]

  // remove
  // remove() is used to remove the first occurrence of a specific element from the list

  var cars = ['bmw', 'audi', 'benz'];
  cars.remove('audi');
  print('cars.remove("audi") = $cars'); // prints [bmw, benz]

  // removeAt
  // removeAt() is used to remove an element at a specific index from the list

  var bikes = ['harley', 'ducati', 'suzuki', 'honda'];
  bikes.removeAt(2);
  print('bikes.removeAt(2) = $bikes'); // prints [harley, ducati, honda]

  // if the index is unknown, you can use removeAt() with indexOf() to remove an element

  bikes.removeAt(bikes.indexOf('ducati'));
  print(
      'bikes.removeAt(bikes.indexOf("ducati")) = $bikes'); // prints [harley, honda]

  // removeLast
  // removeLast() is used to remove the last element from the list

  var laptops = ['dell', 'hp', 'lenovo'];
  laptops.removeLast();
  print('laptops.removeLast() = $laptops'); // prints [dell, hp]

  // removeRange
  // removeRange() is used to remove elements in a specific range from the list
  var mobiles = ['samsung', 'apple', 'nokia', 'sony', 'lg'];
  mobiles.removeRange(1,
      3); // removes elements from index 1 to 3 (inclusive) the range is inclusive, but the end index is exclusive
  print('mobiles.removeRange(1, 3) = $mobiles'); // prints [samsung, sony, lg]

  // removeWhere
  // removeWhere() is used to remove elements that satisfy a condition from the list
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  numbers.removeWhere((number) => number % 2 == 0); // removes even numbers
  print(
      'numbers.removeWhere number%2==0(even) = $numbers'); // prints [1, 3, 5, 7, 9]

  // clear
  // clear() is used to remove all elements from the list
  // print("numbers.clear() = ${numbers.clear()}"); // prints null

  // sort
  // sort() is used to sort the elements in the list
  var numbers2 = [5, 3, 1, 4, 2];
  numbers2.sort();
  print('numbers2.sort() = $numbers2'); // prints [1, 2, 3, 4, 5]

  // sublist
  // sublist() is used to get a sublist of the list
  var subList =
      numbers2.sublist(1, 4); // returns a list from index 1 to 4 (exclusive)
  print('numbers2.sublist(1, 4) = $subList'); // prints [2, 3, 4]

  // map
  // map() is used to transform each element in the list
  var countries = ['Kenya', 'USA', 'UK', 'Mali', 'France'];
  var lengths = countries.map((country) => country.length);
  print(
      'countries.map = $lengths'); // prints (5, 3, 2) // note: it is a lazy operation
  print('countries.map.toList() = ${lengths.toList()}'); // prints [5, 3, 2]

  // forEach
  // forEach() is used to iterate over the elements in the list
  var fruits2 = ['apple', 'banana', 'mango'];
  fruits2.forEach(
      (fruit) => print('i love $fruit')); // prints apple, banana, mango

  countries.forEach(
      (country) => print('$country is ${country.length} characters long'));

  // any
  // any() is used to check if at least one element satisfies a condition
  var numbers3 = lengths.toList();
  print(
      'numbers3.any number%2==0(even) = ${numbers3.any((number) => number % 2 == 0)}'); // prints true

  // every
  // every() is used to check if all elements satisfy a condition
  print(
      'numbers3.every number%2==0(even) = ${numbers3.every((number) => number % 2 == 0)}'); // prints false

  // where
  // where() is used to filter elements that satisfy a condition
  var evenNumbers =
      numbers3.where((number) => number % 2 == 0); // checks for even numbers
  print('numbers3.where number%2==0(even) = $evenNumbers'); // prints (2, 4, 6)

  // firstWhere
  // firstWhere() is used to get the first element that satisfies a condition
  var firstOddNumber = numbers3
      .firstWhere((number) => number % 2 != 0); // checks first odd number
  print('numbers3.firstWhere number%2!=0(odd) = $firstOddNumber'); // prints 5

  // singleWhere
  // singleWhere() is used to get the single element that satisfies a condition
  var books = ['vanity fair', 'war and peace', 'the great gatsby'];
  var book = books.singleWhere((book) => book == 'war and peace');
  print('books.singleWhere = $book'); // prints war and peace

  // reduce
  // reduce() is used to combine elements in the list
  var numbers4 = [1, 2, 3, 4, 5];
  var sum = numbers4.reduce((value, element) =>
      value + element); // adds all elements i.e. 1 + 2 + 3 + 4 + 5
  print('numbers4.reduce = $sum'); // prints 15

  // fold
  // fold() is used to combine elements in the list with an initial value
  var sum2 = numbers4.fold(
      10,
      (value, element) =>
          value +
          element); // adds all elements with an initial value of 10 i.e. 10 + 1 + 2 + 3 + 4 + 5
  print('numbers4.fold = $sum2'); // prints 25

  // join
  // join() is used to join elements in the list with a separator
  var words = ['the', 'best', 'book', 'is'];

  var sentence = words.join(' ');
  print(
      'words.join = $sentence $book'); // joins the best book is then adds war and peace string

// the same can be achieved using reduce
  var sentence2 = words.reduce(
      (value, word) => '$value $word'); // joins the elements with a space
  print(
      'words.reduce = $sentence2 $book'); // prints the best book is war and peace

// Chhallenege
// You are given a list of integers, numbers.
// You have to create a variable, sum3, which calculates the sum of all the elements in the list.

  var int = [1, 2, 3, 4, 5];
  var sum3 = int.reduce((number, value) => number + value);
  print(sum3);

// You have to create a variable, cubes, which calculates the cube of each element in the list and prints as a list.

  var cubes = int.map((number) => number * number * number).toList();
  print(cubes);
}
