import 'package:flutter_challange/presentation/login_page.dart';
import 'package:flutter_challange/presentation/splash_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String splash = '/';
  static const String login = '/login';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routers.login,
      page: () => const LoginPage(),
    ),
  ];
}
