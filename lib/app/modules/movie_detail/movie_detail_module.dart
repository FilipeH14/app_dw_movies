import 'package:app_dw_movies/app/modules/movie_detail/movie_detail_page.dart';
import 'package:app_dw_movies/app/modules/movies/movies_binding.dart';
import 'package:app_dw_movies/application/modules/module.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MovieDetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      binding: MoviesBinding(),
      page: () => const MovieDetailPage(),
    ),
  ];
}
