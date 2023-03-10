import 'package:app_dw_movies/app/modules/movies/movies_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends GetView<MoviesController> {
  const MoviesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: Get.width,
            child: Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: Get.width * .9,
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.search),
                contentPadding: EdgeInsets.zero,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: const TextStyle(fontSize: 15, color: Colors.grey),
                labelText: 'Procurar filmes',
              ),
              onChanged: (value) => controller.filterByName(value),
            ),
          ),
        ],
      ),
    );
  }
}
