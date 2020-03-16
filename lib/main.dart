import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic Ball - All Your Answers !'),
          backgroundColor: Colors.blueGrey,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int num = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(5)+1;
                  print('Ball Answer $num');
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          )
        ],
      ),
    );
  }
}

