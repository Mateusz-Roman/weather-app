import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String _title = 'Clean Air';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(title: _title),
    );
  }
}

