import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class Log {
  static const MM = 'MM';
  static bool logOn = kReleaseMode ? false : true;

  static print(Object text, {String? titulo}) {
    if (logOn) {
      String init;
      String end = ':';
      String comp = '.';
      String strLog;

      if (titulo == null) {
        init = 'log';
      } else {
        init = titulo;
      }

      int qtd = init.length;
      strLog = '$init${comp.padRight(24 - qtd, '.')}$end $text';
      // if (GetPlatform.isWeb) {
      //   debugPrint(strLog);
      // } else {
      developer.log(strLog, name: MM);
      // dbLog(text.toString());
      // }
    }
  }
}
