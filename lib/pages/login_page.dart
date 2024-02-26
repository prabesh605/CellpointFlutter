import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app_new/controller/auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller.emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  icon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () async {
                  // controller.isloading(true);

                  await controller.loginMethod().then((value) {
                    if (value != null) {
                      controller.isAuthenticated(true);
                      Get.offAllNamed('/dashboard');
                    }

                    // else {
                    //   controller.isloading(false);
                    // }
                  });
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
