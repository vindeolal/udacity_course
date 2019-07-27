import 'package:flutter/material.dart';

import 'Category.dart';

class CategoryRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(
        icon: Icons.cake,
        name: 'Length',
        color: Colors.teal,
      ),
      Category(
        icon: Icons.cake,
        name: 'Area',
        color: Colors.orange,
      ),
      Category(
        icon: Icons.cake,
        name: 'Volume',
        color: Colors.pinkAccent,
      ),
      Category(
        icon: Icons.cake,
        name: 'Mass',
        color: Colors.blueAccent,
      ),
      Category(
        icon: Icons.cake,
        name: 'Time',
        color: Colors.yellow,
      ),
      Category(
        icon: Icons.cake,
        name: 'Digital Storage',
        color: Colors.greenAccent,
      ),
      Category(
        icon: Icons.cake,
        name: 'Energy',
        color: Colors.purpleAccent,
      ),
      Category(
        icon: Icons.cake,
        name: 'Currency',
        color: Colors.red,
      ),
    ];

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
