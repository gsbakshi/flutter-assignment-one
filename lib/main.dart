////  1) Create a new Flutter App (in this project) and output an AppBar and some text below it
//// 2) Add a button which changes the text (to any other text of your choice)
//// 3) Split the app into three widgets: App, TextControl & Text

/// Changing State

import 'package:flutter/material.dart';

import 'text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Assignment',
          ),
          backgroundColor: Colors.amberAccent[700],
        ),
        body: TextController(),
      ),
    );
  }
}
