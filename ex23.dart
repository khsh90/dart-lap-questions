// ex23:
// In this exercise, the task is to write a function that
//  picks a random word from a list of words from the SOWPODS dictionary.

// Download this file and save it in the same directory
//  as your Dart code. Each line in the file contains a single word.

// Use the Dart random library for picking a random word.

import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  readRandomWordFromFile(args);
}

void readRandomWordFromFile(List<String> args) {
  if (args.isEmpty) {
    print('use this sentax dart ex23 <filename.txt>');
    return;
  }

  final fileFirstItem = args.first;
  final file = File(fileFirstItem).readAsLinesSync();
  final randomFileLenght = Random().nextInt(file.length);
  final randomWord = file[randomFileLenght];

  print(randomWord);
}
