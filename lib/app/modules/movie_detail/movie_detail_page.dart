import 'package:app_dw_movies/app/modules/movie_detail/movie_detail_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MovieDetailPage extends GetView<MovieDetailController> {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MovieDetailPage')),
      body: Container(),
    );
  }
}
