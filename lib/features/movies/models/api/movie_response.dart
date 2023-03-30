import 'package:json_annotation/json_annotation.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  @JsonKey(name: 'poster_path')
  final String posterPath;
  final bool adult;
  final String overview;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  final int id;
  @JsonKey(name: 'media_type')
  final String mediaType;
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  final String title;

  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  final double popularity;
  @JsonKey(name: 'vote_count')
  final int voteCount;
  final bool video;
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  MovieResponse(
      this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.originalTitle,
      this.genreIds,
      this.id,
      this.mediaType,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage);

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}
