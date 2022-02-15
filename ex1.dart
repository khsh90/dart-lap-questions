// -------------------------------------------------------------
// ex1 :Create a program that asks the user to enter their name and their age
//. Print out a message that tells how many years they have to be 100 years old.
// import 'dart:io';

// void main() {
//   while (true) {
//     var total;
//     stdout.write('Enter your name:');
//     final userName = stdin.readLineSync();
//     if (userName != null && userName.isNotEmpty) {
//       stdout.write('Enter your Age:');
//       final userAge = stdin.readLineSync();
//       if (userAge != null && userAge.isNotEmpty) {
//         final intUserAge = int.tryParse(userAge);
//         if (intUserAge != null && intUserAge > 0) {
//           total = 100 - intUserAge;
//         }
//         stdout.write(
//             'Hello $userName , your age :$intUserAge years old you need $total years till reach 100 years  ');
//         break;
//       }
//     }

//     stdout.write(' Please enter your name \n');
//   }
// }

// --------------------------------------------------------------------
// Ex2:Ask the user for a number.
//Depending on whether the number is even or odd, print out an appropriate message to the user.

// import 'dart:io';

// void main() {
//   while (true) {
//     stdout.write('Please enter a number to know if even or odd:');
//     final userInput = stdin.readLineSync();
//     if (userInput != null && userInput.isNotEmpty) {
//       final intUserInput = int.tryParse(userInput);

//       if (intUserInput != null && intUserInput % 2 == 0) {
//         print('The number you entered is Even');
//       } else {
//         print('The number you entered is odd');
//       }
//     }
//   }
// }
// --------------------------------------------------------------------------
// // Ex3 :and write a program that prints out all the elements of the list that are less than 5.

// void main() {
//   var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   for (var number in a) {
//     if (number >= 5) {
//       print(number);
//     }
//   }
// }
// -----------------------------------------------------------------------------
// Ex4:
// import 'dart:io';

// void main() {
//   while (true) {
//     stdout.write('Enter a number to check if it is divisor:');
//     final userInput = stdin.readLineSync();

//     if (userInput != null && userInput.isNotEmpty) {
//       final numb = double.tryParse(userInput);

//       if (numb != null) {
//         for (var i = 1; i <= numb; i++) {
//           if (numb % i == 0) {
//             print(i);
//           }
//         }
//       }
//     }
//   }
// }
// ----------------------------------------------------------------------
//ُEx5: Take two lists, for example:
// a [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// and write a program that returns a list that contains only the elements that are common between
// them (without duplicates). Make sure your program works on two lists of different sizes.

// void main() {
//   final a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   final b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,89];

//   var setA = a.toSet();
//   var setB = b.toSet();

//   final c = setA.intersection(setB);
//   print(c);
// }

//another way .
// void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
//   Set<int> c = {};

//   for (var i in a) {
//     for (var j in b) {
//       if (i == j) {
//         c.add(i);
//       }
//     }
//   }
//   print(c.toList());

//   // One liner using set intersections
//   print(Set.from(a).intersection(Set.from(b)).toList());
// }
// ----------------------------------------------------
// ex6:Ask the user for a string and print out whether this string is a palindrome or not.
// A palindrome is a string that reads the same forwards and backwards.
// radar

// ask user=>stdout.write();
//user word inpuut=>stdin.readLineSync()

// import 'dart:io';

// void main() {
//   while (true) {
//     stdout.write('Please enter a word to check if it is palindrome:');
//     final userInput = stdin.readLineSync();

//     if (userInput != null && userInput.isNotEmpty) {
//       final resverseInput = userInput.split('').reversed.join();

//       if (userInput == resverseInput) {
//         print('The word $userInput is palindrome');
//       } else {
//         print('The word $userInput is not palindrome');
//       }
//     }
//   }
// }
// --------------------------------------------------------------------------
// ex 7 :
// Let’s say you are given a list saved in a variable:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

// <<<<<<< import 'dart:math';

// HEAD
// void main() {
//   final a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
//   List evenNumbers = [];
//   for (var number in a) {
//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     }
//   }
//   print(evenNumbers);
// }
// --------------------------------------------------------------------
// EX8:
// Make a two-player Rock-Paper-Scissors game against computer.
// Ask for player’s input, compare them, print out a message to the winner.
// Start---

// import 'dart:io';

// import 'dart:math';

// var rock = 'Rock';
// var paper = 'Paper';
// var scissors = 'Scissors';

// enum Options { rock, paper, scissors }
// void main() {
//   while (true) {
//     stdout.write('Please select (R)ock,(P)aper or (S)cissors:');
//     final userInput = stdin.readLineSync();

//     // -----------------------------------------------------------------
//     final index = Random().nextInt(Options.values.length);
//     final computerSelection = Options.values[index].name;

//     // -----------------------------------------------------------------

//     if (userInput != null && userInput.isNotEmpty) {
//       if (userInput == Options.rock.name &&
//           computerSelection == Options.scissors.name) {
//         print('You are the Winner');
//         print(
//             'Computer Selecetion:$computerSelection \n Your selection:$userInput');
//       } else if (userInput == Options.paper.name &&
//           computerSelection == Options.rock.name) {
//         print('You are the Winner');
//         print(
//             'Computer Selecetion:$computerSelection \n Your selection:$userInput');
//       } else if (userInput == Options.scissors.name &&
//           computerSelection == Options.paper.name) {
//         print('You are the Winner');
//         print(
//             'Computer Selecetion:$computerSelection \n Your selection:$userInput');
//       } else if (userInput == Options.scissors.name &&
//               computerSelection == Options.scissors.name ||
//           userInput == Options.paper.name &&
//               computerSelection == Options.paper.name ||
//           userInput == Options.rock.name &&
//               computerSelection == Options.rock.name) {
//         print('You are the Equal');
//         print(
//             'Computer Selecetion:$computerSelection \n Your selection:$userInput');
//       } else {
//         print('You loose');
//         print(
//             'Computer Selecetion:$computerSelection \n Your selection:$userInput');
//       }
//     }
//   }
// }
// ---------------------------------------------------------------------
// ex9:
// Generate a random number between 1 and 100. Ask the user to guess the number,
// then tell them whether they guessed too low, too high, or exactly right.

// Keep track of how many guesses the user has taken, and when the game ends, print this out.

// import 'dart:io';
// import 'dart:math';

// void main() {
//   var randomNumber = Random().nextInt(100);
//   final userGuesses = <int>[];
//   print('the Random number is :$randomNumber');

//   while (true) {
//     stdout.write('Guess the number between 1 to 100:');
//     final userGuessStr = stdin.readLineSync();
//     if (userGuessStr != null && userGuessStr.isNotEmpty) {
//       final userGuessInt = int.tryParse(userGuessStr);

//       // ---------------------------------------------------
//       if (userGuessInt != 0 && userGuessInt != null) {
//         //  --------------------------------------------------------------------

//         if (randomNumber < userGuessInt) {
//           print('You are too low');
//           userGuesses.add(userGuessInt);
//           continue;
//         } else if (randomNumber > userGuessInt) {
//           print('You are two higt');
//           userGuesses.add(userGuessInt);
//           continue;
//         } else if (userGuessInt == randomNumber) {
//           print('you are exatcly right , your fall guesses :');

//           userGuesses.forEach(print);
//           break;
//         }

//         //  --------------------------------------------------------------------
//       }

//       // ----------------------------------------------------
//     }
//   }
// }
// -------------------------------------------------------------------------------------
// ex10:Ask the user for a number and determine whether the number is prime or not.

//Do it using a function

// import 'dart:io';

// void getPrimeNumber() {
//   var numbers = [];
//   stdout.write('Enter a number to see if it is a prime number or not:');

//   final input = stdin.readLineSync();

//   if (input != null && input.isNotEmpty) {
//     final primeNumber = int.tryParse(input);

//     if (primeNumber != 0 && primeNumber != null) {
//       // ---------------------------------------------------------------------
//       for (var i = 1; i <= primeNumber; i++)
//         if (primeNumber % i == 0) {
//           numbers.add(i);
//         }

//       if (numbers.length == 2) {
//         print('this is a prime number');
//       } else {
//         print('this is not a prime number');
//       }
//     }

//     print('the number is $numbers');
//   }
// }

// void main() {
//   getPrimeNumber();
// }

// ------------------------------------------------------------------
// ex11:
// Write a program that takes a list of numbers for example

// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

// void getTheFirstAndLast({required List<int> numbersList}) {
//   var listFirstAndlast = [];

//   final firstNumber = numbersList.first;
//   final lastNumber = numbersList.last;

//   // listFirstAndlast.add(firstNumber);
//   // listFirstAndlast.add(lastNumber);

//   listFirstAndlast = [firstNumber, lastNumber];
//   print(listFirstAndlast);
// }

// void main() {
//   getTheFirstAndLast(numbersList: [60, 2, 3, 5, 6, 7, 8, 9, 10]);
// }
// ------------------------------------------------------------------
// ex14:
//Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string,
// except with the words in backwards order.

// For example, say I type the string:

//   My name is Michele
// Then I would see the string:

//   Michele is name My

// import 'dart:io';

// void reverseSentence({required String type_The_String}) {
//   stdout.write('Please type a sentnece:');
//   final input = stdin.readLineSync();

//   if (input != null && input.isNotEmpty) {
//     final listWord = input.split(' ');
//     final reverseWord = listWord.reversed;

//     final oneLine = reverseWord.join(' ');

//     print(' print split : $listWord');
//     print(' print reversed : $reverseWord');
//     print(' print join : $oneLine');
//   }
// }

// void main() {
//   reverseSentence(type_The_String: 'Hello khaled');
// }
// -----------------------------------------------------------------
// ex15: 