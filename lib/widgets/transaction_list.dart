import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    DateFormat("d-M-y E").format(tx.date),
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }).toList());
  }
}
