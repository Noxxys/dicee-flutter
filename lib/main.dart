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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDie;
  int rightDie;

  @override
  Widget build(BuildContext context) {
    rollDice();

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDie.png'),
              onPressed: () => rollDice(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDie.png'),
              onPressed: () => rollDice(),
            ),
          ),
        ],
      ),
    );
  }

  void rollDice() {
    setState(() {
      leftDie = Random().nextInt(6) + 1;
      rightDie = Random().nextInt(6) + 1;
    });
  }
}
