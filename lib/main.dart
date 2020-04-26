import 'package:flutter/material.dart';
import 'package:flutter_study/models/app.model.dart';

void main() {
  AppModel.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WordBook(),
    );
  }
}

class WordBook extends StatefulWidget {
  WordBook({Key key}) : super(key: key);

  @override
  _WordBookState createState() => _WordBookState();
}

class _WordBookState extends State<WordBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('단어장'),
      ),
      body: Text('loading...'),
    );
  }
}
