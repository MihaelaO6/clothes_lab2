import 'package:flutter/material.dart';

class Clothes extends StatelessWidget {
  String content;
  Clothes(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 50, color: Colors.blue),
      ),
    );
  }
}
