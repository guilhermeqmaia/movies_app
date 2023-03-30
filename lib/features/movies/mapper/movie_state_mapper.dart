import 'package:movies_app/features/movies/models/api/movie_response.dart';
import 'package:movies_app/features/movies/models/state/movie_state.dart';

extension MovieStateMapper on MovieResponse {
  MovieState toState() {
    return MovieState(
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      originalTitle: originalTitle,
      genreIds: genreIds,
      id: id,
      mediaType: mediaType,
      originalLanguage: originalLanguage,
      title: title,
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }
}
