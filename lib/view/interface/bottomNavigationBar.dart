import 'package:flutter/material.dart';
import '../../util/button_icon.dart';

Widget bottomNavigationBarWidget(BuildContext context, int selectedIndex, Function(int) onTap) {
  return BottomNavigationBar(
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.black,
    backgroundColor: Colors.white,

    type: BottomNavigationBarType.fixed,
    currentIndex: selectedIndex,

    onTap: (int index) {
      if (selectedIndex != index) {
        onTap(index);
      }
    },
    items: navItems.map((item) {
      return BottomNavigationBarItem(
        icon: Icon(item.activeIcon),
        label: item.label,
      );
    }).toList(),
  );
}
