
import 'dart:convert';

import 'package:movies_app/core/http/http_service.dart';
import 'package:movies_app/features/movies/models/api/get_all_movies_response.dart';

abstract class IMoviesRepository {
  Future<GetAllMoviesResponse> getAllMovies(int page);
}

class MoviesRepository extends IMoviesRepository {
  final IHttpService _service;

  MoviesRepository(this._service);

  @override
  Future<GetAllMoviesResponse> getAllMovies(int page) async {
    final response = await _service.get(
        'https://api.themoviedb.org/4/list/1?page=$page');
    return GetAllMoviesResponse.fromJson(jsonDecode(response.body));
  }
}
