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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          // Expanded ocupa o espaço disponível
          // flex: 2, // Altera o "ratio" utilizado pelo expanded
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          child: Image.asset('images/dice2.png'),
        )
      ],
    );
  }
}
