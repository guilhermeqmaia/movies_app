import 'package:movies_app/features/movies/models/state/movie_state.dart';

abstract class IMovieEvent {}

class LoadMoviesEvent extends IMovieEvent {
  final int page;
  LoadMoviesEvent(this.page);
}

class SaveMovieEvent extends IMovieEvent {
  final MovieState movie;
  SaveMovieEvent(this.movie);
}

class ErrorMoviesEvent extends IMovieEvent {
  final Object? error;
  final StackTrace? stackTrace;

  ErrorMoviesEvent(this.error, this.stackTrace);
}

class ShowSavedMoviesEvent extends IMovieEvent {}
