import 'package:flutter_getx_base/app/commons/log.dart';
import 'package:flutter_getx_base/app/data/model/uf_model.dart';
import 'package:flutter_getx_base/app/data/repository/uf_repository.dart';
import 'package:get/get.dart';

import '../../data/provider/header.dart';

class HomeController extends GetxController {
  List<UfModel> listUfs = [];

  void initialize() {
    Log.print(super.runtimeType.toString(), titulo: 'Controller');
  }

  getData() async {
    Map<String, dynamic> json = <String, dynamic>{};
    try {
      // MMEasyLoading.loading(Constants.vazio);
      Map<String, String> header = await Header.buildHeaders();

      json = await UfRepository().getUfs(header);
      Log.print(json);
    } catch (ex) {
      Log.print(ex.toString());
    }
  }
}
