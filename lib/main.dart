import 'package:flutter/material.dart';
import 'package:lolprosapp/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOL Pro-Gamers Info',
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOL Pro-Gamers Main Page'),
        ),
        body: MainScreen()
      ),
    );
  }
}

