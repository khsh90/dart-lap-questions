//ex17:

// Time for some fake graphics! Let’s say we want to draw game boards that look like this:

//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// |   |   |   |
//  --- --- ---
// This one is 3x3 (like in tic tac toe).

// Ask the user what size game board they want to draw,
// and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

void main() {
  stdout.write('Please enter the print size : ');
  final userInput = stdin.readLineSync();

  if (userInput != null && userInput.isNotEmpty) {
    var userInt = int.tryParse(userInput);
    if (userInt != 0 && userInt != null) {
      drowGrid(drowSize: userInt);
    }
  }
  stdout.write('this drow size : $userInput x $userInput ');
}

void drowGrid({required int drowSize}) {
  var dashes = ' ---';
  var coulumns = '|   ';

  for (var i = 0; i < drowSize; i++) {
    print(dashes * drowSize);
    print(coulumns * drowSize + coulumns);
  }
  print(dashes * drowSize);
}
