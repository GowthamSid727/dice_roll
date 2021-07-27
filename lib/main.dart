import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.redAccent,
      ),
      body: Dice(),
    ),
  ));
}
class Dice extends StatefulWidget {

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdiceno =1;
  int rightdiceno = 1;
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton
              (
              onPressed: (){
                setState((){
                  leftdiceno = ranfun();
                  rightdiceno = ranfun();
                });
              },
              child: Image.asset('images/dice$leftdiceno.png'),
            ),
          ),
          Expanded(
            child: FlatButton
              (
              onPressed: (){
                setState(() {
                  leftdiceno = ranfun();
                  rightdiceno = ranfun();
                });
              },
              child: Image.asset('images/dice$rightdiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
int ranfun()
{
  int no=Random().nextInt(6)+1;
  return (no);
}

