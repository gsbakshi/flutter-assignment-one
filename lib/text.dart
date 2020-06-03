import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  final String display;
  Output(this.display);
  @override
  Widget build(BuildContext context) {
    return Text(
      display,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),
    );
  }
}
