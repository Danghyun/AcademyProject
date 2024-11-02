// import 'package:flutter/material.dart';
// import 'package:project/util/index.dart';
// import 'util/button_icon.dart';
//
// class MainPage extends StatefulWidget {
//   static final ROUTE = pageName<MainPage>();
//
//   const MainPage({super.key});
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// //SingleTickerProviderStateMixin은 TabController을 이용하기 위해서 사용
// class _MainPageState extends State<MainPage>
//     with SingleTickerProviderStateMixin {
//   // BottomNavigationBar에 나타낼 아이템 인덱스
//   // [홈, 레시피, 쇼핑, 이벤트, 프로필] 아이템들의 인덱스
//   int _index = 0;
//
//   //initState 함수 안에서 초기화 하기 때문에, late로 선언
//   late TabController _tabController;
//
//   // initState 에서 tabController 초기화
//   // 만약 위젯이 빌드된 후 tabController가 초기화가 된다면
//   // BottomNavigationbar 같은 위젯들이 TabController가 없는 상태로 빌드될 수 있음.
//   @override
//   void initState() {
//     super.initState();
//
//     // vsync: this 를 사용하기 위해서 SingleTickerProviderStateMixin을 사용함
//     // length: navItems.length 은 navItems의 개수
//     _tabController = TabController(length: navItems.length, vsync: this);
//
//     _tabController.addListener(tabListener);
//   }
//
//   @override
//   void dispose() {
//     // tabListener 지우기
//     _tabController.removeListener(tabListener);
//
//     super.dispose();
//   }
//
//   // 사용자의 클릭에 의해서 _tabController의 index 속성이 바뀔 때
//   // 현재 인덱스 정보를 나타내는 _index를 변경해주고 setState 해준다.
//   void tabListener() {
//     setState(() {
//       _index = _tabController.index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//         const TextField(
//           decoration: InputDecoration(
//             prefixIcon: Icon(Icons.search),
//             suffixIcon: Icon(Icons.clear),
//             labelText: 'Outlined',
//             hintText: 'hint Text',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         Scaffold(
//           bottomNavigationBar: BottomNavigationBar(
//             selectedItemColor: Colors.green,
//             unselectedItemColor: Colors.black,
//             type: BottomNavigationBarType.fixed,
//             onTap: (int index) {
//               //TabController의 animateTo 함수로, index 위치로 화면 전환
//               _tabController.animateTo(index);
//             },
//             currentIndex: _index,
//
//             //아이템 리스트
//             items: navItems.map((item) {
//               return BottomNavigationBarItem(
//                 icon: Icon(item.activeIcon),
//                 label: item.label,
//               );
//             }).toList(),
//           ),
//           body: TabBarView(
//             //스와이핑으로 화면 전환 방지
//             physics: const NeverScrollableScrollPhysics(),
//             controller: _tabController,
//             children: const [
//               HomePage(),
//               RecipePage(),
//               ShoppingPage(),
//               EventPage(),
//               MyPage(),
//             ],
//           ),
//         ),
//         ]);
//   }
// }
