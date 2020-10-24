import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text("Ask Me The Question ?"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: EightBall(),
      ),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int firstBallConter = 1;
  void changeBallNumber() {
    setState(() {
      firstBallConter = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                print("First button was pressed.");
                changeBallNumber();
              },
              child: Image.asset("assets/images/ball$firstBallConter.png"),
            ),
          ),
        ],
      ),
    );
  }
}
