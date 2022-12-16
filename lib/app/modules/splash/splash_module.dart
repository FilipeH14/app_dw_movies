import 'package:app_dw_movies/app/modules/splash/splash_binding.dart';
import 'package:app_dw_movies/app/modules/splash/splash_page.dart';
import 'package:app_dw_movies/application/modules/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      binding: SplashBinding(),
      page: () => const SplashPage(),
    ),
  ];
}
