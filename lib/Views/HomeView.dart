import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:results/Controllers/authController.dart';
import 'package:results/Controllers/homeViewController.dart';

class HomeView extends StatelessWidget {
  final homeController = Get.find<HomeViewController>();
  final authController = Get.find<AuthController>();
  TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await authController.signout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Obx(
            () => Text(
              '${apna.value}',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(child: Obx(() {
            if (homeController.datamodalGetter == null) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeController.datamodalGetter!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(homeController.datamodalGetter![index].name!),
                        Text(homeController.datamodalGetter![index].msg!),
                        Text(homeController.datamodalGetter![index].link!),
                      ],
                    );
                  });
            }
          })),
          TextField(
            controller: text,
          ),
          MaterialButton(
              child: Text('Press it'),
              onPressed: () {
                apna.value = text.text;
                if (pressed.value == true) {
                  pressed.value = false;
                } else {
                  pressed.value = true;
                }
              }),
          Obx(() => Container(
                height: 100,
                width: 100,
                color: pressed.value! ? Colors.red : Colors.blue,
              ))
        ],
      ),
    );
  }
}
