import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:web_app_new/controller/auth_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  get label => null;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 226, 226),
      body: Stack(
        children: [
          const Column(
            children: [
              Expanded(
                child: Center(
                    child: Text(
                  "Welcome to Dashboard",
                  style: TextStyle(fontSize: 60),
                )),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: ElevatedButton.icon(
              onPressed: () async {
                await controller.signoutMethod(context);
                controller.isAuthenticated(false);
                Get.offNamed('/');
              },
              icon: const Icon(Icons.exit_to_app),
              label: const Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
