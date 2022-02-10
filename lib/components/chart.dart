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
        'value': 1.99
      };
    });
  }

  double get _weekTotalValue {
    return groupedTransactions.fold(0.00, (sum, tr) {
      return sum + (tr['value'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactions.map((tr) {
            return Flexible(
              fit: FlexFit.tight,
              child: ChartBar(
                label: tr['day'].toString(),
                value: ((tr['value'] as double) / _weekTotalValue).toStringAsFixed(2),
                percentage: 0.2
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}