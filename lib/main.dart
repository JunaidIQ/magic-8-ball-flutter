import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(title: Text('8 ball App'),),
        body: BallApp() ,
      ),
    ),
  );
}


class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballN = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                ballN = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset("images/ball$ballN.png"),
          ),
        ),
      ],
    );
  }
}
