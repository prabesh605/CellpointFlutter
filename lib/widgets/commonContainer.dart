import 'package:flutter/material.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/utilis/scroll.dart';

ScrollHelper scrollHelper = ScrollHelper();
Widget commonContainer(
  String s1,
  s2,
  s3,
  image,
  bool imageLeft,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(children: [
      imageLeft
          ? Expanded(
              child: Container(
                height: 530,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            )
          : Container(),
      Expanded(
        child: Column(
          crossAxisAlignment:
              imageLeft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              s1.toUpperCase(),
              style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              s2,
              textAlign: imageLeft ? TextAlign.right : TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                  height: 1.1),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              s3,
              textAlign: imageLeft ? TextAlign.right : TextAlign.left,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: () {
                ScrollHelper.scrollToBottom();
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: AppColors.primary,
              ),
              label: Text(
                'Learn More',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
      !imageLeft
          ? Expanded(
              child: Container(
                height: 530,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.contain),
                ),
              ),
            )
          : Container()
    ]),
  );
}

Widget commonContainerMobile(String s1, s2, s3, image, bool imageLeft) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          s1.toUpperCase(),
          style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          s2,
          style: TextStyle(
            color: Colors.black,
            fontSize: w! / 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          s3,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        ),
        TextButton.icon(
          onPressed: () {
            ScrollHelper.scrollToBottom();
          },
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.primary,
          ),
          label: Text(
            'Learn More',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    ),
  );
}
