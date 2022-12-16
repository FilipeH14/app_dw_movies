import 'package:app_dw_movies/app/repositories/login/login_repository.dart';
import 'package:app_dw_movies/app/repositories/login/login_repository_impl.dart';
import 'package:app_dw_movies/app/services/login/login_service.dart';
import 'package:app_dw_movies/app/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationsBindindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()));
  }
}
