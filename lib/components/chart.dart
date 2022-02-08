import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';
import 'package:intl/intl.dart';
import 'chart_bar.dart';

class Chart extends StatelessWidget {

  final List<Transaction> recentTransactions;

  const Chart(this.recentTransactions, { Key? key }) : super(key: key);

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index)
      );

      double totalSum = 0.0;

      return {
        'day': DateFormat.E().format(weekDay)[0],
        'value': 9.99
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupedTransactions.map((tr) {
          return ChartBar(
            label: tr['day'].toString(),
            value: tr['value'].toString(),
            percentage: 0
          );
        }).toList(),
      ),
    );
  }
}