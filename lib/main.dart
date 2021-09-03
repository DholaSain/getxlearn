import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Binding/bindings.dart';
import 'package:results/View/homeView.dart';
import 'package:results/View/tempview.dart';

import 'Controller/homeViewController.dart';
import 'Utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.lazyPut(() => HomeViewController());
  // Get.put(HomeViewController());
  // Get.find<HomeViewController>();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeViewBindig(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
      ),
      home: SafeArea(
        child: TempoView(),
      ),
    );
  }
}


//? Questioning
//! Warning
// ToDo
//* Important
// Normal