import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function onPressedHandler;

  NewTransaction(this.onPressedHandler);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitDate() {
    final enteredData = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredData.isEmpty || enteredAmount <= 0) return;

    widget.onPressedHandler(enteredData, enteredAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitDate(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitDate(),
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Text('No date chosen!'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Choose date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: submitDate,
              child: Text(
                'Add Transaction',
              ),
            )
          ],
        ),
      ),
    );
  }
}
