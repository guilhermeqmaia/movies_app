import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/core/di/di.dart';
import 'package:movies_app/features/movies/movies_di.dart';
import 'package:movies_app/features/movies/movies_list/movies_list_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I;
  BaseProjectDependcies().injectDependencies();
  MoviesDi().injectDependencies();
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'movies/list': (context) => const MoviesListPage(),
      },
      initialRoute: 'movies/list',
    );
  }
}
