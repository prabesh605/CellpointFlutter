import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/widgets/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer4(),
      desktop: (BuildContext context) => desktopContainer4(),
    );
  }

  Widget desktopContainer4() {
    return commonContainer(
      "Elevate Your Mobile Experience with Accessories",
      "Personalize and enhance your mobile journey.",
      "Dive into a world of mobile accessories, from trendy phone cases to high-quality chargers and immersive headphones. Elevate your device and unlock new possibilities.",
      acessories,
      false,
    );
  }

  Widget mobileContainer4() {
    return commonContainerMobile(
        "Elevate Your Mobile Experience with Accessories",
        "Personalize and enhance your mobile journey.",
        "Dive into a world of mobile accessories, from trendy phone cases to high-quality chargers and immersive headphones. Elevate your device and unlock new possibilities.",
        acessories,
        false);
  }
}
