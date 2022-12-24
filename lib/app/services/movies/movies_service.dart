import 'package:app_dw_movies/app/models/movie_model.dart';

abstract class MoviesService {
  Future<List<MovieModel>> getPupularMovies();

  Future<List<MovieModel>> getTopRated();
}