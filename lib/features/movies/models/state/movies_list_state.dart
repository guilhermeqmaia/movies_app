import 'package:movies_app/features/movies/models/state/movie_state.dart';

class MoviesListState {
  final String? posterPath;
  final int id;
  final String backdropPath;
  final int? totalResults;
  final bool public;
  final String revenue;
  final int page;
  final List<MovieState> results;
  final String iso6391;
  final int totalPages;
  final String description;
  final double averageRating;
  final int runtime;
  final String name;

  const MoviesListState({
    this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.totalResults,
    required this.public,
    required this.revenue,
    required this.page,
    required this.results,
    required this.iso6391,
    required this.totalPages,
    required this.description,
    required this.averageRating,
    required this.runtime,
    required this.name,
  });
}
