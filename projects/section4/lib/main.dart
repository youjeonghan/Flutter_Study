import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
  final List<Transction> transactions = [
    Transction(
      id: "t1",
      title: "New Shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transction(
      id: "t2",
      title: "Weekly Groceries",
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];
  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start, // 주축 정렬
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
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: "Title"),
                    onChanged: (val) {
                      titleInput = val;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: "Amount"),
                    onChanged: (val) => amountInput = val,
                  ),
                  FlatButton(
                    onPressed: () {
                      print(titleInput);
                      print(amountInput);
                    },
                    textColor: Colors.purple,
                    child: Text("Add Transaction"),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$ ${tx.amount}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat("yyyy-MM-dd").format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
