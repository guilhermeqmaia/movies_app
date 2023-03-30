class MovieState {
  final String posterPath;
  final bool adult;
  final String overview;
  final String releaseDate;
  final String originalTitle;
  final List<int> genreIds;
  final int id;
  final String mediaType;
  final String originalLanguage;
  final String title;
  final String? backdropPath;
  final double popularity;
  final int voteCount;
  final bool video;
  final double voteAverage;
  bool saved;

  MovieState({
    required this.posterPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.originalTitle,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.title,
    this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
    this.saved = false,
  });
}
