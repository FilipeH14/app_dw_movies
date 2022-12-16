import 'dart:developer';

import 'package:app_dw_movies/app/services/login/login_service.dart';
import 'package:get/get.dart';

import 'package:app_dw_movies/application/ui/loader/loader_mixin.dart';
import 'package:app_dw_movies/application/ui/messages/messages_mixins.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixins {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(
        MessageModel.info(
            title: 'Sucesso', message: 'Login efetuado com sucesso'),
      );
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
      message(
        MessageModel.error(
            title: ' Login error', message: 'Erro ao realizar login'),
      );
    }
  }
}
