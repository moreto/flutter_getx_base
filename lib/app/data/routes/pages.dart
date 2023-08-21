import 'package:get/get.dart';

import '../ui/access/login_page.dart';
import '../ui/home/home_page.dart';

part 'routes.dart';

class Pages {
  static final routes = [
    // GetPage(name: Routes.splash, page: () => const SplashPage(), transition: Transition.fadeIn),
    GetPage(name: Routes.home, page: () => const HomePage(), transition: Transition.fadeIn),
    GetPage(name: Routes.login, page: () => const LoginPage(), transition: Transition.fadeIn),
  ];
}
