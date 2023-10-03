import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/utilis/scroll.dart';

class ContainerLast extends StatefulWidget {
  const ContainerLast({super.key});

  @override
  State<ContainerLast> createState() => _ContainerLastState();
}

class _ContainerLastState extends State<ContainerLast> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainerLast(),
      desktop: (BuildContext context) => desktopContainerLast(),
    );
  }

  //======================Desktop====================

  Widget desktopContainerLast() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.9)),
      child: Stack(
        children: [
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              height: 220,
              width: 220,
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
              height: 220,
              width: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(vector1), fit: BoxFit.contain),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 60,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(logoonly),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CELL',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            Text(
                              'POINT',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 121, 14, 6)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Navigation',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                ScrollHelper.scrollToIndex(0);
                                // Add your onPressed logic for Home here
                              },
                              child: const Text(
                                "Home",
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScrollHelper.scrollToIndex(6);
                                // Add your onPressed logic for Features here
                              },
                              child: const Text(
                                'Features',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScrollHelper.scrollToIndex(11);
                                // Add your onPressed logic for Repair here
                              },
                              child: const Text(
                                'Repair',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                ScrollHelper.scrollToIndex(9);
                                // Add your onPressed logic for Accessories here
                              },
                              child: const Text(
                                'Accessories',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Contact',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.black87,
                            ),
                            Text(
                              "cellpoint0119@gmail.com",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.black87,
                            ),
                            Text(
                              "CellPoint",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Location-Damak,Jhapa,Nepal',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Welcome to CellPoint, your premier destination for the latest mobile devices, including iPhones. We provide top-notch repair services and a wide range of affordable mobile accessories.',
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //======================Mobile====================

  Widget mobileContainerLast() {
    return Container(
      height: 1050,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.9)),
      child: Stack(
        children: [
          Positioned(
            top: -20,
            right: -20,
            child: Container(
              height: 220,
              width: 220,
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
              height: 220,
              width: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(vector1), fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              height: 80,
                              width: 60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(logoonly),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              'CELL',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            Text(
                              'POINT',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 121, 14, 6),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: const Text(
                          'Navigation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        tileColor: AppColors.primary.withOpacity(0.6),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Text('Home'),
                        tileColor: AppColors.primary.withOpacity(0.6),
                        onTap: () {
                          ScrollHelper.scrollToIndex(0);
                        },
                      ),
                      ListTile(
                        title: const Text('Features'),
                        tileColor: AppColors.primary.withOpacity(0.6),
                        onTap: () {
                          ScrollHelper.scrollToIndex(6);
                          // Navigate to the About screen or perform the desired action.
                        },
                      ),
                      ListTile(
                        title: const Text('Repair'),
                        tileColor: AppColors.primary.withOpacity(0.6),
                        onTap: () {
                          ScrollHelper.scrollToIndex(11);
                          // Navigate to the About screen or perform the desired action.
                        },
                      ),
                      ListTile(
                        title: const Text('Acessories'),
                        tileColor: AppColors.primary.withOpacity(0.6),
                        onTap: () {
                          ScrollHelper.scrollToIndex(8);
                          // Navigate to the About screen or perform the desired action.
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Contact',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.black87,
                            ),
                            Text(
                              "cellpoint0119@gmail.com",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.black87,
                            ),
                            Text(
                              "CellPoint",
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Location-Damak,Jhapa,Nepal',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Welcome to CellPoint, your premier destination for the latest mobile devices, including iPhones. We provide top-notch repair services and a wide range of affordable mobile accessories.',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '@Copyright by CellPoint',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
