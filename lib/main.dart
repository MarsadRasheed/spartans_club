import 'package:flutter/material.dart';
import 'package:spartansclub/Presentations/MainScreen.dart';
import 'Presentations/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spartans Club',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF191a20),
        scaffoldBackgroundColor: Color(0xFF191a20),
      ),
      home: MainScreen(),
    );
  }
}
