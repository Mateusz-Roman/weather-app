import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(

          ),
          Align(
            alignment: FractionalOffset.center,
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Icon(Icons.wb_cloudy, color: Colors.white),
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(widget.title),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text('Monitorowanie czystości powietrza'),
                ],
             )
          ),
          Positioned(
              bottom: 35,
              left: 0,
              right:0,
              child: Container(
                alignment: Alignment.center,
            child: Text("Przywiewam dane..."),
          ))
        ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}