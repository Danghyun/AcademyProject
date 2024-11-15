import 'package:flutter/material.dart';
import 'package:project/util/index/page_index.dart';
import 'package:window_manager/window_manager.dart';


void main() async {

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
      initialRoute: MainPage.ROUTH,
      routes: <String, WidgetBuilder>{
        MainPage.ROUTH : (BuildContext context) =>
            const MainPage(),
      }
    );
  }
}