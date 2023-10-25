import 'package:flutter/material.dart';
import 'package:flutter_app/screens/pomodoro_screen.dart';

// main : 플러터 어플리케이션 진입점
void main() {
  runApp(const MyApp());
}

// StatelessWidget : 변화가 필요없는 화면을 구성할 때 사용하는 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp (Android)
    // CupertinoApp (IOS)
    return const MaterialApp(
        // home : 앱의 기본 경로
        // Scaffold : 기본적인 디자인 뼈대를 구성하는 위젯
        home: Scaffold(
      body: PomodoroScreen(),
    ));
  }
}
