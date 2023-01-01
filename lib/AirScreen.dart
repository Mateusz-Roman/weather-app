import 'package:clean_air/PermissionScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyHomePage.dart';
import 'main.dart';

class AirScreen extends StatefulWidget {
  @override
  State<AirScreen> createState() => _AirScreenState();
}

class _AirScreenState extends State<AirScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [new Color(0xff25A312), new Color(0xffA3FA95)],
              )),
        ),
        Align(
          alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Jakość powietrza"),
              Padding(padding: EdgeInsets.only(top: 2)),
              Text("Bardzo dobra"),
              Padding(padding: EdgeInsets.only(top: 24)),
              CircleAvatar(
                radius: 91.0,
                child: Center(
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "23",
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "CAQI Ⓘ",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 28)),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "PM 2,5",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ),
                            Padding(padding: EdgeInsets.only(top: 2.0)),
                            Text(
                              "10%",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 26.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ],
                        )),
                    VerticalDivider(
                      width: 48,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Container(
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "PM 10",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300)),
                          ),
                          Padding(padding: EdgeInsets.only(top: 2.0)),
                          Text(
                            "12%",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    fontSize: 26.0,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text("Stacja pomiarowa"),
              Padding(padding: EdgeInsets.only(top: 2.0)),
              Text("Warszawa"),
              Padding(padding: EdgeInsets.only(top: 20.8)),
            ],
          ),
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
                    color: Colors.black,
                  ))),
            ))
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  bool havePermission() {
    return true;
  }
}
