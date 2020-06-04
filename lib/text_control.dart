import 'package:flutter/material.dart';

import 'text_output.dart';

class TextController extends StatefulWidget {
  @override
  _TextControllerState createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {
  String _display, comp = 'Learning Flutter';

  @override
  void initState() {
    // TODO: implement initState
    
    super.initState();
  }

  void pressed() {
    setState(() {
      if (_display == comp) {
        _display = 'Changing State';
      } else {
        _display = 'Learning Flutter';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: RaisedButton(
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
