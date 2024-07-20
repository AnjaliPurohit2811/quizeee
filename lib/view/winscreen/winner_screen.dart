import 'package:flutter/material.dart';

class WinScreen extends StatelessWidget {
  const WinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/img/win.jpg'),fit: BoxFit.cover)
              ),
            ),
          )
        ],
      ),
    );
  }
}
