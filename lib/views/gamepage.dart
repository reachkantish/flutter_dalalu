import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../main.dart';

class RPSGamePage extends StatefulWidget {
  @override
  _RPSGamePageState createState() => _RPSGamePageState();
}

class _RPSGamePageState extends State<RPSGamePage> {
  int leftbutton = 0;
  int rightbutton = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightBlueAccent,
                Colors.white,
                //Colors.deepPurpleAccent,
                //Colors.redAccent
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(
                          () {
                            leftbutton = Random().nextInt(4) + 1;
                            rightbutton = Random().nextInt(4) + 1;
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.25,
                        ),
                        child: Image.asset(
                          "images/file$leftbutton.png",
                          height: screenHeight * 0.5,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(
                          () {
                            rightbutton = Random().nextInt(4) + 1;
                            leftbutton = Random().nextInt(4) + 1;
                          },
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.25,
                        ),
                        child: Image.asset(
                          "images/file$rightbutton.png",
                          height: screenHeight * 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
