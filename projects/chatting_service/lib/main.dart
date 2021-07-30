import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:chatting_service/widgets/room_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZZOM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    // CollectionReference users = FirebaseFirestore.instance.collection('baby');

    // Future<void> _addUser() {
    //   return users
    //       .add({'name': "yjh", "vote": 0})
    //       .then((value) => print("User Added"))
    //       .catchError((error) => print("Failed to add user: $error"));
    // }

    Text textSet(content) {
      return Text(
        content,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ZZOM",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoomButton(Colors.red[300]!, textSet("방 만들기")),
            SizedBox(
              width: 50,
            ),
            RoomButton(Colors.blue[300]!, textSet("방 들어가기")),
          ],
        ),
      ),
    );
  }
}
