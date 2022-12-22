import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.masks_outlined), label: "Powietrze"),
          BottomNavigationBarItem(icon: Icon(Icons.wb_cloudy_outlined), label: "Pogoda")
        ],
      ),
    );
  }
}