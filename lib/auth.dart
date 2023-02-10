import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi/login_page.dart';
import 'package:taxi/welcome_page.dart';

class Auth extends GetxController {
  static Auth instance = Get.find(); //auth.intance..
  // ignore: unused_field
  late Rx<User?> _user; //email pass name

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void OnReady() {
    super.onReady();
    _user = auth.currentUser as Rx<User?>;
    //our uesr would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login Page");
      Get.offAll(() => Loginpage());
    } else {
      Get.offAll(() => Welcomepage());
    }
  }
  void register(String email, password) async{
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      // ignore: empty_catches
    } catch (e) {
      Get.snackbar("About user", "user message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed ",
            style: TextStyle(color: Colors.white),
          ));
    }
  }
}
