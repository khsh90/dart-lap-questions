/*
Exercise 25
In this exercise, we will finish building Hangman. In the game of Hangman,
 the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.

In Part 1, we loaded a random word list and picked a word from it.
In Part 2, we wrote a logic for guessing the letter and displaying that information to user.
In this exercise, we have to put it all together and add logic for handling guesses.

Copy your code from Parts 1 and 2 into a new file as a starting point. Now add the following features:

Only let the user guess 6 times, and tell the user how many guesses they have left.
Keep track of the letters user guessed. If the user guesses a letter they had already 
guessed, don’t penalize them - let them guess again.
Optional additions:

When the player wins or loses, let them start a new game.
Rather than telling the user “You have 4 incorrect guesses left”, display some
 picture art for the Hangman. This is challenging - do the other parts of the exercise first!
Your solution will be a lot cleaner if you make use of functions to help you!

*/

// ---------------------------------------------------------------------------------
import 'dart:io';

import 'dart:math';

void main() {
  while (true) {
    stdout.write('Start.....\n');
    word();
  }
}

void word() {
  var charCTERS = 'QWERTYUIOPASDFGHJKLZXCVBNM';

  var randomWord = List.generate(9, (_) => charCTERS[Random().nextInt(26)]);

  var correctWord = randomWord.join('');

  print('The Correct word is :$correctWord');
  // ------------------------------------
  final clue = ('---- ' * correctWord.length).split(' ');
  var count = 0;
  var userLife = 6;

  while (true) {
    stdout.write('Guess the word or the letter by enter it: ');
    final input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      final userInput = input.toUpperCase();
      if (userInput == correctWord) {
        print('Bingo you guess it');
        break;
      }
      if (userInput == 'EXIT') {
        print('see you next time');
        break;
      }
      if (userInput.length > 1 || !correctWord.contains(userInput)) {
        print('Nope!!');

        count += 1;
        userLife--;

        if (userLife == 0) {
          print('Game Over');
          break;
        }

        print('the Remaning Life is:$userLife');
      }

      for (var i = 0; i < correctWord.length; i++) {
        if (correctWord[i] == userInput) {
          clue[i] = userInput;
        } else if (clue[i] == userInput) {
          print('You already enter this letter');
          continue;
        }
      }
      print(clue.join(' '));
      if (clue.join('') == correctWord) {
        print('finally you guess it ');
        print('Attempt :$count');
        break;
      }
    }
  }
}



// ----------------------------------------------------------
