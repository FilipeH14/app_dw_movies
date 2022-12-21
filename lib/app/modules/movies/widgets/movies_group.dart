import 'package:app_dw_movies/application/ui/widgets/movie_card.dart';
import 'package:flutter/material.dart';

class MoviesGroup extends StatelessWidget {
  final String title;

  const MoviesGroup({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => const MovieCard(),
            ),
          ),
        ],
      ),
    );
  }
}
