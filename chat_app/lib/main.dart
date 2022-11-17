import 'package:chat_app/screens/auth_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter-Chat',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        backgroundColor: Colors.greenAccent.shade400,
        accentColor: Colors.deepPurpleAccent.shade700,
        accentColorBrightness: Brightness.dark,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.teal.shade600,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
        builder: (ctx, userSnapshot) {
          if (userSnapshot.hasData) {
            return ChatScreen('Chat-Screen');
          }
          return AuthScreen();
        },
      ),
    );
  }
}
