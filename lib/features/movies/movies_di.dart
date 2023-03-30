import 'package:get_it/get_it.dart';
import 'package:movies_app/core/di/di.dart';
import 'package:movies_app/features/movies/repository/movies_repository.dart';
import 'package:movies_app/features/movies/usecase/get_movies_usecase.dart';

import '../../core/http/http_service.dart';

class MoviesDi extends DependencyInjector {
  @override
  void injectDependencies() {
    final getIt = GetIt.instance;
    getIt.registerLazySingleton<IMoviesRepository>(
        () => MoviesRepository(getIt.get<IHttpService>()));
    getIt.registerLazySingleton<IGetMoviesUsecase>(
        () => GetMoviesUsecase(getIt.get<IMoviesRepository>()));
  }
}
