import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
import 'package:results/Controllers/authController.dart';
import 'package:results/Views/HomeView.dart';
import 'package:results/Views/signinView.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().userGetter == null)
          ? SigninView()
          : HomeView();
    });
  }
}
