import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/bindings/default_bindings.dart';
import 'app/data/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    enableLog: false,
    debugShowCheckedModeBanner: false,
    getPages: Pages.routes, // Seu array de navegação contendo as rotas e suas pages
    initialRoute: Routes.login, //Rota inicial
    initialBinding: DefaultBindings(), // dependencias iniciais
    // theme: CustomTheme.getThemeData(), //Tema personalizado app
    // darkTheme: BBTheme.darkThemeData,
    // defaultTransition: Transition.fade, // Transição de telas padr5678ão
    // locale: const Locale('pt', 'BR'), // Língua padrão
    // translationsKeys: Get.find<TextTranslations>().keys,
    // translations: Get.find<TextTranslations>(),
    // localizationsDelegates: const [GlobalWidgetsLocalizations.delegate, GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
    // supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR'), Locale('ja', 'JP'), Locale('es', 'ES')],
    // builder: EasyLoading.init(),
  ));
}
