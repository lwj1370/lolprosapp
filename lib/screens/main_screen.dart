import 'package:flutter/material.dart';
import 'package:lolprosapp/screens/gamer_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GamerScreen(gamerName: 'SKT T1 Faker'),
    );
  }
}
