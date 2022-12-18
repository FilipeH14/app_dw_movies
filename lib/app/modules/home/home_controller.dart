import 'package:app_dw_movies/app/services/login/login_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final LoginService _loginService;

  HomeController({required LoginService loginService})
      : _loginService = loginService;

  static const navigator_key = 1;
  static const index_page_exit = 2;

  final _pages = ['/movies', '/favorites'];

  final _pageIndex = 0.obs;

  int get pageIndex => _pageIndex.value;

  void goToPage(int page) {
    _pageIndex(page);

    if (page == index_page_exit) {
      _loginService.logout();
    } else {
      Get.offNamed(_pages[page], id: navigator_key);
    }
  }
}
