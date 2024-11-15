import 'package:flutter/material.dart';

Widget header(BuildContext context) {

  // 화면 width 가져오기
  final double screenWidth = MediaQuery.of(context).size.width;

  // 화면 height 가져오기
  final double screenHeight = MediaQuery.of(context).size.height;

  // 기준 디바이스의 화면 width
  const double baseScreenWidth = 360;

  // 기준 디바이스의 화면 height
  const double baseScreenHeight = 880;

  // 상단바
  final double statusBarHeight = MediaQuery.of(context).padding.top;

  return Column(
    children: [
      // 상단바
      Padding(
        padding: EdgeInsets.only(top: statusBarHeight),
      ),
      // 상단바 끝에서 검색바까지의 여백
      Padding(
        padding: EdgeInsets.only(top: 13 * (screenHeight / baseScreenWidth)),
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12 * (screenWidth / baseScreenWidth)),
          ),
          Expanded(
            child: SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,

                  enabled: false,
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  suffixIcon: const Icon(Icons.mic),
                  hintText: '요리, 재료를 검색해주세요.',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20  * (screenWidth / baseScreenWidth)),
          ),
          const Icon(Icons.bookmark),
          Padding(
            padding: EdgeInsets.only(right: 23 * (screenWidth / baseScreenHeight)),
          ),
        ],
      ),
    ],
  );
}