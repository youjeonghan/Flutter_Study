import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  String content;

  MainText(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        content,
        style: TextStyle(
          fontSize: 36,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
