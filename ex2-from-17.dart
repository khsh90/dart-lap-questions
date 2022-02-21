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

// void main() {
//   tickTocMatrixGame(
//     row1: [1, 2, 3],
//     row2: [4, 5, 6],
//     row3: [7, 8, 1],
//   );
// }

// void tickTocMatrixGame(
//     {required List<int> row1,
//     required List<int> row2,
//     required List<int> row3}) {
//   var tickTocMatrix = [row1, row2, row3];

//   var listAll = [];
//   var list0 = [];
//   var list1 = [];
//   var list2 = [];

//   for (var game in tickTocMatrix) {
//     // print(game);
//     listAll.add(game[0]);
//     listAll.add(game[1]);
//     listAll.add(game[2]);
//   }

//   list0.add(listAll[0]);
//   list0.add(listAll[1]);
//   list0.add(listAll[2]);
// // -------------------------------
//   list1.add(listAll[3]);
//   list1.add(listAll[4]);
//   list1.add(listAll[5]);
//   // --------------------------------
//   list2.add(listAll[6]);
//   list2.add(listAll[7]);
//   list2.add(listAll[8]);
// // -------------------------------

// // Row compersion. for player 1

//   if (list0[0] == 1 && list0[1] == 1 && list0[2] == 1) {
//     print('Player 1 Win');
//   } else if (list1[0] == 1 && list1[1] == 1 && list1[2] == 1) {
//     print('Player 1 Win');
//   } else if (list2[1] == 1 && list2[1] == 1 && list2[2] == 1) {
//     print('Player 1 Win');
//   }
//   // ------------------------------------
//   // Coulmn compersion. for player 1
//   else if (list0[0] == 1 && list1[0] == 1 && list2[0] == 1) {
//     print('Player 1 Win');
//   } else if (list0[1] == 1 && list1[1] == 1 && list2[1] == 1) {
//     print('Player 1 Win');
//   } else if (list0[2] == 1 && list1[2] == 1 && list2[2] == 1) {
//     print('Player 1 Win');
//   }

// // -----------------------------------------
//   // Row compersion. for player 2

//   else if (list0[0] == 2 && list0[1] == 2 && list0[2] == 2) {
//     print('Player 2 Win');
//   } else if (list1[0] == 2 && list1[1] == 2 && list1[2] == 2) {
//     print('Player 2 Win');
//   } else if (list2[0] == 2 && list2[1] == 2 && list2[2] == 2) {
//     print('Player 2 Win');
//   }
// // -----------------------------------------

//   // Coulmn compersion. for player 2
//   else if (list0[0] == 2 && list1[0] == 2 && list2[0] == 2) {
//     print('Player 2 Win');
//   } else if (list0[1] == 2 && list1[1] == 2 && list2[1] == 2) {
//     print('Player 2 Win');
//   } else if (list0[1] == 2 && list1[2] == 2 && list2[2] == 2) {
//     print('Player 2 Win');
//   }

//   // ---------------------------------------------------------------
//   // player 1 diagonal

//   else if (list0[0] == 1 && list1[1] == 1 && list2[2] == 1) {
//     print('Player 1 Win');
//   } else if (list0[2] == 1 && list1[1] == 1 && list2[0] == 1) {
//     print('Player 1 Win');
//   }
//   // ---------------------------------------------------------------
//   // player 2 diagonal

//   else if (list0[0] == 2 && list1[1] == 2 && list2[2] == 2) {
//     print('Player 2 Win');
//   } else if (list0[2] == 2 && list1[1] == 2 && list2[0] == 2) {
//     print('Player 2 Win');
//   } else {
//     print('Palyer 1 & 2 equal');
//   }
//   // -----------------------------------------------------------------
// }

