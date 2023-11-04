import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'Gym membership', amount: 6000, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Saloon', amount: 300, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.amberAccent,
                child: Text('Chart!'),
              ),
            ),
            Card(
              color: Colors.redAccent,
              child: Text('List of Transactions'),
            ),
          ]),
    );
  }
}
