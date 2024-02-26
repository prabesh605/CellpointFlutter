import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:web_app_new/services/firebase_services.dart';

class AuthController extends GetxController {
  var isloading = false.obs;
  RxBool isAuthenticated = false.obs;

  //text controllers
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void setAuthenticated(bool value) {
    isAuthenticated.value = value;
  }

  //login Method
  Future<UserCredential?> loginMethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      print("Error$e");
    }
    return userCredential;
  }

  //signout method
  signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      print("Error $e");
    }
  }
}
