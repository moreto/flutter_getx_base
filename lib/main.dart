import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/default_bindings.dart';
import 'app/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    enableLog: false,
    debugShowCheckedModeBanner: false,
    getPages: Pages.routes,
    initialRoute: Routes.login,
    initialBinding: DefaultBindings(),
    // theme: CustomTheme.getThemeData(),
    // darkTheme: BBTheme.darkThemeData,
    // defaultTransition: Transition.fade,
    // locale: const Locale('pt', 'BR'),
    // translationsKeys: Get.find<TextTranslations>().keys,
    // translations: Get.find<TextTranslations>(),
    // localizationsDelegates: const [GlobalWidgetsLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
    // supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR'), Locale('ja', 'JP'), Locale('es', 'ES')],
    // builder: EasyLoading.init(),
  ));
}
