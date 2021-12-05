import 'dart:io';

void main() {
  final products = [];

  var isRunning = true;

  while (isRunning) {
    print('\x1B[2J\x1B[0;0H');
    print('== Shopping List (${products.length}) -- commands[add, print] ==');
    var userInput = stdin.readLineSync();

    if (userInput == 'add') {
      print('\x1B[2J\x1B[0;0H');
      print('== Add a product ==');
      var product = stdin.readLineSync();
      products.add(product);
    } else if (userInput == 'print') {
      print('\x1B[2J\x1B[0;0H');
      print('== All registered products ==');
      print('\n');
      for (var i = 0; i < products.length; i++) {
        print(products[i]);
      }
      stdin.readLineSync();
    } else {
      isRunning = false;
    }
  }
  print('\x1B[2J\x1B[0;0H');
  print('Program stopped running');
}
