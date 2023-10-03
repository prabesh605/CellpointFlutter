import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_app_new/widgets/imageSliderSecond.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer(),
      desktop: (BuildContext context) => desktopContainer1(),
    );
  }

  Widget desktopContainer1() {
    void makePhoneCall() async {
      const phoneNumber =
          'tel:+9779815000119'; // Replace with the desired phone number
      if (await canLaunch(phoneNumber)) {
        await launch(phoneNumber);
      } else {
        throw 'Could not launch $phoneNumber';
      }
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover Your \nPerfect Mobile \nCompanion",
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Discover Your One-Stop Mobile Solution – A Hub for the Latest Devices, Accessories, and Expert Advice.",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            makePhoneCall();
                          },
                          icon: const Icon(Icons.call),
                          label: const Text('Call us'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'iOS,Android and Tablets',
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 80),
            height: 530,
            child: const ImageSliderSecond(),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage(smartphone), fit: BoxFit.contain),
            // ),
          ))
        ],
      ),
    );
  }

  Widget mobileContainer() {
    void makePhoneCall() async {
      const phoneNumber =
          'tel:+9779815000119'; // Replace with the desired phone number
      if (await canLaunch(phoneNumber)) {
        await launch(phoneNumber);
      } else {
        throw 'Could not launch $phoneNumber';
      }
    }

    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 120),
            height: w! / 1.2,
            width: w! / 1.2,
            child: const ImageSliderSecond(),
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage('assets/smartphone.png'),
            //       fit: BoxFit.contain),
            // ),
          ),
          Text(
            "Discover Your \nPerfect Mobile \nCompanion",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w! / 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Discover Your One-Stop Mobile Solution – A Hub for the Latest Devices, Accessories, and Expert Advice.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Row(
              children: [
                SizedBox(
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      makePhoneCall();
                    },
                    icon: const Icon(Icons.call),
                    label: const Text('Call us'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primary),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'iOS,Android and Tablets',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
