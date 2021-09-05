import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Controllers/authController.dart';

class SignupView extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              await authController.createUser(email.text, password.text);
            },
            child: Text(
              'SIGNUP',
            ),
          )
        ],
      ),
    );
  }
}
