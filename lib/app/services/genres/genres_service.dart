import 'package:app_dw_movies/app/models/genre_model.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}
