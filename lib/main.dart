import 'package:clean_air/PermissionScreen.dart';
import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class Strings {
  static const String appTitle = 'Clean Air';
}