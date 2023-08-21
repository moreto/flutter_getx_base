import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/constants.dart';
import '../../../commons/log.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Log.print(super.runtimeType.toString(), titulo: kAppName);

    Get.put(HomeController());

    return const Placeholder();
  }
}
