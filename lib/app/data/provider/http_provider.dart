import 'dart:async';
import 'dart:convert' as convert;
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import '../../commons/log.dart';

class HttpProvider {
  static Future<Map<String, dynamic>> fetch(final String url, var header, {var body, int timeOut = 30}) async {
    http.Response response;
    var client = http.Client();

    var jsonResponse;
    final DateTime inicioRequisicao = DateTime.now();
    int sCode;

    Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'processando');

    var _uri = Uri.parse(url);
    String verb = '';
    try {
      if (body == null) {
        verb = '(get)';
        response = await client.get(_uri, headers: header).timeout(Duration(seconds: timeOut));
      } else {
        verb = '(post)';
        response = await client.post(_uri, headers: header, body: body).timeout(Duration(seconds: timeOut));
      }

      sCode = response.statusCode;

      final DateTime terminoRequisicao = DateTime.now();
      Log.print(url.substring(0, url.indexOf('/api')), titulo: 'host');
      Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'api');
      if (body != null) Log.print(body.toString(), titulo: 'body');
      Log.print('[$sCode] $verb ${terminoRequisicao.difference(inicioRequisicao).inSeconds} - ${terminoRequisicao.difference(inicioRequisicao).inMilliseconds}',
          titulo: 'status code - tempo');
      Log.print('', titulo: '...');
      if (response.body.isNotEmpty) {
        jsonResponse = convert.jsonDecode(convert.utf8.decode(response.bodyBytes));
      }

      return jsonResponse;
      // } on SocketException {
      //   Log.print('SocketException');
      //   rethrow;
    } catch (ex) {
      Log.print(ex);
      return jsonResponse;
    } finally {
      client.close();
    }
  }

  static Future<Map<String, dynamic>> put(final String url, var header, {var body, int timeOut = 30}) async {
    http.Response response;
    var jsonResponse;
    final DateTime inicioRequisicao = DateTime.now();
    int sCode;

    Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'processando');

    var _uri = Uri.parse(url);
    try {
      response = await http.put(_uri, headers: header, body: body).timeout(Duration(seconds: timeOut));

      sCode = response.statusCode;
      // Log.print(sCode.toString(), titulo: 'statusCode');

      final DateTime terminoRequisicao = DateTime.now();
      Log.print(url.substring(0, url.indexOf('/api')), titulo: 'host');
      Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'api');
      if (body != null) Log.print(body.toString(), titulo: 'body');
      Log.print('[$sCode] (put)${terminoRequisicao.difference(inicioRequisicao).inSeconds} - ${terminoRequisicao.difference(inicioRequisicao).inMilliseconds}',
          titulo: 'status code - tempo');
      Log.print('', titulo: '...');

      if (sCode == 200) {
        Uint8List dados = response.bodyBytes;
        String code = convert.utf8.decode(dados);
        jsonResponse = convert.jsonDecode(code);

        return jsonResponse;
      } else {
        return jsonResponse;
      }
    } catch (ex) {
      Log.print(ex);
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> post(final String url, var header, {var body, int timeOut = 30}) async {
    http.Response response;
    var jsonResponse;
    final DateTime inicioRequisicao = DateTime.now();
    int sCode;

    Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'processando');

    var _uri = Uri.parse(url);
    try {
      response = await http.post(_uri, headers: header, body: body).timeout(Duration(seconds: timeOut));

      sCode = response.statusCode;
      // Log.print(sCode.toString(), titulo: 'statusCode');

      final DateTime terminoRequisicao = DateTime.now();
      Log.print(url.substring(0, url.indexOf('/api')), titulo: 'host');
      Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'api');
      if (body != null) Log.print(body.toString(), titulo: 'body');
      Log.print('[$sCode] (post)${terminoRequisicao.difference(inicioRequisicao).inSeconds} - ${terminoRequisicao.difference(inicioRequisicao).inMilliseconds}',
          titulo: 'status code - tempo');
      Log.print('', titulo: '...');

      if (sCode == 200) {
        Uint8List dados = response.bodyBytes;
        String code = convert.utf8.decode(dados);
        jsonResponse = convert.jsonDecode(code);

        return jsonResponse;
      } else {
        return jsonResponse;
      }
    } catch (ex) {
      Log.print(ex);
      rethrow;
    }
  }

  static Future<Map<String, dynamic>> delete(final String url, var header, {var body, int timeOut = 30}) async {
    http.Response response;
    var jsonResponse;
    final DateTime inicioRequisicao = DateTime.now();
    int sCode;

    Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'processando');

    var _uri = Uri.parse(url);
    try {
      response = await http.delete(_uri, headers: header, body: body).timeout(Duration(seconds: timeOut));

      sCode = response.statusCode;
      // Log.print(sCode.toString(), titulo: 'statusCode');

      final DateTime terminoRequisicao = DateTime.now();
      Log.print(url.substring(0, url.indexOf('/api')), titulo: 'host');
      Log.print(url.substring(url.indexOf('/api'), url.length), titulo: 'api');
      if (body != null) Log.print(body.toString(), titulo: 'body');

      Log.print(
          '[$sCode] (delete)${terminoRequisicao.difference(inicioRequisicao).inSeconds} - ${terminoRequisicao.difference(inicioRequisicao).inMilliseconds}',
          titulo: 'status code - tempo');
      Log.print('', titulo: '...');

      if (sCode == 200) {
        Uint8List dados = response.bodyBytes;
        String code = convert.utf8.decode(dados);
        jsonResponse = convert.jsonDecode(code);

        Log.print(code, titulo: 'responseRequisicao');

        return jsonResponse;
      } else {
        return jsonResponse;
      }
    } catch (ex) {
      Log.print(ex);
      rethrow;
    }
  }
}
