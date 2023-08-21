class Header {
  static Future<Map<String, String>> buildHeadersLoggedUser() async {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      'Charset': 'utf-8',
      // 'k5-language': '1',
      // 'k5-access-token': loginServiceModel.rows.token!.token,
      // 'k5-user': loginServiceModel.rows.usuario!.usuaId.toString(),
    };
  }

  static Future<Map<String, String>> buildHeaders() async {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      'Charset': 'utf-8',
      // 'k5-language': '1',
      // 'k5-access-token': '0',
      // 'k5-user': '-1',
    };
  }
}
