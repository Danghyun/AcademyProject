import 'package:flutter/material.dart';

extension StateExtension<W extends StatefulWidget> on State<W> {
  // State 객체가 현재 상호작용하는 위젯에 삽입이 되어있는지 확인하는 코드.
  void navigatorTo(String to) {
    if(!mounted) {
      return;
    }

    final navigator = Navigator.of(context);
    // 히스토리 스택에 페이지를 남기지 않고 새로운 페이지를 로드함.
    // navigator.pushReplacementNamed(to);

    // 히스토리 스택에 페이지를 남기면서 새로운 페이지를 로드함.
    navigator.pushNamed(to);
  }
}