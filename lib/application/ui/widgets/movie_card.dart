import 'package:app_dw_movies/app/models/movie_model.dart';
import 'package:app_dw_movies/application/ui/filmes_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;

  final dateFormat = DateFormat('y');

  MovieCard({
    required this.movie,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 150,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      movie.posterPath,
                      width: 148,
                      height: 184,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  movie.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 5),
                Text(
                  dateFormat.format(DateTime.parse(movie.releaseDate)),
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 75,
            right: -3,
            child: Material(
              elevation: 5,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 30,
                child: IconButton(
                  iconSize: 13,
                  icon: const Icon(
                    FilmesAppIcons.heart,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
