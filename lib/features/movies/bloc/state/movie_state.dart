import 'package:movies_app/features/movies/models/state/movie_state.dart';
import 'package:movies_app/features/movies/models/state/movies_list_state.dart';

abstract class IMovieState {
  List<MovieState> savedMovies;
  MoviesListState? movies;

  IMovieState({this.savedMovies = const [], this.movies});
}

class IdleMoviesState extends IMovieState {}

class SuccessLoadMoviesState extends IMovieState {
  SuccessLoadMoviesState({
    required MoviesListState moviesListState,
  }) : super(movies: moviesListState);
}

class ErrorMoviesState extends IMovieState {
  final Object? error;
  final StackTrace? stackTrace;
  ErrorMoviesState({this.error, this.stackTrace});
}

class SavedMoviesState extends IMovieState {
  SavedMoviesState({required List<MovieState> savedMovies})
      : super(savedMovies: savedMovies);
}
