import 'package:flutter/material.dart';

// 홈 페이지
class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return const Text('이벤트 페이지');
  }
}
