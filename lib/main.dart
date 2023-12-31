import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red[800],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void setRightDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void setLeftDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                // Expanded ocupa o espaço disponível. Se img for menor, aumenta. Se for maior, diminui
                // flex: 2, // Altera o "ratio" utilizado pelo expanded
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      setLeftDice();
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      setRightDice();
                    },
                  ),
                ),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setRightDice();
              setLeftDice();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[400],
              foregroundColor: Colors.white,
            ),
            child: const Text(
              'Roll both dice',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
