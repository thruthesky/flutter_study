import 'package:flutter/material.dart';
import 'package:flutter_study/globals.dart';
import 'package:flutter_study/services/app.router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';



///
void main() async {
  /// main() 에서 async/await 으로 하는 이유
  ///   - main 에서 async/await 으로 하면 성능 저하가 발생 하지만,
  ///   - 첫번 째 페이지 보여지기 전에 hive 가 준비되어야 하므로, main 에 코딩.
  await Hive.initFlutter();
  await Hive.openBox(wordBox);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => app),
      ],
      child: MaterialApp(
        onGenerateRoute: AppRouter.generate,
        initialRoute: AppRoutes.wordList,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
