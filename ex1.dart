// // -------------------------------------------------------------
// // ex1 :Create a program that asks the user to enter their name and their age
// //. Print out a message that tells how many years they have to be 100 years old.
// // import 'dart:io';

// // void main() {
// //   while (true) {
// //     var total;
// //     stdout.write('Enter your name:');
// //     final userName = stdin.readLineSync();
// //     if (userName != null && userName.isNotEmpty) {
// //       stdout.write('Enter your Age:');
// //       final userAge = stdin.readLineSync();
// //       if (userAge != null && userAge.isNotEmpty) {
// //         final intUserAge = int.tryParse(userAge);
// //         if (intUserAge != null && intUserAge > 0) {
// //           total = 100 - intUserAge;
// //         }
// //         stdout.write(
// //             'Hello $userName , your age :$intUserAge years old you need $total years till reach 100 years  ');
// //         break;
// //       }
// //     }

// //     stdout.write(' Please enter your name \n');
// //   }
// // }

// // --------------------------------------------------------------------
// // Ex2:Ask the user for a number.
// //Depending on whether the number is even or odd, print out an appropriate message to the user.

// // import 'dart:io';

// // void main() {
// //   while (true) {
// //     stdout.write('Please enter a number to know if even or odd:');
// //     final userInput = stdin.readLineSync();
// //     if (userInput != null && userInput.isNotEmpty) {
// //       final intUserInput = int.tryParse(userInput);

// //       if (intUserInput != null && intUserInput % 2 == 0) {
// //         print('The number you entered is Even');
// //       } else {
// //         print('The number you entered is odd');
// //       }
// //     }
// //   }
// // }
// // --------------------------------------------------------------------------
// // // Ex3 :and write a program that prints out all the elements of the list that are less than 5.

// // void main() {
// //   var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

// //   for (var number in a) {
// //     if (number >= 5) {
// //       print(number);
// //     }
// //   }
// // }
// // -----------------------------------------------------------------------------
// // Ex4:
// // import 'dart:io';

// // void main() {
// //   while (true) {
// //     stdout.write('Enter a number to check if it is divisor:');
// //     final userInput = stdin.readLineSync();

// //     if (userInput != null && userInput.isNotEmpty) {
// //       final numb = double.tryParse(userInput);

// //       if (numb != null) {
// //         for (var i = 1; i <= numb; i++) {
// //           if (numb % i == 0) {
// //             print(i);
// //           }
// //         }
// //       }
// //     }
// //   }
// // }
// // ----------------------------------------------------------------------
// //ُEx5: Take two lists, for example:
// // a [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// // b [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// // and write a program that returns a list that contains only the elements that are common between
// // them (without duplicates). Make sure your program works on two lists of different sizes.

// // void main() {
// //   final a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
// //   final b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13,89];

// //   var setA = a.toSet();
// //   var setB = b.toSet();

// //   final c = setA.intersection(setB);
// //   print(c);
// // }

// //another way .
// // void main() {
// //   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
// //   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
// //   Set<int> c = {};

// //   for (var i in a) {
// //     for (var j in b) {
// //       if (i == j) {
// //         c.add(i);
// //       }
// //     }
// //   }
// //   print(c.toList());

// //   // One liner using set intersections
// //   print(Set.from(a).intersection(Set.from(b)).toList());
// // }
// // ----------------------------------------------------
// // ex6:Ask the user for a string and print out whether this string is a palindrome or not.
// // A palindrome is a string that reads the same forwards and backwards.
// // radar

// // ask user=>stdout.write();
// //user word inpuut=>stdin.readLineSync()

// // import 'dart:io';

// // void main() {
// //   while (true) {
// //     stdout.write('Please enter a word to check if it is palindrome:');
// //     final userInput = stdin.readLineSync();

// //     if (userInput != null && userInput.isNotEmpty) {
// //       final resverseInput = userInput.split('').reversed.join();

// //       if (userInput == resverseInput) {
// //         print('The word $userInput is palindrome');
// //       } else {
// //         print('The word $userInput is not palindrome');
// //       }
// //     }
// //   }
// // }
// // --------------------------------------------------------------------------
// // ex 7 :
// // Let’s say you are given a list saved in a variable:
// // a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// // Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

// // void main() {
// //   final a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
// //   List evenNumbers = [];
// //   for (var number in a) {
// //     if (number % 2 == 0) {
// //       evenNumbers.add(number);
// //     }
// //   }
// //   print(evenNumbers);
// // }
// // --------------------------------------------------------------------
// // EX8:
// // Make a two-player Rock-Paper-Scissors game against computer.
// // Ask for player’s input, compare them, print out a message to the winner.
// // Start---

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
//       if (userInput == Options.rock.name) {
//         print('you select ${Options.rock.name}');
//         print(computerSelection);
//       } else if (userInput == 'P' ||
//           userInput == 'Paper' ||
//           userInput == 'p' ||
//           userInput == 'paper') {
//         print('you select ${Options.paper.name}');
//       } else if (userInput == 'S' ||
//           userInput == 'Scissors' ||
//           userInput == 's' ||
//           userInput == 'scissors') {
//         print('you select ${Options.scissors.name}');
//       } else {
//         print('Invalid selection');
//       }
//     }
//   }
// }
// ---------------------------------------------------
// ex15 :

// import 'dart:io';
// import 'dart:math';

// String lowerCaseLetter = 'qwertyuiopasdfghjklzxcvbnm';
// String upperCaseLetter = lowerCaseLetter.toUpperCase();
// String numbers = '1234567890';
// String symbols = '!@#%^&*()_:?';

// void main() {
//   // var arrLowerCase = lowerCaseLetter.split('');
//   // var arrUpperCase = upperCaseLetter.split('');
//   // var arrNumbers = numbers.split('');
//   // var arrSymbols = symbols.split('');
//   // -----------------------------------------------

//   var random = new Random();
//   var randomLowereCase = List.generate(
//           9, (index) => lowerCaseLetter[random.nextInt(lowerCaseLetter.length)])
//       .join();

//   var randomUpperCase = List.generate(
//           9, (index) => upperCaseLetter[random.nextInt(upperCaseLetter.length)])
//       .join();

//   var randomNumber =
//       List.generate(9, (index) => numbers[random.nextInt(numbers.length)])
//           .join();

//   var randomSymbols =
//       List.generate(6, (index) => symbols[random.nextInt(symbols.length)])
//           .join();

//   var strongPassword =
//       randomSymbols + randomUpperCase + randomNumber + randomUpperCase;

//   // ------------------------------------------------

//   stdout.write('How Strong Password you want ,  Weak or Strong ');

//   final userInput = stdin.readLineSync();

//   if (userInput != null && userInput.isNotEmpty) {
//     // -------------------------------------
//     while (true) {
//       if (userInput == 'Weak') {
//         print(
//             ' Your Password is:\n $randomLowereCase \n please keep it in safe place');
//         break;
//       } else if (userInput == 'Strong') {
//         print(
//             'Your password is:\n  $strongPassword \n please keep it in safe place');
//         break;
//       } else if (userInput == 'quit') {
//         print('see you next time');
//         break;
//       } else {
//         print('Invalid input');
//       }
//     }
// // --------------------------------------------

//   }
// }
// ---------------------------------------------------------------------
import 'dart:io';
import 'dart:math';
import 'dart:convert';

void main() {
  stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
  String choice = stdin.readLineSync().toLowerCase();

  passwordGenerator(choice);
}

// Create a random sequence of characters
void shuffleGenerator(int strength) {
  final random = Random.secure();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = 'base64UrlEncode'(intList).split('').toList();
  charList.shuffle();
  print("\nYour password is: ${charList.join('')}\n");
}

void passwordGenerator(String strength) {
  if (strength == "weak") {
    shuffleGenerator(5);
  } else if (strength == "medium") {
    shuffleGenerator(15);
  } else if (strength == "strong") {
    shuffleGenerator(25);
  } else {
    print("Incorrect word is given");
  }
}
