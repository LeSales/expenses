import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
          Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        labelText: 'Título',
                      ),
                    ),
                    TextField(
                        controller: valueController,
                        decoration: const InputDecoration(
                          labelText: 'Valor (R\$)',
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.purple,
                          ),
                          height: 40,
                          child: TextButton(
                              onPressed: () {
                                print(titleController.text);
                                print(valueController.text);
                              },
                              child: const Text(
                                'Nova Transação',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
