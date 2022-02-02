import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();

  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            const TextField(
              // controller: titleController,
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            const TextField(
              // controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor R\$',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    onSubmit('Título', 125.99);
                  },
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(
                      color: Colors.purple
                    ),
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}