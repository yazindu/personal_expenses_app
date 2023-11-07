import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function onPressedHandler;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.onPressedHandler);

  void submitDate(){
    final enteredData = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    onPressedHandler(enteredData, enteredAmount);

    if(enteredData.isEmpty || enteredAmount <= 0) return;
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
            TextButton(
              onPressed: submitDate,
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
