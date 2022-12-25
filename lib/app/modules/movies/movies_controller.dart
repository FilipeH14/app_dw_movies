import 'dart:developer';

import 'package:app_dw_movies/app/models/genre_model.dart';
import 'package:app_dw_movies/app/models/movie_model.dart';
import 'package:app_dw_movies/app/services/genres/genres_service.dart';
import 'package:app_dw_movies/app/services/movies/movies_service.dart';
import 'package:app_dw_movies/application/ui/messages/messages_mixins.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController with MessagesMixins {
  final GenresService _genresService;
  final MoviesService _moviesService;

  final _message = Rxn<MessageModel>();

  final genres = <GenreModel>[].obs;

  final popularMovies = <MovieModel>[].obs;
  final topRatedMovies = <MovieModel>[].obs;

  var _popularMoviesOriginal = <MovieModel>[];
  var _topRatedMoviesOriginal = <MovieModel>[];

  MoviesController({
    required GenresService genresService,
    required MoviesService moviesService,
  })  : _genresService = genresService,
        _moviesService = moviesService;

  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final genresData = await _genresService.getGenres();
      genres.assignAll(genresData);

      final popularMoviesData = await _moviesService.getPupularMovies();
      final topRatedMoviesData = await _moviesService.getTopRated();

      popularMovies.assignAll(popularMoviesData);
      _popularMoviesOriginal = popularMoviesData;

      topRatedMovies.assignAll(topRatedMoviesData);
      _topRatedMoviesOriginal = topRatedMoviesData;
    } catch (e, s) {
      log('$e');
      log('$s');

      _message(MessageModel.error(
        title: 'Erro',
        message: 'Erro ao carregar dados da página',
      ));
    }
  }

  void filterByName(String title) {
    if (title.isNotEmpty) {
      var newPopularMovies = _popularMoviesOriginal.where(
        (movie) => movie.title.toLowerCase().contains(title.toLowerCase()),
      );

      var newTopRatedMovies = _topRatedMoviesOriginal.where(
        (movie) => movie.title.toLowerCase().contains(title.toLowerCase()),
      );

      popularMovies.assignAll(newPopularMovies);
      topRatedMovies.assignAll(newTopRatedMovies);
    } else {
      popularMovies.assignAll(_popularMoviesOriginal);
      topRatedMovies.assignAll(_topRatedMoviesOriginal);
    }
  }
}
