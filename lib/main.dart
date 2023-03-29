import 'package:flutter/material.dart';
import 'dart:math';

void test() {print('Hello world.');}

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Center(
          child: Text('Ask Me Anything...'),
        ),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

int ballNumber =1;

void ShakeBall() {
  setState(() {
    ballNumber = Random().nextInt(5) + 1;
  },
  );
}

@override
Widget build(BuildContext context) {
  return Center(
    child: Column(
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
          ShakeBall();
  },
            child: Image.asset('images/ball$ballNumber.png'),
),
),
],
  ),
  );
}
}