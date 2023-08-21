import 'package:flutter_getx_base/app/commons/log.dart';
import 'package:flutter_getx_base/app/data/model/uf_model.dart';
import 'package:get/get.dart';

import '../../data/model/info_model.dart';
import '../../data/provider/header.dart';
import '../../data/repository/info_repository.dart';

class HomeController extends GetxController {
  List<UfModel> listUfs = [];
  InfoModel model = InfoModel(
    name: '',
    description: '',
    version: '',
    host: '',
    email: '',
    dataBaseStatus: '',
    yourIp: '',
  );

  void initialize() {
    Log.print(super.runtimeType.toString(), titulo: 'Controller');
  }

  getInfo() async {
    try {
      Map<String, String> header = await Header.buildHeaders();

      var json = await InfoRepository().info(header);

      model = InfoModel.fromJson(json);
      update();
      Log.printJson(model);
      update();
    } catch (ex) {
      Log.print(ex.toString());
    }
  }
}
