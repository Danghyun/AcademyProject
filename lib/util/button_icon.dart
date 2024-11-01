import 'package:flutter/material.dart';

class NavItem {
  final IconData activeIcon;
  final String label;

  const NavItem({
    required this.activeIcon,
    required this.label,
  });
}

const navItems = [
  NavItem(
    activeIcon: Icons.home,
    label: '홈',
  ),
  NavItem(
    activeIcon: Icons.book,
    label: '레시피',
  ),
  NavItem(
    activeIcon: Icons.shopping_bag,
    label: '쇼핑',
  ),
  NavItem(
    activeIcon: Icons.card_giftcard,
    label: '이벤트',
  ),
  NavItem(
    activeIcon: Icons.person,
    label: '프로필',
  )
];