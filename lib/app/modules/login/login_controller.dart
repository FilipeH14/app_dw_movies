import 'package:get/get.dart';

import 'package:app_dw_movies/application/ui/loader/loader_mixin.dart';
import 'package:app_dw_movies/application/ui/messages/messages_mixins.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixins {
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  @override
  void onInit() {
    loaderListener(loading);
    messageListener(message);
    super.onInit();
  }

  Future<void> login() async {
    loading(true);
    // await Future.delayed(const Duration(seconds: 2));
    await 2.seconds.delay();
    loading(false);
    message(
      MessageModel.error(
          title: 'Ocorreu um erro', message: 'Ops!! ocorreu um erro'),
    );
    await 1.seconds.delay();
    message(
      MessageModel.info(
          title: 'Sucesso', message: 'Operação feita com sucesso!'),
    );
  }
}
