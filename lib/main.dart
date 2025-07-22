import 'package:expenses/components/transaction_user.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  final _transactions = [
    Transaction(
      id: "t1",
      title: "Tenis de Corrida",
      value: 310.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Notebook",
      value: 1300.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Despesas Pessoais"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              child: Text("Despesas"),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          // SizedBox(height: 400), // Espaçamento controlado entre os Cards
          TransactionUser(),
        ],
      ),
    );
  }
}
