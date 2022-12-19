import 'package:app_dw_movies/app/models/genre_model.dart';
import 'package:app_dw_movies/app/services/genres/genres_service.dart';
import 'package:app_dw_movies/application/ui/messages/messages_mixins.dart';
import 'package:get/get.dart';

class MoviesController extends GetxController with MessagesMixins {
  final GenresService _genresService;
  final _message = Rxn<MessageModel>();

  final genres = <GenreModel>[].obs;

  MoviesController({
    required GenresService genresService,
  }) : _genresService = genresService;

  @override
  void onInit() {
    super.onInit();
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      final genres = await _genresService.getGenres();
      this.genres.assignAll(genres);
    } catch (e) {
      _message(MessageModel.error(
        title: 'Erro',
        message: 'Erro ao buscar categorias',
      ));
    }
  }
}
