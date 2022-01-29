import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
            centerTitle: true,
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.indigo),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                num = Random().nextInt(5) + 1;
              });
              print('i got clicked.');
            },
            child: Image.asset('images/ball$num.png')));
  }
}
