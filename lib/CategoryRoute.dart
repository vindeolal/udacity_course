import 'package:flutter/material.dart';

import 'Category.dart';
import 'Unit.dart';

class CategoryRoute extends StatelessWidget {
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        icon: Icons.cake,
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Unit Converter",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Container(
          color: Colors.green[100],
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView.builder(
            itemBuilder: (context, index) => categories[index],
            itemCount: categories.length,
          ),
        ));
  }
}
