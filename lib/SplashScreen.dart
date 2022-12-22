import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [new Color(0xff6671e5), new Color(0xff4852d9)],
              )
            ),

          ),
          Align(
            alignment: FractionalOffset.center,
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Image(
                    image: AssetImage('icons/cloud-sun.png')
                  ),
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(widget.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                      fontSize: 42.0,
                      color: Colors.white,
                    ))),
                Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text('Monitorowanie czystości powietrza',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    )
                  )),
                ],
             )
          ),
          Positioned(
            bottom: 35,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: Text("Przywiewam dane...",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                    fontSize: 18.0,
                    color: Colors.white,
                  ))),
            ))
        ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}