import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  static Future downloadBook() async {
    print('AppModel::downloadBook');

    String url =
        'https://api.english-fun.com/wordpress-api-v2/php/api.php?method=englishfun.download_book_v2';
    try {
      Response response = await Dio().get(url);
      var words = response.data['data']['words'];
      for(var i in words.keys ) {
        var word = words[i];
        print(word);
      }
    } catch (e) {
      print(e);
    }
  }
}
