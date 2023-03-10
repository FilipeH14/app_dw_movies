import 'package:app_dw_movies/app/repositories/login/login_repository.dart';
import 'package:app_dw_movies/app/repositories/login/login_repository_impl.dart';
import 'package:app_dw_movies/app/repositories/movies/movies_repository.dart';
import 'package:app_dw_movies/app/repositories/movies/movies_repository_impl.dart';
import 'package:app_dw_movies/app/services/login/login_service.dart';
import 'package:app_dw_movies/app/services/login/login_service_impl.dart';
import 'package:app_dw_movies/app/services/movies/movies_service.dart';
import 'package:app_dw_movies/app/services/movies/movies_service_impl.dart';
import 'package:app_dw_movies/application/auth/auth_service.dart';
import 'package:app_dw_movies/application/rest_client/rest_client.dart';
import 'package:get/get.dart';

class ApplicationsBindindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient());

    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      fenix: true,
    );

    Get.lazyPut<LoginService>(
      () => LoginServiceImpl(loginRepository: Get.find()),
      fenix: true,
    );

    Get.put(AuthService()).init();

    Get.lazyPut<MoviesRepository>(
        () => MoviesRepositoryImpl(restClient: Get.find()));

    Get.lazyPut<MoviesService>(
        () => MoviesServiceImpl(moviesRepository: Get.find()));
  }
}
