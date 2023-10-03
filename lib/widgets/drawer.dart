import 'package:flutter/material.dart';
import 'package:web_app_new/utilis/colors.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/utilis/scroll.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    width: 180,
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.9),
          ),
          child: Stack(
            children: [
              // Positioned(
              //   left: 0,
              //   right: 20,
              //   top: 0,
              //   child: Container(
              //     height: 150,
              //     width: 150,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(vector1),
              //         fit: BoxFit.cover,
              //         opacity: 0.4,
              //       ),
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  Container(
                    height: 90,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(logopng),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: null,
                  ),
                  // const Row(
                  //   children: [
                  //     Text(
                  //       'CELL',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     Text(
                  //       'POINT',
                  //       style: TextStyle(
                  //         color: Color.fromARGB(255, 121, 14, 6),
                  //         fontSize: 24,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ],
          ),
        ),

        InkWell(
          onTap: () {
            ScrollHelper.scrollToIndex(0);
            Navigator.pop(context); // Close the drawer
          },
          child: ListTile(
            title: const Text('Home'),
            tileColor: AppColors.primary.withOpacity(0.1),
          ),
        ),
        InkWell(
          onTap: () {
            ScrollHelper.scrollToIndex(6);
            Navigator.pop(context); // Close the drawer
            // Navigate to the About screen or perform the desired action.
          },
          child: ListTile(
            title: const Text('Features'),
            tileColor: AppColors.primary.withOpacity(0.1),
          ),
        ),
        InkWell(
          onTap: () {
            ScrollHelper.scrollToIndex(11);
            Navigator.pop(context); // Close the drawer
            // Navigate to the About screen or perform the desired action.
          },
          child: ListTile(
            title: const Text('Repair'),
            tileColor: AppColors.primary.withOpacity(0.1),
          ),
        ),
        InkWell(
          onTap: () {
            ScrollHelper.scrollToIndex(8);
            Navigator.pop(context); // Close the drawer
            // Navigate to the About screen or perform the desired action.
          },
          child: ListTile(
            title: const Text('Accessories'),
            tileColor: AppColors.primary.withOpacity(0.1),
          ),
        ),
        const SizedBox(
          height: 290,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: const Text(
            "@Copyright by CellPoint",
            style: TextStyle(fontSize: 12),
          ),
        )
        // Add more InkWell-wrapped ListTile widgets for additional navigation items.
      ],
    ),
  );
}
