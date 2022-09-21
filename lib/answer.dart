import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectionHandler;
  final String answerText;

  Answer(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectionHandler,
        ));
  }
}
