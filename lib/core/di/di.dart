import 'package:get_it/get_it.dart';

import '../environment/environment.dart';
import '../http/http_service.dart';
import 'package:http/http.dart' as http;

abstract class DependencyInjector {
  void injectDependencies();
}

class BaseProjectDependcies extends DependencyInjector {
  @override
  void injectDependencies() {
    final getIt = GetIt.instance;
    getIt.registerSingleton<IEnvironment>(Environment());
    getIt.registerSingleton<IHttpService>(
        HttpService(http.Client(), getIt.get<IEnvironment>()));
  }
}
