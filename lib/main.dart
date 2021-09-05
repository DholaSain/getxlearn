import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Bindings/allBinding.dart';
import 'package:results/Controllers/authController.dart';
import 'package:results/Controllers/homeViewController.dart';
import 'package:results/Utils/root.dart';
import 'package:results/Views/HomeView.dart';
import 'package:results/Views/signinView.dart';
import 'Utils/colors.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // Get.put(AuthController());
  // Get.put(HomeViewController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestingAPI(),
    );
  }
}



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialBinding: AuthBinding(),
//       theme: ThemeData(
//         primarySwatch: kPrimaryColor,
//       ),
//       home: Root(),
      
//     );
//   }
// }


//? Questioning
//! Warning
// ToDo
//* Important
// Normal