import 'package:get/get.dart';
import 'package:results/Controllers/homeViewController.dart';

class Databinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(() => HomeViewController());
  }
}
