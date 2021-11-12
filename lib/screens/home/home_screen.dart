import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _transactions = [
      Transaction(
        id: 't1',
        title: 'Fone novo',
        value: 100.50,
        date: DateTime.now(),
      ),
      /* Transaction(
        id: 't2',
        title: 'Calção de banho',
        value: 30.50,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't3',
        title: 'Lanche',
        value: 20.50,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't4',
        title: 'Cinema',
        value: 56.30,
        date: DateTime.now(),
      ), */
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Card(
            child: Text('Gráfico'),
            elevation: 5,
          ),
          TransactionList(
            transactions: _transactions,
          ),
          TransactionForm(),
        ],
      ),
    );
  }
}
