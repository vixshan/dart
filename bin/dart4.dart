/// This Dart program demonstrates various operations on maps, including:
/// 
/// - Creating maps using literals and constructors
/// - Specifying the type of keys and values
/// - Adding new key-value pairs
/// - Adding multiple key-value pairs using `addAll`
/// - Finding the length of the map
/// - Removing key-value pairs using `remove` and `removeWhere`
/// - Checking if a key or value exists in the map
/// - Checking if multiple keys or values exist in the map
/// - Accessing values using keys
/// - Accessing keys using values
/// - Retrieving all keys and values
/// - Iterating over the map using `forEach`
/// 
/// The program includes examples with different types of keys and values,
/// and demonstrates how to manipulate and query the map in various ways.

library;
// ignore_for_file: prefer_collection_literals

void main() {
  // Creating a map using a map literal
  Map ages = {'Alice': 25, 'Bob': 30, 'Charlie': 35};
  print('ages: $ages'); // prints {Alice: 25, Bob: 30, Charlie: 35}

// using a map constructor
// it first creates an empty map and then adds key-value pairs to it
  Map ages2 = Map();
  ages2['Vikhan'] = 22;
  ages2['Charity'] = 18;
  ages2['Nebula'] = 35;
  print('ages2: $ages2'); // prints {Vikhan: 22, Charity: 18, Nebula: 35}

  // specifying the type of keys and values
  Map<String, int> ages3 = {'Thor': 1500, 'Stark': 53, 'Bruce': 50};
  print('ages3: $ages3'); // prints {Thor: 1500, Stark: 53, Bruce: 50}

  // Adding a new key-value pair
  ages3['Steve'] = 112;
  print(
      "ages3: $ages3"); // prints {Thor: 1500, Stark: 53, Bruce: 50, Steve: 112}

// Adding multiple key-value pairs
  ages3.addAll({'Natasha': 35, 'Clint': 40, 'Peter': 18});
  print(
      'ages3.addAll: $ages3'); // prints {Thor: 1500, Stark: 53, Bruce: 50, Steve: 112, Natasha: 35, Clint: 40, Peter: 18}

// Finding the length of the map
  print(
      'ages3.length: The map has ${ages3.length} key-value pairs.'); // prints The map has 6 key-value pairs.

// Removing a key-value pair
  ages3.remove('Steve');
  print(
      'ages3.remove: $ages3'); // prints {Thor: 1500, Stark: 53, Bruce: 50, Natasha: 35, Clint: 40, Peter: 18}

// you can also use .removeWhere() method to remove key-value pairs based on a condition
  ages3.removeWhere((key, value) => key == 'Clint');
  print(
      'ages3.removeWhere: $ages3'); // prints {Thor: 1500, Stark: 53, Bruce: 50, Natasha: 35, Peter: 18}

// Removing multiple key-value pairs
// .removeAll() and .clear() methods are not available for maps
  ages3.removeWhere((key, value) =>
      value <=
      35); // removes all key-value pairs where the value is less than or equal to 35
  print(
      'ages3.removeWhere: $ages3'); // prints {Thor: 1500, Stark: 53, Bruce: 50}

// Checking if a key or value is in the map
  if (ages3.containsKey('Thor')) {
    print('Thor is in the map.');
  }
  if (ages3.containsValue(53)) {
    print('53 is in the map.');
  }

// Checking if multiple keys or values are in the map
// you can use the .keys and .values properties to get a set of keys and values in the map
// convert the set to a list/set and then use the .containsAll() method to check if all elements are in the map
  if (ages3.keys.toSet().containsAll({'Thor', 'Stark'})) {
    print('Both Thor and Stark are in the map.');

// Alternatively, you can use the .containsKey() method to check if a key is in the map
    if (ages3.containsKey('Thor') && ages3.containsKey('Stark')) {
      print('Both Thor and Stark are in the map.');
    }
// accessing a value using a key
    print('Thor is ${ages3['Thor']} years old.');

// accessing a key using a value using the .keys property and the .firstWhere() method
    var key = ages3.keys.firstWhere((key) => ages3[key] == 53);
    print('53 is the age of $key.');

// retrieving all keys and values
    print('Keys: ${ages3.keys}'); // prints Keys: (Thor, Stark, Bruce)
    print('Values: ${ages3.values}'); // prints Values: (1500, 53, 50)

    // Iterating over the map
    ages3.forEach((key, value) {
      print('$key is $value years old.');
    });
  }
}
