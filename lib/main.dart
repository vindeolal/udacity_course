import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "hello flutter",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Flutter"),
          ),
          body: Center(
            child: Container(
              color: Colors.blueAccent,
              height: 400,
              width: 300,
              child: Center(
                child: Text(
                  "Hello Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ),
    );
