import 'package:flutter_getx_base/app/data/provider/http_provider.dart';

class InfoRepository {
  Future<Map<String, dynamic>> info(var header) async {
    try {
      return HttpProvider.fetch('https://k5api.herokuapp.com/api/v1/info', header, timeOut: 35);
    } catch (ex) {
      rethrow;
    }
  }
}
