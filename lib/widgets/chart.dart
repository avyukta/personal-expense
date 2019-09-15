import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      color: Theme.of(context).primaryColor,
      child: Row(
        children: <Widget>[Text('chart to be added.')],
      ),
    );
  }
}
