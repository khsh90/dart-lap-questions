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

void main() {
  // final a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // List evenNumbers = [];
  // for (var number in a) {
  //   if (number % 2 == 0) {
  //     evenNumbers.add(number);
  //   }
  // }
  // print(evenNumbers);
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  int i = 0;
  List<int> l = [];

  for (var e in a) {
    if (++i % 2 == 0) {
      l.add(e);
    }
  }
  print(l);
}
