import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print("Answer 1 chosen!");
  }

  @override //to make the code bit clearer and cleaner
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your fav color?",
        "answers": ["black", "blue", "amber", "white"]
      },
      {
        "questionText": "What's your fav animal?",
        "answers": ["lion", "dog", "cat", "rat"]
      },
      {
        "questionText": "What's your fav food?",
        "answers": ["hotdog", "chicken", "ice", "juice"]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: [
              // Text(questions.elementAt(0)), - one way of doing this
              Question(questions[_questionIndex]["questionText"]),
              ...(questions[_questionIndex]["answers"] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
