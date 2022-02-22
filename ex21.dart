// ex21:
// You, the user, will have in your head a number between 0 and 100. The program will
// guess a number, and you, the user, will say whether it is too high, too low, or your number.

// At the end of this exchange, your program should print out how many
// guesses it took to get your number.

// -the prgram will guess the number
// then the user will say too high ,too low or the number
//then the program will print the guessed numbers

// import 'dart:io';
// import 'dart:math';

// void main() {
//   var random = Random();

//   var computerGussed = [];

//   while (true) {
//     var randomNumbers = random.nextInt(100);
//     stdout.write(""" The gussed number : $randomNumbers
//             is that the number ?
//            please print (Y)es ,(L)ow or (Hight) : """);
//     var input = stdin.readLineSync();
//     if (input != null && input.isNotEmpty) {
//       if (input.contains('Y') || input.contains('y')) {
//         computerGussed.add(randomNumbers);
//         break;
//       } else if (input.contains('N') || input.contains('n')) {
//         computerGussed.add(randomNumbers);

//         continue;
//       } else if (input.contains('H') || input.contains('h')) {
//         computerGussed.add(randomNumbers);

//         continue;
//       } else if (input.contains('L') || input.contains('l')) {
//         computerGussed.add(randomNumbers);

//         continue;
//       } else {
//         print('Invalid input');
//       }
//     }
//   }
//   print(
//       'The computer gussed numbers is :$computerGussed and the number of gussed is :${computerGussed.length}');
// }

