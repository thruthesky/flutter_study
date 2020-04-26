import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/globals.dart';
import 'package:hive/hive.dart';

class AppModel extends ChangeNotifier {
  AppModel() {
    init();
  }
  Map<String, dynamic> words;
  init() async {
    downloadBook();
  }

  Future downloadBook() async {
    print('AppModel::downloadBook');

    String url =
        'https://api.english-fun.com/wordpress-api-v2/res/englishfun/tmp/words.json';
    try {
      Response response = await Dio().get(url);
      words = response.data;
      var box = Hive.box(wordBox);
      await box.clear();

      for(var word in words.keys) {
        print("$word");
        print(words[word]);
        box.put(word.toLowerCase(), words[word]);
      }

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
