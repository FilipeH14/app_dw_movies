import 'package:app_dw_movies/app/modules/movie_detail/movie_detail_module.dart';
import 'package:app_dw_movies/application/ui/filmes_app_ui_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_dw_movies/app/modules/home/home_module.dart';
import 'package:app_dw_movies/app/modules/login/login_module.dart';
import 'package:app_dw_movies/app/modules/splash/splash_module.dart';
import 'package:app_dw_movies/application/bindings/applications_bindindings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseRemoteConfig.instance.fetchAndActivate();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.title,
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationsBindindings(),
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
