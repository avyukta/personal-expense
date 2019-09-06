import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'clothes', amount: 78.8, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 98.8, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 98.8, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 98.8, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'groceries', amount: 98.8, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 88.0,
              //margin: EdgeInsets.all(80.0),
              //color: Colors.greenAccent,
              child: Text("widget Playground."),
            ),
          ),
          Column(
              children: transaction.map((tx) {
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                        color: Color.fromRGBO(128, 0, 128, 0)),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "\$${tx.amount}",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          DateFormat("d-Mm-y E").format(tx.date),
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList())
        ],
      ),
    );
  }
}
