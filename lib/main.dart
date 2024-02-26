import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app_new/pages/container1.dart';
import 'package:web_app_new/pages/container2.dart';
import 'package:web_app_new/pages/container3.dart';
import 'package:web_app_new/pages/container4.dart';
import 'package:web_app_new/pages/container5.dart';
import 'package:web_app_new/pages/containerLast.dart';
import 'package:web_app_new/pages/dashboard/dashboard.dart';
import 'package:web_app_new/pages/home.dart';
import 'package:web_app_new/pages/login_page.dart';
import 'package:web_app_new/services/firebase_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BindingBase.debugZoneErrorsAreFatal = true;
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAOxwIFmGnGpBYvt2YSuaVx0DIw-7N5C-M",
        projectId: "cellpoint-576ee",
        messagingSenderId: "599540999176",
        storageBucket: "cellpoint-576ee.appspot.com",
        appId: "1:599540999176:web:b238869912691d5c14ddbd"),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isLoggedin = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CellPoint',
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/container1', page: () => const Container1()),
        GetPage(name: '/container2', page: () => const Container2()),
        GetPage(name: '/container3', page: () => const Container3()),
        GetPage(name: '/container4', page: () => const Container4()),
        GetPage(name: '/container5', page: () => const Container5()),
        GetPage(name: '/containerLast', page: () => const ContainerLast()),
        GetPage(
          name: '/dashboard',
          page: () {
            return auth.currentUser != null
                ? Dashboard()
                : LoginPage(); // Redirect to login if not logged in
          },
        ),
        GetPage(name: '/login', page: () => const LoginPage()),
      ],
      onGenerateRoute: (settings) {
        if (settings.name == '/dashboard') {
          if (auth.currentUser != null) {
            return MaterialPageRoute(
              builder: (context) => Dashboard(),
            );
          } else {
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
            );
          }
        }
        return null; // Return null for other routes
      },
    );
  }
}
