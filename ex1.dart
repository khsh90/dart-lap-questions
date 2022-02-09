// Ex4 :and write a program that prints out all the elements of the list that are less than 5.

// void main() {
//   var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   for (var number in a) {
//     if (number >= 5) {
//       print(number);
//     }
//   }
// }
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

