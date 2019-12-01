import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class Dicee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDice = 1;
  int rDice = 1;

  void changeDiceFace() {
    setState(() {
      lDice = Random().nextInt(6) + 1;
      rDice = Random().nextInt(6) + 1;
      print('Dices are: $lDice, $rDice');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('left button got pressed!');
                  changeDiceFace();
                },
                child: Image.asset('images/dice$lDice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('right button got pressed!');
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/dice$rDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
