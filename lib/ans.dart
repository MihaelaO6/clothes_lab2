import 'package:flutter/material.dart';

class Ans extends StatelessWidget {
  String answer;

  Function tapped;
  Ans(this.tapped, this.answer);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.green, padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      child: Text(
        answer,
        style: TextStyle(fontSize: 30, color: Colors.red),
      ),
      onPressed: tapped,
    );
  }
}
