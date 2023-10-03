import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer3(),
      desktop: (BuildContext context) => desktopContainer3(),
    );
  }

  Widget desktopContainer3() {
    return commonContainer(
      "Explore Our Mobile Shop",
      "Where Mobile Technology Meets Your Needs",
      "Discover the perfect blend of the latest mobile devices, accessories, expert guidance, real-time support, and sustainable practices all under one roof. Our mobile shop offers a holistic mobile experience, from choosing the perfect device to eco-friendly trade-ins, ensuring you stay connected, entertained, and informed in style.",
      image1,
      true,
    );
  }

  Widget mobileContainer3() {
    return commonContainerMobile(
        "Explore Our Mobile Shop",
        "Where Mobile Technology Meets Your Needs",
        "Discover the perfect blend of the latest mobile devices, accessories, expert guidance, real-time support, and sustainable practices all under one roof. Our mobile shop offers a holistic mobile experience, from choosing the perfect device to eco-friendly trade-ins, ensuring you stay connected, entertained, and informed in style.",
        image1,
        true);
  }
}
