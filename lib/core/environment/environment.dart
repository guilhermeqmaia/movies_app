import 'package:flutter_riverpod/flutter_riverpod.dart';

final environmentProvider = Provider<IEnvironment>((ref) => Environment());

abstract class IEnvironment {
  String get acessToken;
  String get apiKey;
}

class Environment extends IEnvironment {
  @override
  String get acessToken =>
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZWE5MjcxNWY3ZDgxMDZjMDVhZGI2YzRkNmYzMjhhZiIsInN1YiI6IjYyZjUwM2IxZjkxODNhMDA5MWI2ZjFjNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9o928N7pBvEwkhRueYzQsMejSXTfF49vlqXDeCF3s2M";

  @override
  String get apiKey => "8ea92715f7d8106c05adb6c4d6f328af";
}
