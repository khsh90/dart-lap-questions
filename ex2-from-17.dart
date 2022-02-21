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

// import 'dart:io';

// void main() {
//   stdout.write('Please enter the print size : ');
//   final userInput = stdin.readLineSync();

//   if (userInput != null && userInput.isNotEmpty) {
//     var userInt = int.tryParse(userInput);
//     if (userInt != 0 && userInt != null) {
//       drowGrid(drowSize: userInt);
//     }
//   }
//   stdout.write('this drow size : $userInput x $userInput ');
// }

// void drowGrid({required int drowSize}) {
//   var dashes = ' ---';
//   var coulumns = '|   ';

//   for (var i = 0; i < drowSize; i++) {
//     print(dashes * drowSize);
//     print(coulumns * drowSize + coulumns);
//   }
//   print(dashes * drowSize);
// }

// --------------------------------------------------------------------------------------

// ex18
// As you may have guessed, we are trying to build up to a full tic-tac-toe board.
// For now, we will simply focus on checking whether someone has WON the game, not worrying about how the moves were made.

// If a game of Tic Tac Toe is represented as a list of lists, like so:

// game = [[1, 2, 0],
//         [2, 1, 0],
//         [2, 1, 1]]
// where a 0 means an empty square, a 1 means that player 1 put their token in that space,
// and a 2 means that player 2 put their token in that space.

// Your task: given a 3 by 3 list of lists that represents a Tic Tac Toe game board,
//tell whether anyone has won, and tell which player won, if any.

// A Tic Tac Toe win is 3 in a row - either in a row, a column, or a diagonal.
// Don’t worry about the case where TWO people have won - assume that in every board there will only be one winner.

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
