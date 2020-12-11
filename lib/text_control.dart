import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'text_output.dart';

class TextController extends StatefulWidget {
  @override
  _TextControllerState createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {
  String _display, _comp;

  @override
  void initState() {
    super.initState();
    _display = 'Learning Flutter';
    _comp = 'Learning Flutter';
  }

  void pressed() {
    setState(() {
      if (_display == _comp) {
        _display = 'Changing State';
      } else {
        _display = 'Learning Flutter';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_display);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Output(_display),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: CupertinoButton(
              child: Text('Click Here'),
              color: Colors.amber,
              onPressed: pressed,
            ),
          )
        ],
      ),
    );
  }
}
