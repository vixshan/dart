/// This Dart program demonstrates various operations on sets, including:
/// 
/// - Creating sets using both literal syntax and the `Set` class.
/// - Ensuring sets do not contain duplicate elements.
/// - Creating empty sets and specifying their type.
/// - Adding single and multiple elements to a set.
/// - Finding the length of a set.
/// - Removing single and multiple elements from a set.
/// - Checking if an element or multiple elements are in a set.
/// - Performing set operations such as intersection, union, and difference.
/// - Checking if a set is empty or not.
/// - Iterating over elements in a set.
/// - Converting a set to a list and a map.
/// - Clearing all elements from a set.
/// 
/// The program includes print statements to display the results of each operation.
// ignore_for_file: equal_elements_in_set, dangling_library_doc_comments

void main() {
  // Creating a set
  var numbers = {1, 2, 3, 4};
  print('Numbers: $numbers'); // prints Numbers: {1, 2, 3, 4}

  // craeting a set using the Set class
  var fruits = <String>{'Apple', 'Banana', 'Mango'};
  print('Fruits: $fruits'); // prints Fruits: {Apple, Banana, Mango}

  // sets can't have duplicate elements, even if you try to add them
  var numbers2 = {1, 2, 3, 4, 5, 1, 2, 3};
  print('Numbers2: $numbers2'); // prints Numbers2: {1, 2, 3, 4, 5}

  // Creating an empty set
// whwn declaring an empty set, you need to specify the type of elements that the set will contain
// otherwise, Dart will create a Map object instead of a Set object
  var emptySet = <String>{}; // method 1
  print('Empty set: $emptySet'); // prints Empty set: {}

  Set<String> emptySet2 = {}; // method 2
  print('Empty set2: $emptySet2'); // prints Empty set2: {}


  // Adding an element to the set
  fruits.add('Orange');
  print('fruits.Add: $fruits'); // prints Fruits: {Apple, Banana, Mango, Orange}

  // adding multiple elements to the set
  fruits.addAll({'Grapes', 'Watermelon'});
  print('fruits.addAll: $fruits'); // prints Fruits: {Apple, Banana, Mango, Orange, Grapes, Watermelon}

  // finding length of the set
  print('fruits.length: The set has ${fruits.length} elements'); // prints The set has 6 elements
  print('numbers2.length: The set has ${numbers2.length} elements'); // prints The set has 5 elements, because the set can't have duplicate elements

  // Removing an element from the set
  fruits.remove('Banana');
  print('fruits.remove: $fruits'); // prints Fruits: {Apple, Mango, Orange, Grapes, Watermelon}

  // removing multiple elements from the set
  fruits.removeAll({'Orange', 'Grapes'});
  print('fruits.removeAll: $fruits'); // prints Fruits: {Apple, Mango, Watermelon}

  // Checking if an element is in the set
  if (fruits.contains('Apple')) {
    print('fruits.contains(): Apple is in the set');
  } 

  // .containsAll() method checks if all elements in the specified collection are in the set
  if (fruits.containsAll({'Apple', 'Mango'})) {
    print('fruits.containsAll(): Apple and Mango are in the set');
  }

  // intersection() method returns a new set with elements that are in both the set and the specified collection
  var moreFruits = {'Apple', 'Banana', 'Mango', 'Pineapple'};
  var commonFruits = fruits.intersection(moreFruits);
  print('fruits.intersection: $commonFruits'); // prints Fruits: {Apple, Mango}

  // union() method returns a new set with all elements that are in either the set or the specified collection
  var allFruits = fruits.union(moreFruits);
  print('fruits.union: $allFruits'); // prints Fruits: {Apple, Mango, Watermelon, Banana, Pineapple}

  // difference() method returns a new set with elements that are in the set but not in the specified collection
  var differentFruits = fruits.difference(moreFruits);
  print('fruits.difference: $differentFruits'); // prints Fruits: {Watermelon}

  // Checking if the set is empty
  if (fruits.isEmpty) {
    print('fruits.isEmpty: The set is empty');
  } else {
    print('fruits.isEmpty: The set is not empty');
  }

  // Checking if the set is not empty
  if (fruits.isNotEmpty) {
    print('fruits.isNotEmpty: The set is not empty');
  } else {
    print('fruits.isNotEmpty: The set is empty');
  }

  // Iterating over the set
  for (var fruit in fruits) {
    print('fruits.forEach: $fruit');
  }

  // Converting the set to a list
  var fruitsList = fruits.toList();
  print('fruits.toList: $fruitsList'); // prints Fruits: [Apple, Mango, Watermelon]

  // Converting the set to a map
  var fruitsMap = fruits.toList().asMap();
  print('fruits.asMap: $fruitsMap'); // prints Fruits: {0: Apple, 1: Mango, 2: Watermelon}

  // Removing all elements from the set
  fruits.clear();
  print('fruits.clear: $fruits'); // prints Fruits: {}

}