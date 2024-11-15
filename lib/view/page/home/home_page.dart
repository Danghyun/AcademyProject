import 'package:flutter/material.dart';

// 홈 페이지
class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
          Image.asset('lib/assets/test.webp'),
        ],
      )
    );
  }
}
