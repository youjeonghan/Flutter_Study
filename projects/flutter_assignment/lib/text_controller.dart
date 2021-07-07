import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  final Function change_content;
  final List<String> answer_list;

  ButtonList({this.change_content, this.answer_list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...(answer_list.map((answer) {
          return ElevatedButton(
            onPressed: () => change_content(answer),
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            child: Text(answer),
          );
        }).toList())
      ],
    );
  }
}
