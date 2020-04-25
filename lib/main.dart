import 'package:flutter/material.dart';
import 'package:flutter_study/services/temp-data.dart';

void main() => runApp(MyApp());

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
      body: ListView.builder(
        itemCount: tempWords.keys.toList().length,
        itemBuilder: (context, index) {
          String word = tempWords.keys.elementAt(index);
          Map<String, dynamic> data = tempWords[word];
          return ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(word),
                SizedBox(width: 12),
                if (data['star'] != null)
                  for (int i = 0; i < data['star']; i++)
                    Icon(
                      Icons.star,
                      size: 14,
                    ),
              ],
            ),
            subtitle: Text(data['meaning'].join(', ')),
            trailing: Icon(Icons.keyboard_arrow_right)
          );
        },
      ),
    );
  }
}
