import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Bindings/allBinding.dart';
import 'package:results/Controllers/homeViewController.dart';
import 'package:results/Views/HomeView.dart';
import 'Utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(HomeViewController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: Databinding(),
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: HomeView(),
    );
  }
}


//? Questioning
//! Warning
// ToDo
//* Important
// Normal