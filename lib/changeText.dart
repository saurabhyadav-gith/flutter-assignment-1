import 'package:flutter/material.dart';
import './textassign.dart';

class ChangeText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChangeTextState();
  }
}

class ChangeTextState extends State<ChangeText> {
  int textIndex = 0;

  final List<String> textList = [
    'What is your name ?',
    'What is your age ?',
    'How old are you ?',
    'How was the flutter assignmet ?'
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
    return Column(
      children: [
        TextAssign(textList, textIndex),
        // ChangeText(changeValue),
        ElevatedButton(
          onPressed: changeValue,
          child: Text('change Text'),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
