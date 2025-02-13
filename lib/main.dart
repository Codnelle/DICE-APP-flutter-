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
  int leftDiceNumber = 5;
  int rightDiceNumber =4;
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Row(
      children: <Widget>[
        Expanded(         
            child : FlatButton(
              onPressed:(){
                
                 print("Left utton was pressed");
                 setState(() {
                   leftDiceNumber = Random().nextInt(6)+1;
                 });
                 
              } ,
              child:Image.asset('images/dice$leftDiceNumber.png'),
            ), 
            
        ),
        Expanded(         
            child : FlatButton(
              onPressed: (){
                print("Right Button was pressed");
                setState(() {
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child:Image.asset('images/dice$rightDiceNumber.png'),
            ), 
            
        ),
      ],
    ),
    );
      
    
  }
}