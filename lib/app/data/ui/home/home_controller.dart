import 'package:flutter_getx_base/app/commons/log.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void initialize() {
    Log.print(super.runtimeType.toString(), titulo: 'Controller');
  }
}
