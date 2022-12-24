import 'package:app_dw_movies/app/models/movie_model.dart';
import 'package:app_dw_movies/app/repositories/movies/movies_repository.dart';
import 'package:app_dw_movies/app/services/movies/movies_service.dart';

class MoviesServiceImpl implements MoviesService {
  final MoviesRepository _moviesRepository;

  MoviesServiceImpl({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository;

  @override
  Future<List<MovieModel>> getPupularMovies() =>
      _moviesRepository.getPupularMovies();

  @override
  Future<List<MovieModel>> getTopRated() => _moviesRepository.getTopRated();
}
