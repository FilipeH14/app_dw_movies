import 'package:app_dw_movies/app/models/movie_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getPupularMovies();

  Future<List<MovieModel>> getTopRated();
}
