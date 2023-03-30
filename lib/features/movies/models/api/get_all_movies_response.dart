import 'package:json_annotation/json_annotation.dart';
import 'package:movies_app/features/movies/models/api/movie_response.dart';

part 'get_all_movies_response.g.dart';

@JsonSerializable()
class GetAllMoviesResponse {
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final int id;
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  final int? totalResults;
  final bool public;
  @JsonKey(fromJson: _getRevenue)
  final String revenue;
  final int page;
  final List<MovieResponse> results;
  @JsonKey(name: 'iso_639_1')
  final String iso6391;
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final String description;
  @JsonKey(name: 'average_rating')
  final double averageRating;
  final int runtime;
  final String name;

  static String _getRevenue(dynamic value) => value.toString();

  GetAllMoviesResponse(this.posterPath, this.id, this.backdropPath, this.totalResults, this.public, this.revenue, this.page, this.results, this.iso6391, this.totalPages, this.description, this.averageRating, this.runtime, this.name);

  factory GetAllMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllMoviesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllMoviesResponseToJson(this);
}
