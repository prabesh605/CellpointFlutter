import 'package:flutter/material.dart';
import 'package:web_app_new/Sliders/SliderSecond.dart';

class ImageSecond extends StatelessWidget {
  const ImageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 226, 226),
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 40),
        child: Column(
          children: [
            Expanded(child: SliderSecond(isClient: true)),
          ],
        ),
      ),
    );
  }
}
