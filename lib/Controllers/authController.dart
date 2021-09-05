import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Bindings/allBinding.dart';
import 'package:results/Controllers/homeViewController.dart';
import 'package:results/Views/HomeView.dart';
import 'package:results/Views/signinView.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Rxn<User> authUser = Rxn<User>();

  User? get userGetter => authUser.value;

  @override
  void onInit() {
    super.onInit();
    authUser.bindStream(auth.authStateChanges());
  }

  Future<void> createUser(String myemail, String mypassword) async {
    try {
      UserCredential authResutl = await auth.createUserWithEmailAndPassword(
          email: myemail, password: mypassword);
      print('Successfuly signed in');
      Get.to(() => HomeView(), binding: HomeBinding());
    } catch (e) {
      print('Signup Faild: ${e.toString()}');
    }
  }

  Future<void> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar('Successfly Signed in', 'Now endjoy the life buddy.',
          backgroundColor: Colors.green);
      Get.offAll(() => HomeView(), binding: HomeBinding());
      Get.snackbar('Successfly Signed in', 'Now endjoy the life buddy.',
          backgroundColor: Colors.green);
    } catch (e) {
      Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
    }
  }

  Future<void> signout() async {
    try {
      await auth.signOut();
      Get.offAll(() => SigninView());
      Get.snackbar('Successfuly Signedout', 'You can now signin again');
    } catch (e) {
      Get.snackbar('Error signing Out', e.toString());
    }
  }
}
