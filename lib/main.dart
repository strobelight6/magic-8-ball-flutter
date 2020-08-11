import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Text('Magic Eight Ball'),
            backgroundColor: Colors.red,
          ),
          body: EightBallPage(),
        ),
      ),
    );

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int ballNum = 1;

  void pressBall(){
    setState(() {
      var ran = Random();
      ballNum = ran.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:FlatButton(
              onPressed: () {
                pressBall();
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
