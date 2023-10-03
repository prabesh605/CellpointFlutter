import 'package:flutter/material.dart';
import 'package:web_app_new/pages/container1.dart';
import 'package:web_app_new/pages/container2.dart';
import 'package:web_app_new/pages/container3.dart';
import 'package:web_app_new/pages/container4.dart';
import 'package:web_app_new/pages/container5.dart';
import 'package:web_app_new/pages/containerLast.dart';
import 'package:web_app_new/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CellPoint',
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/container1': (context) => const Container1(),
        '/container2': (context) => const Container2(),
        '/container3': (context) => const Container3(),
        '/container4': (context) => const Container4(),
        '/container5': (context) => const Container5(),
        '/containerLast': (context) => const ContainerLast(),
      },
    );
  }
}

class Container6 {}
