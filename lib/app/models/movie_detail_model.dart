// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_dw_movies/app/models/genre_model.dart';

class MovieDetailModel {
  final String title;
  final double stars;
  final List<GenreModel> genres;
  final List<String> urlImages;
  final DateTime releasedate;
  final String overview;
  final List<String> productCompanies;
  final String originalLanguage;
  final Object cast; 
  
  MovieDetailModel({
    required this.title,
    required this.stars,
    required this.genres,
    required this.urlImages,
    required this.releasedate,
    required this.overview,
    required this.productCompanies,
    required this.originalLanguage,
    required this.cast,
  });
}
