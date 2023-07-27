import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                  fontFamily: 'Pacifico', fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.pink,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDeciFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  changeDeciFace();
                  print('Dice number = $leftDiceNumber');
                },
                child: Image(
                  image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Container(
              color: Colors.red,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  changeDeciFace();
                  print('Dice number = $rightDiceNumber');
                },
                child: Image(
                  image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

