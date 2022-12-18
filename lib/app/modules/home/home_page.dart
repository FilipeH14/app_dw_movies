import 'package:app_dw_movies/app/modules/favorites/favorites_page.dart';
import 'package:app_dw_movies/app/modules/home/home_controller.dart';
import 'package:app_dw_movies/app/modules/movies/movies_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dw_movies/application/ui/filmes_app_icons.dart';
import 'package:app_dw_movies/application/ui/theme_extensions.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        initialRoute: '/movies',
        key: Get.nestedKey(HomeController.navigator_key),
        onGenerateRoute: (settings) {
          if (settings.name == '/movies') {
            return GetPageRoute(
              settings: settings,
              page: () => const MoviesPage(),
            );
          }
          if (settings.name == '/favorites') {
            return GetPageRoute(
              settings: settings,
              page: () => const FavoritesPage(),
            );
          }

          return null;
        },
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          selectedItemColor: context.themeRed,
          unselectedItemColor: Colors.grey,
          currentIndex: controller.pageIndex,
          onTap: controller.goToPage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Filmes',
            ),
            BottomNavigationBarItem(
              icon: Icon(FilmesAppIcons.heart_empty),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined),
              label: 'Sair',
            ),
          ],
        );
      }),
    );
  }
}
