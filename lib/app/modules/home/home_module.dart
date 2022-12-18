import 'package:app_dw_movies/app/modules/home/home_bindings.dart';
import 'package:get/get.dart';

import 'package:app_dw_movies/app/modules/home/home_page.dart';
import 'package:app_dw_movies/application/modules/module.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    )
  ];
}
