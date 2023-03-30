import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_app/core/http/http_service.dart';

final repositoryProvider = FutureProvider(
  (ref) => MoviesRepository(ref.read(httpServiceProvider)).getMovies(),
);

abstract class IMoviesRepository {
  Future getMovies();
}

class MoviesRepository extends IMoviesRepository {
  final IHttpService _httpService;

  MoviesRepository(this._httpService);

  @override
  Future getMovies() async {
    final response = await _httpService.get(
        "https://api.themoviedb.org/4/list/1?api_key=8ea92715f7d8106c05adb6c4d6f328af");

    print(response.body);
  }
}
