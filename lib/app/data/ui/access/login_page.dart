import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commons/constants.dart';
import '../../../commons/log.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Log.print(super.runtimeType.toString(), titulo: kAppName);

    Get.put(LoginController());

    return const Placeholder();
  }
}
