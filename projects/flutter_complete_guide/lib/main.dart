import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "answer": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answer": ["Rabbit", "Snake", "Elephant", "Lion"],
    },
    {
      "questionText": "Who\'s your favorite instructor?",
      "answer": ["Max", "Max", "Max"],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // setState
    // 해당 함수가 들어있는 위젯만 다시 빌드함
    // 그래서 변경사항이 수정됨
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = []; // const 변수에 작동하지않는 코드
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answer"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
