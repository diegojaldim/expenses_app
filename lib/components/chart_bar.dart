import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {

  final String label;

  final String value;

  final double percentage;

  const ChartBar({
    required this.label, 
    required this.value, 
    required this.percentage, 
    Key? key 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('R\$$value'),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: null,
        ),
        SizedBox(height: 5),
        Text(label)
      ],
    );
  }
}