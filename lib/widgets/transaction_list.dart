import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transaction.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  "No Transaction Done yet!",
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/images.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'To see the transaction list, \n Please, add some transaction.')
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 2),
                          //color: Theme.of(context).primaryColor,
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "\$${transaction[index].amount.toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(transaction[index].title,
                                style: Theme.of(context).textTheme.title),
                          ),
                          Container(
                            child: Text(
                              DateFormat("d-M-y E")
                                  .format(transaction[index].date),
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transaction.length,
            ),
    );
  }
}
