import 'package:movies_app/features/movies/mapper/movies_list_state_mapper.dart';
import 'package:movies_app/features/movies/models/state/movies_list_state.dart';

import '../repository/movies_repository.dart';

abstract class IGetMoviesUsecase {
  Future<MoviesListState> execute(int page);
}

class GetMoviesUsecase extends IGetMoviesUsecase {
  final IMoviesRepository _repository;

  GetMoviesUsecase(this._repository);

  @override
  Future<MoviesListState> execute(int page) async {
    final response = await _repository.getAllMovies(page);
    return response.toState();
  }
}
