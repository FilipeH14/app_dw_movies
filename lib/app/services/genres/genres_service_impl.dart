import 'package:app_dw_movies/app/models/genre_model.dart';
import 'package:app_dw_movies/app/repositories/genres/genres_repository.dart';
import 'package:app_dw_movies/app/services/genres/genres_service.dart';

class GenresServicesImpl implements GenresService {
  final GenresRepository _genresRepository;

  GenresServicesImpl({required GenresRepository genresRepository})
      : _genresRepository = genresRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genresRepository.getGenres();
}
