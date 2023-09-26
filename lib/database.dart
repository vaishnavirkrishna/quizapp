class QuizQuestion {
  final String question;
  final List<String> options;
  final String answer;

  QuizQuestion(
      {required this.question, required this.options, required this.answer});
}

class DataBase {
  static List<Map<String, dynamic>> quizData = [
    {
      "question":
          "What programming language is primarily used for building Flutter apps?",
      "options": ["Java", "Python", "Dart", "C"],
      "answer": 2
    },
    {
      "question": "Which keyword is used to declare a constant in Dart?",
      "options": ["var", "const", "final", "let"],
      "answer": 1
    },
    {
      "question":
          "What is the primary purpose of the 'main' function in a Dart program?",
      "options": [
        "To declare global variables.",
        "To define classes and objects.",
        "To execute the program and serve as an entry point.",
        "To handle exceptions and errors."
      ],
      "answer": 2
    },
    {
      "question": "What is a 'Future' in Dart used for?",
      "options": [
        "To represent a value that may be available in the future or an error.",
        "To define a constant value.",
        "To perform mathematical operations.",
        "To create a loop in the program."
      ],
      "answer": 0
    },
    {
      "question":
          "Which package manager is commonly used in Dart for managing dependencies?",
      "options": ["npm", "pip", "pub", "composer"],
      "answer": 2
    },
    {
      "question": "What is the purpose of the '=> ' (arrow) operator in Dart?",
      "options": [
        "To declare a variable.",
        "To perform type casting.",
        "To define a class.",
        "To create concise anonymous functions or closures."
      ],
      "answer": 3
    },
    {
      "question": "In Dart, how can you convert a string to an integer?",
      "options": [
        "By using the 'toInt()' method.",
        "By using the 'toDouble()' method.",
        "By using the 'toString()' method.",
        "By using the 'parse()' method."
      ],
      "answer": 0
    },
    {
      "question":
          "Which data type is used to represent a collection of key-value pairs in Dart?",
      "options": ["Array", "Map", "List", "Set"],
      "answer": 1
    },
    {
      "question": "What does 'dart:core' represent in Dart?",
      "options": [
        "A core library for common data types and functions.",
        "A third-party package for web development.",
        "A deprecated feature in Dart.",
        "An external module for handling HTTP requests."
      ],
      "answer": 0
    },
    {
      "question":
          "What is the primary purpose of the 'main' function in a Dart program?",
      "options": [
        "To declare global variables.",
        "To define classes and objects.",
        "To execute the program and serve as an entry point.",
        "To handle exceptions and errors."
      ],
      "answer": 2
    },
  ];
}
