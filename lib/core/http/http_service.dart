import 'package:http/http.dart';
import 'package:movies_app/core/environment/environment.dart';

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

  String getUrl(String url) {
    if (url.contains('?')) {
      url = '$url&api_key=${_environment.apiKey}';
    } else {
      url = '$url?api_key=${_environment.apiKey}';
    }
    return url;
  }

  @override
  Future delete(String url, [Map<String, String>? headers]) {
    return _client
        .delete(Uri.parse(getUrl(url)), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future get(String url, [Map<String, String>? headers]) {
    return _client.get(Uri.parse(getUrl(url)), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future post(String url, [Map<String, String>? headers]) {
    return _client.post(Uri.parse(getUrl(url)), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }

  @override
  Future put(String url, [Map<String, String>? headers]) {
    return _client.put(Uri.parse(getUrl(url)), headers: {
      "content-type": "application/json;charset=utf-8",
      "authorization": "Bearer ${_environment.acessToken}",
      ...headers?.map((key, value) => MapEntry(key, value)) ?? {},
    });
  }
}
