import 'package:flutter_getx_base/app/commons/log.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  void initialize() {
    Log.print(super.runtimeType.toString(), titulo: 'Controller');
  }
}
