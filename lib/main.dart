import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizeee/view/questionpage/question_page.dart';
import 'package:quizeee/view/splashscreen/splash_screen.dart';
import 'package:quizeee/view/winscreen/winner_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

