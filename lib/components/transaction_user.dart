import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';
import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1', 
      title: 'Novo Tenis de Corrida', 
      value: 310.76, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't2', 
      title: 'Conta de Luz', 
      value: 260.99, 
      date: DateTime.now()
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: '', 
      title: title, 
      value: value, 
      date: DateTime.now()
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(
          _transactions
        ),
        TransactionForm(
          _addTransaction
        ),
      ],
    );
  }
}