import 'package:flutter/material.dart';
import './textassign.dart';
import './changeText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment 1'),
        ),
        body: ChangeText(),
      ),
    );
  }
}
