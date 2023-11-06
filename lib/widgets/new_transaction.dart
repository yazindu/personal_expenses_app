import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function onPressedHandler;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.onPressedHandler);

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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                onPressedHandler(titleController.text, double.parse(amountController.text));
              },
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
