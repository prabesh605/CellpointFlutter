import 'package:flutter/material.dart';
import 'package:web_app_new/Sliders/SliderFirst.dart';

class ImageFirst extends StatefulWidget {
  const ImageFirst({super.key});

  @override
  State<ImageFirst> createState() => _ImageFirstState();
}

class _ImageFirstState extends State<ImageFirst> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 226, 226),
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 40),
        child: Column(
          children: [
            Center(
              child: Text("Not available for now"),
            )
            // Expanded(child: SliderFirst(isClient: true)),
          ],
        ),
      ),
    );
  }
}
