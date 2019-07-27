import 'package:flutter/material.dart';

import 'Category.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(
              icon: Icons.access_alarm,
              color: Colors.green,
              name: "Alarm"),
        ),
      ),
    );
  }
}
