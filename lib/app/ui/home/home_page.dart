import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../commons/constants.dart';
import '../../commons/log.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage(this.email, {Key? key}) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    Log.print(super.runtimeType.toString(), titulo: kAppName);

    Get.put(HomeController());

    return Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Column(
          children: [
            Text(email),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Go back!")),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    controller.getData();
                  },
                  child: const Text("API")),
            ),
          ],
        ));
  }
}
