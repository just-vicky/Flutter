import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore == 18) {
      resultText = "You are awesome";
    } else if (resultScore <= 15) {
      resultText = "You did well";
    } else if (resultScore <= 10) {
      resultText = "You did alright";
    } else {
      resultText = "Go home man";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.amber)),
            child: Text("Restart Quiz"),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
