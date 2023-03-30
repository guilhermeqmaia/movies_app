import 'package:bloc/bloc.dart';
import 'package:movies_app/features/movies/bloc/event/movie_event.dart';
import 'package:movies_app/features/movies/bloc/state/movie_state.dart';
import 'package:movies_app/features/movies/usecase/get_movies_usecase.dart';

class MoviesBloc extends Bloc<IMovieEvent, IMovieState> {
  final IGetMoviesUsecase _usecase;

  MoviesBloc(this._usecase) : super(IdleMoviesState()) {
    on<LoadMoviesEvent>(
      (event, emit) async {
        try {
          final response = await _usecase.execute(event.page);
          final newState = SuccessLoadMoviesState(moviesListState: response);
          newState.savedMovies = state.savedMovies;
          emit(newState);
        } catch (e, s) {
          emit(ErrorMoviesState(error: e, stackTrace: s));
        }
      },
    );

    on<SaveMovieEvent>(
      (event, emit) {
        final newState = state;
        newState.savedMovies.add(event.movie);
        emit(newState);
      },
    );
  }
}
