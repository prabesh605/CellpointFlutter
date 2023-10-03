import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/widgets/commonContainer.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer5(),
      desktop: (BuildContext context) => desktopContainer5(),
    );
  }

  Widget desktopContainer5() {
    return commonContainer(
      "Expert Guidance and Real-Time Support",
      "Get personalized guidance and instant support.",
      "Rely on our knowledgeable staff for expert advice when choosing your device and accessories. Experience hassle-free real-time support powered by cloud technology to address your queries and concerns promptly.",
      repair,
      true,
    );
  }

  Widget mobileContainer5() {
    return commonContainerMobile(
      "Expert Guidance and Real-Time Support",
      "Get personalized guidance and instant support.",
      "Rely on our knowledgeable staff for expert advice when choosing your device and accessories. Experience hassle-free real-time support powered by cloud technology to address your queries and concerns promptly.",
      repair,
      true,
    );
  }
}
