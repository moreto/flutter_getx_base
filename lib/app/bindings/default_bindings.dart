import 'package:get/get.dart';

import '../ui/access/login_controller.dart';
import '../ui/home/home_controller.dart';

class DefaultBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<IntermediariaController>(() => IntermediariaController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
