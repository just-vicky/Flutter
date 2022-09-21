import 'package:flutter/material.dart';

import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
    this.questions,
    this.answerQuestion,
    this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions.elementAt(0)), - one way of doing this
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () =>
                  answerQuestion(answer["score"]) /*anonymous function is used to take arguments otherwise flutter does not take arguments and returns a function with no arguments even though the function has arguments*/,
              answer["text"]);
        }).toList()
      ],
    );
  }
}
