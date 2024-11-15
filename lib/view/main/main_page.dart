import 'package:flutter/material.dart';
import 'package:project/util/index/page_index.dart';
import 'package:project/util/index/interface_index.dart';


class MainPage extends StatefulWidget {
  static final ROUTH = pageName<MainPage>();

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          header(context),
          body(context, _selectedIndex),
        ],
      ),
      bottomNavigationBar: bottomNavigationBarWidget(
        context,
        _selectedIndex,
        (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
