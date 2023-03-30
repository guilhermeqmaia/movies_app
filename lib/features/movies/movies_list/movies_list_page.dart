import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/features/movies/bloc/event/movie_event.dart';
import 'package:movies_app/features/movies/bloc/movies_bloc.dart';
import 'package:movies_app/features/movies/usecase/get_movies_usecase.dart';

import '../bloc/state/movie_state.dart';

class MoviesListPage extends StatefulWidget {
  const MoviesListPage({Key? key}) : super(key: key);

  @override
  State<MoviesListPage> createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  late final MoviesBloc bloc;

  @override
  void initState() {
    final getIt = GetIt.instance;
    bloc = MoviesBloc(getIt.get<IGetMoviesUsecase>());
    super.initState();
    bloc.add(LoadMoviesEvent(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MoviesList'),
      ),
      body: BlocBuilder<MoviesBloc, IMovieState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is IdleMoviesState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SuccessLoadMoviesState) {
            print(state.movies?.totalPages);
            return SingleChildScrollView(
              child: Column(
                children: [
                  ...state.movies?.results.map((movie) => Text(movie.title)) ??
                      [],
                ],
              ),
            );
          }
          if (state is ErrorMoviesState) {
            print(state.error);
            print(state.stackTrace);
            return Center(
              child: Column(
                children: [
                  Text(state.error.toString()),
                  Text(state.stackTrace.toString()),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
