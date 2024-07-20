import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../questionpage/question_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 7), () {
      Get.to(QuestionPage());
    });
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 270, left: 50),
            child: Container(
                height: 400,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/img/logo.jpg'))
                )
            ),
          ),
        ],
      ),
    );
  }
}
