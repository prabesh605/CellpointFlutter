import 'package:flutter/material.dart';
import 'package:web_app_new/pages/container1.dart';
import 'package:web_app_new/pages/container2.dart';
import 'package:web_app_new/pages/container3.dart';
import 'package:web_app_new/pages/container4.dart';
import 'package:web_app_new/pages/container5.dart';
import 'package:web_app_new/pages/containerLast.dart';
import 'package:web_app_new/utilis/constants.dart';
import 'package:web_app_new/utilis/scroll.dart';
import 'package:web_app_new/widgets/drawer.dart';
import 'package:web_app_new/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollHelper scrollHelper = ScrollHelper();

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            navBar(),
            Container1(),
            Container2(),
            Container3(),
            Container4(),
            Container5(),
            ContainerLast(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScrollHelper.ScrollToTop(0.0);
        },
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
