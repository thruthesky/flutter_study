import 'package:flutter/material.dart';
import 'package:flutter_study/models/app.model.dart';
import 'package:provider/provider.dart';

class WordList extends StatefulWidget {
  WordList({Key key}) : super(key: key);

  @override
  _WordListState createState() => _WordListState();
}

class _WordListState extends State<WordList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('단어장'),
      ),
      body: Selector<AppModel, Map<String, dynamic>>(
        builder: (context, words, child) {
          if (words == null)
            return Center(
              child: Text('Loading...'),
            );
          return ListView.builder(
            itemCount: words.keys.toList().length,
            itemBuilder: (context, index) {
              String word = words.keys.elementAt(index);
              List meanings = words[word];

              return ListTile(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(word),
                  ],
                ),
                subtitle: Text(meanings.join(', ')),
                trailing: Icon(Icons.keyboard_arrow_right),
              );
            },
          );
        },
        selector: (_, model) => model.words,
      ),
    );
  }
}
