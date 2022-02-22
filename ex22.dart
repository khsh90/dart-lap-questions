// ex22:

// Implement a function that takes as input three variables,
//  and returns the largest of the three. Do this without using the Dart max() function!

// The goal of this exercise is to think about some internals that Dart
//  normally takes care of for us. All you need is some variables and if statements!

import 'dart:io';

void main() {
  while (true) {
    stdout.write('please enter three numbers to guse which one is bigger. \n');
    stdout.write('\n number 1 :');
    final number1 = stdin.readLineSync();
    stdout.write('\n number 2 :');
    final number2 = stdin.readLineSync();
    stdout.write('\n number 3 :');
    final number3 = stdin.readLineSync();

    if (number1 != null &&
        number1.isNotEmpty &&
        number2 != null &&
        number2.isNotEmpty &&
        number3 != null &&
        number3.isNotEmpty) {
      var intput = [number1, number2, number3];
      var numbers = [];
      var singleNumber;

      intput.forEach((number) {
        singleNumber = int.tryParse(number);
        numbers.add(singleNumber);
      });
      try {
        if (numbers[0] >= numbers[1] && numbers[0] >= numbers[2]) {
          print('\n The number ${numbers[0]} is the maximum number');
        } else if (numbers[1] >= numbers[0] && numbers[1] >= numbers[2]) {
          print('\n The number ${numbers[1]} is the maximum number');
        } else {
          print('\n The number ${numbers[2]} is the maximum number');
          print(
              '--------------------------------------------------------------');
        }
      } catch (_) {
        print('\n please enter a valid numbers');
      }
    }
  }
}
