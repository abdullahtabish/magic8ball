import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Center(child: Text('Ask me anything')),
          backgroundColor: Colors.deepPurple,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ranNum = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: (){
                setState(() {
                  ranNum = Random().nextInt(5)+1;
                });
              },
              child: Image.asset('images/ball$ranNum.png'),
            ),
          ),
        ),
      ],
    );
  }
}
