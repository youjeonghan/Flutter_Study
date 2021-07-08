import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 주축 정렬
        crossAxisAlignment: CrossAxisAlignment.stretch, // 서브축 정렬
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(
              width: double.infinity,
              child: Text("CHART!"),
            ),
            elevation: 5,
          ),
          Card(
            color: Colors.red,
            child: Text("LIST OF TX"),
          ),
        ],
      ),
    );
  }
}
