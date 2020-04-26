import 'package:flutter/material.dart';
import 'package:flutter_study/globals.dart';
import 'package:flutter_study/services/app.router.dart';
import 'package:provider/provider.dart';

void main() {
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
        initialRoute: AppRoutes.wordArrange,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
