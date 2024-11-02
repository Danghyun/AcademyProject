import 'package:flutter/material.dart';
import 'package:project/util/index.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  // 깃허브 데스크탑 테스트
  // Flutter 에서 앱이 실행되기 전에 필요한 Flutter 엔진 및 위젯 바인딩을 초기화해 주는 역할임.
  // 이 메서드를 호출 함으로써, Flutter의 기본적인 위젯 시스템과 엔진이 모두 초기화된 상태를 보장하여
  // 앱이 정상적으로 실행이 될 수 있게 함.
  WidgetsFlutterBinding.ensureInitialized();

  // 윈도우 창 관리 기능을 사용하기 전에 초기화 하는 코드.
  // window_manager의 기능을 제대로 사용하기 위해 반드시 필요한 초기화 단계.
  await windowManager.ensureInitialized();

  // 최소사이즈 지정
  await windowManager.setMinimumSize(const Size(412, 917));
  // 최대 사이즈 지정
  await windowManager.setMaximumSize(const Size(412, 917));

  // 창을 화면에 표시함.
  await windowManager.show();
  // 창에 포커스를 맞춰 활성화 상태로 만듬.
  await windowManager.focus();

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