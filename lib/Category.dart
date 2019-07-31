import 'package:flutter/material.dart';

import 'ConverterRoute.dart';
import 'Unit.dart';

class Category extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String name;
  final List<Unit> units;

  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.icon,
      @required this.units})
      : assert(name != null),
        assert(color != null),
        assert(icon != null),
        assert(units != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            name,
            style: Theme.of(context).textTheme.display1,
          ),
          centerTitle: true,
          backgroundColor: color,
        ),
        body: ConverterRoute(
          color: color,
          units: units,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100,
        child: InkWell(
          borderRadius: BorderRadius.circular(5.0),
          highlightColor: color,
          splashColor: color,
          onTap: () => _navigateToConverter(context),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  ),
                ),
                Center(
                    child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
