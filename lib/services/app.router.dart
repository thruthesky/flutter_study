import 'package:flutter/material.dart';
import 'package:flutter_study/globals.dart';
import 'package:flutter_study/pages/word_list/word_list.page.dart';

class AppRouter {
  static Route<dynamic> generate(RouteSettings settings) {
    Route route;

    if (settings.name == AppRoutes.wordList)
      route = _buildRoute(settings, WordList());
    else if (settings.name == AppRoutes.wordArrange)
      route = _buildRoute(settings, WordList());

    return route;
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => builder,
    );
  }
}
