import 'package:app_dw_movies/app/repositories/genres/genres_repository.dart';
import 'package:app_dw_movies/app/repositories/genres/genres_repository_impl.dart';
import 'package:app_dw_movies/app/services/genres/genres_service.dart';
import 'package:app_dw_movies/app/services/genres/genres_service_impl.dart';
import 'package:get/get.dart';

import 'package:app_dw_movies/app/modules/movies/movies_controller.dart';

class MoviesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
        () => GenresRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<GenresService>(
        () => GenresServicesImpl(genresRepository: Get.find()));

    Get.lazyPut(() => MoviesController(genresService: Get.find()));
  }
}
