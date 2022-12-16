import 'package:app_dw_movies/app/modules/login/login_binding.dart';
import 'package:app_dw_movies/app/modules/login/login_page.dart';
import 'package:app_dw_movies/application/modules/module.dart';
import 'package:get/get.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      binding: LoginBinding(),
      page: () => const LoginPage(),
    ),
  ];
}
