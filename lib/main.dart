import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main(){
//   runApp(MyApp());
// }

void main() =>
    runApp(MyApp()); // short hand for function with only one expression

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your fav color?",
      "answers": [
        {"text": "black", "score": 5},
        {"text": "blue", "score": 3},
        {"text": "amber", "score": 1},
        {"text": "white", "score": 6},
      ],
    },
    {
      "questionText": "What's your fav animal?",
      "answers": [
        {"text": "lion", "score": 6},
        {"text": "dog", "score": 3},
        {"text": "cat", "score": 5},
        {"text": "rat", "score": 1},
      ],
    },
    {
      "questionText": "What's your fav food?",
      "answers": [
        {"text": "hotdog", "score": 1},
        {"text": "chicken", "score": 3},
        {"text": "ice", "score": 6},
        {"text": "juice", "score": 5},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override //to make the code bit clearer and cleaner
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions,
                _answerQuestion,
                _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
