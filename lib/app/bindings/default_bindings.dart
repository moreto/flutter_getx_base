import 'package:flutter_getx_base/app/data/ui/access/login_controller.dart';
import 'package:flutter_getx_base/app/data/ui/home/home_controller.dart';
import 'package:get/get.dart';

class DefaultBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<IntermediariaController>(() => IntermediariaController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
