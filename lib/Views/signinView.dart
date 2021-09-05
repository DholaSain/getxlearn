import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Controllers/authController.dart';
import 'package:results/Views/sigupView.dart';

class SigninView extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: 'Email'),
            controller: email,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Password'),
            controller: password,
          ),
          SizedBox(height: 15),
          MaterialButton(
            color: Colors.amber,
            onPressed: () async {
              await authController.login(email.text, password.text);
            },
            child: Text(
              'Signin',
            ),
          ),
          SizedBox(height: 20),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              Get.to(SignupView());
            },
            child: Text(
              'Go to Signup',
            ),
          ),
        ],
      ),
    );
  }
}
