import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/core/environment/environment.dart';
import 'package:movies_app/core/http/http_service.dart';
import 'package:http/http.dart' as http;

void main() {
  final getIt = GetIt.I;
  getIt.registerSingleton<IEnvironment>(Environment());
  getIt.registerSingleton<IHttpService>(HttpService(http.Client(), getIt.get<IEnvironment>()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(),
    );
  }
}
