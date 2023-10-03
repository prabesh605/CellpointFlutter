import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/utilis/scroll.dart';
import 'package:web_app_new/utilis/styles.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNavBar(),
      desktop: (BuildContext context) => desktopNavBar(),
    );
  }

  Widget mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Open the drawer when the menu icon is pressed
              Scaffold.of(context).openDrawer();
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: navLogo(),
          ),
        ],
      ),
    );
  }

  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navLogo(),
              SizedBox(
                width: 200,
                child: Image.asset(logoname),
              ),
              // const Text(
              //   "CellPoint",
              //   style: TextStyle(
              //       fontSize: 25,
              //       color: Colors.red,
              //       fontWeight: FontWeight.bold),
              // ),
            ],
          ),
          Row(
            children: [
              navButton(
                "Home",
                () {
                  ScrollHelper.scrollToIndex(0);
                },
              ),
              navButton(
                "Features",
                () {
                  ScrollHelper.scrollToIndex(6);
                },
              ),
              navButton(
                "Repair",
                () {
                  ScrollHelper.scrollToIndex(11);
                },
              ),
              navButton(
                "Acessories",
                () {
                  ScrollHelper.scrollToIndex(9);
                },
              ),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {
                ScrollHelper.scrollToBottom();
              },
              child: Text(
                'Contact Us',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text, onPressed) {
    return Container(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logoonly),
        ),
      ),
    );
  }
}
