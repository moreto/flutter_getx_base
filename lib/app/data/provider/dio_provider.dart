import 'dart:convert' as convert;

import 'package:dio/dio.dart';

import '../../commons/log.dart';

class DioProvider {
  static Future<Map<String, dynamic>> fetch(final String url, var header, {var body, int timeOut = 30}) async {
    try {
      Map<String, dynamic> jsonResponse = <String, dynamic>{};
      var dio = Dio();
      Response response;
      if (body == null) {
        response = await dio.get(url, options: Options(headers: header));
      } else {
        response = await dio.post(url, options: Options(headers: header), data: body).timeout(Duration(seconds: timeOut));
      }

      if (response.data.isNotEmpty) {
        jsonResponse = convert.jsonDecode(convert.utf8.decode(response.data)) as Map<String, dynamic>;
      }

      return jsonResponse;
    } on DioException catch (e) {
      Log.print(e.response?.data);
      // Log.print(e.response?.headers);

      rethrow;
    }
  }

  static Future<Map<String, dynamic>> put(final String url, var header, {var body, int timeOut = 30}) async {
    try {
      Map<String, dynamic> jsonResponse = <String, dynamic>{};
      var dio = Dio();
      Response response;
      response = await dio.put(url, options: Options(headers: header), data: body).timeout(Duration(seconds: timeOut));

      if (response.data.isNotEmpty) {
        jsonResponse = convert.jsonDecode(convert.utf8.decode(response.data)) as Map<String, dynamic>;
      }

      return jsonResponse;
    } on DioException catch (e) {
      Log.print(e.response?.data);
      // Log.print(e.response?.headers);

      rethrow;
    }
  }

  static Future<Map<String, dynamic>> post(final String url, var header, {var body, int timeOut = 30}) async {
    try {
      Map<String, dynamic> jsonResponse = <String, dynamic>{};
      var dio = Dio();
      Response response;
      response = await dio.post(url, options: Options(headers: header), data: body).timeout(Duration(seconds: timeOut));

      if (response.data.isNotEmpty) {
        jsonResponse = convert.jsonDecode(convert.utf8.decode(response.data)) as Map<String, dynamic>;
      }

      return jsonResponse;
    } on DioException catch (e) {
      Log.print(e.response?.data);
      // Log.print(e.response?.headers);

      rethrow;
    }
  }

  static Future<Map<String, dynamic>> delete(final String url, var header, {var body, int timeOut = 30}) async {
    try {
      Map<String, dynamic> jsonResponse = <String, dynamic>{};
      var dio = Dio();
      Response response;
      response = await dio.delete(url, options: Options(headers: header), data: body).timeout(Duration(seconds: timeOut));

      if (response.data.isNotEmpty) {
        jsonResponse = convert.jsonDecode(convert.utf8.decode(response.data)) as Map<String, dynamic>;
      }

      return jsonResponse;
    } on DioException catch (e) {
      Log.print(e.response?.data);
      // Log.print(e.response?.headers);

      rethrow;
    }
  }
}
