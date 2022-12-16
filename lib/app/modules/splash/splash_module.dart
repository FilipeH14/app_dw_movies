import 'package:app_dw_movies/app/modules/splash/splash_page.dart';
import 'package:app_dw_movies/application/modules/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const SplashPage(),
    ),
  ];
}
