// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text.dart';
import './text_controller.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  var _text_content = "temp";
  var _answer_list = [
    "I'm number 1",
    "I'm number 2",
    "I'm number 3",
  ];

  void _change_content(new_content) {
    setState(() {
      _text_content = new_content;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Assigment"),
          ),
          body: Column(
            children: [
              MainText(_text_content),
              ButtonList(
                answer_list: _answer_list,
                change_content: _change_content,
              )
            ],
          )),
    );
  }
}
