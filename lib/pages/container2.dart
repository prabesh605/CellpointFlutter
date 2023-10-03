import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/widgets/imageSlider.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  Widget desktopContainer1() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  top: 54,
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 70, right: 70, top: 70),
                    width: double.infinity,
                    height: 800,
                    child: const ImageSlider(),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: AssetImage(cellpointbackground),
                    //   ),
                    // ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(realme2),
                companyLogo(redme),
                companyLogo(samsung),
                companyLogo(iphone),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }

  Widget mobileContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 0,
              top: 20,
            ),
            child: Container(
              height: w! / 2.2,

              width: double.infinity,
              child: const ImageSlider(),
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //       image: AssetImage(cellpointbackground),
              //       fit: BoxFit.contain),
              // ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                companyLogo(realme2),
                const SizedBox(height: 30),
                companyLogo(redme),
                const SizedBox(height: 30),
                companyLogo(samsung),
                const SizedBox(height: 30),
                companyLogo(iphone),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
