import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
