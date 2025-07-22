import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  final Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: _valueController,
              decoration: InputDecoration(labelText: "Valor(R\$)"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: Text(
                    "Nova Transação",
                    style: TextStyle(color: Colors.purple),
                  ),
                  onPressed: () {
                    onSubmit(_titleController.text, double.parse(_valueController.text));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
