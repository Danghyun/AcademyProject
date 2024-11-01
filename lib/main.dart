import 'package:flutter/material.dart';
import 'package:project/util/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: MainPage.ROUTE,
      routes: <String, WidgetBuilder>{
        MainPage.ROUTE : (BuildContext context) =>
            const MainPage(),
      }
    );
  }
}