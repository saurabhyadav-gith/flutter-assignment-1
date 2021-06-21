import 'package:flutter/material.dart';

class TextAssign extends StatelessWidget {
  final List<String> textList;
  final int textIndex;
  TextAssign(this.textList, this.textIndex);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textList[textIndex],
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
