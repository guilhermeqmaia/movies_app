import 'package:movies_app/features/movies/mapper/movie_state_mapper.dart';
import 'package:movies_app/features/movies/models/api/get_all_movies_response.dart';
import 'package:movies_app/features/movies/models/state/movies_list_state.dart';

extension MoviesListStateMapper on GetAllMoviesResponse {
  MoviesListState toState() {
    return MoviesListState(
      id: id,
      backdropPath: backdropPath,
      totalResults: totalResults,
      public: public,
      revenue: revenue,
      page: page,
      results: results.map((e) => e.toState()).toList(),
      iso6391: iso6391,
      totalPages: totalPages,
      description: description,
      averageRating: averageRating,
      runtime: runtime,
      name: name,
    );
  }
}
