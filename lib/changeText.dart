import 'package:flutter/material.dart';

class ChangeText extends StatelessWidget {
  final Function changeIndexValue;
  ChangeText(this.changeIndexValue);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Change Text'),
        onPressed: changeIndexValue(),
      ),
    );
  }
}
