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


