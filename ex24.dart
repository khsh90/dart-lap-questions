/*
ex24: 
In the game of Hangman, a clue word is given by the program that the player has to guess, letter by letter. The 
player guesses one letter at a time until the entire word has been guessed.
 (In the actual game, the player can only guess 6 letters incorrectly before losing).

Let’s say the word the player has to guess is EVAPORATE.
For this exercise:

Write the logic that asks a player to guess a letter and displays letters in 
the clue word that were guessed correctly. For now, let the player guess an infinite number of times until they get the entire word.

As a bonus, keep track of the letters the player guessed and display a
 different message if the player tries to guess that letter again.

Remember to stop the game when all the letters have been guessed correctly!
 Don’t worry about choosing a word randomly or keeping track of the number of
  guesses the player has remaining - we will deal with those in a future exercise.


*/

//the guessed word is EVAPORATE
// ask the user to guess the letter
//the guessed letter shown in array .
//if the usser choose the same letter again in same lenght tell him
//stop the game when gusse all letter

import 'dart:io';

void main() {
  word(correctWord: 'EVAPORATE');
}

void word({required String correctWord}) {
  final clue = ('---- ' * correctWord.length).split(' ');
  var count = 0;

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
      if (userInput.length > 1) {
        print('Nope!!');
        count += 1;
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