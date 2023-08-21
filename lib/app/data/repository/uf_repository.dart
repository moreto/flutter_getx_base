import 'package:flutter_getx_base/app/data/provider/http_provider.dart';

class UfRepository {
  Future<Map<String, dynamic>> getUfs(var header) async {
    try {
      return HttpProvider.fetch('https://servicodados.ibge.gov.br/api/v1/localidades/estados', header);
    } catch (ex) {
      rethrow;
    }
  }
}
