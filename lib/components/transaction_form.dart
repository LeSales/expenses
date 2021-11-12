import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    return Card(
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
      ),
    );
  }
}
