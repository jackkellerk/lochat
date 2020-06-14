import 'package:flutter/material.dart';
import 'homeScreen.dart';

// This calls the build method for the class OutfitApp and displays it on the screen
void main() => runApp(LoChatApp());

class LoChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoChat',
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}