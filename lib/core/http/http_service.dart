import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/core/environment/environment.dart';

final httpServiceProvider = Provider<IHttpService>(
  (ref) => HttpService(
    http.Client(),
    ref.read(environmentProvider),
  ),
);

abstract class IHttpService {
  Future get(String url, [Map<String, String>? headers]);
  Future post(String url, [Map<String, String>? headers]);
  Future put(String url, [Map<String, String>? headers]);
  Future delete(String url, [Map<String, String>? headers]);
}

class HttpService extends IHttpService {
  final Client _client;
  final IEnvironment _environment;

  HttpService(this._client, this._environment);

  @override
  Future delete(String url, [Map<String, String>? headers]) {
    return _client.delete(Uri.parse(url), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future get(String url, [Map<String, String>? headers]) {
    return _client.get(Uri.parse(url), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future post(String url, [Map<String, String>? headers]) {
    return _client.post(Uri.parse(url), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future put(String url, [Map<String, String>? headers]) {
    return _client.put(Uri.parse(url), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }
}
