import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderSecond extends StatefulWidget {
  const ImageSliderSecond({super.key});

  @override
  State<ImageSliderSecond> createState() => _ImageSliderSecondState();
}

class _ImageSliderSecondState extends State<ImageSliderSecond> {
  List imageList = [
    {"id": 1, "image_path": 'assets/image1.jpg'},
    {"id": 2, "image_path": 'assets/image22.jpg'},
    {"id": 3, "image_path": 'assets/point5.jpg'},
    {"id": 4, "image_path": 'assets/point4.jpg'},
    {"id": 5, "image_path": 'assets/point3.jpg'},
    {"id": 6, "image_path": 'assets/point2.jpg'},
    {"id": 7, "image_path": 'assets/point1.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 4 / 3,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.red
                              : Colors.teal),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
