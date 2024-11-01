import 'package:flutter/material.dart';
import '../../util/index.dart';

// 홈 페이지
class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return const Text('레시피 페이지');
  }
}
