import 'package:flutter/cupertino.dart';
import 'package:project/util/index/page_index.dart';

Widget body(BuildContext context, int selectedIndex) {
  return Expanded(
    child: IndexedStack(
      index: selectedIndex,
      children: const [
        HomePage(),
        RecipePage(),
        ShoppingPage(),
        EventPage(),
        MyPage(),
      ],
    ),
  );
}