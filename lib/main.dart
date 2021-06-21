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
  int textIndex = 0;

  final List<String> textList = [
    'What is your name ?',
    'What is your age ?',
    'How old are you ?',
    'How was the flutter assignmet'
  ];

  void changeValue() {
    setState(() {
      textIndex += 1;
      if (textIndex >= textList.length) {
        textIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment 1'),
        ),
        body: Column(
          children: [
            TextAssign(textList, textIndex),
            // ChangeText(changeValue),
            ElevatedButton(
              onPressed: changeValue,
              child: Text('change Text'),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
