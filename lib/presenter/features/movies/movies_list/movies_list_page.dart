import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_app/presenter/features/movies/repository/movies_repository.dart';

class MoviesListPage extends ConsumerWidget {
  const MoviesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(repositoryProvider);

    return response.when(
      data: (data) => Scaffold(
        body: Center(
          child: data ?? "Cheguei",
        ),
      ),
      error: (e, s) {
        print(e);
        print(s);
        return const Scaffold(
          body: Center(
            child: Text('Deu erro'),
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
