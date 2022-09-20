import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() =>
    runApp(MyApp()); // short hand for function with only one expression

class MyApp extends StatelessWidget {
  @override //to make the code bit clearer and cleaner
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: [
              Text("The question"),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer2'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer3'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
