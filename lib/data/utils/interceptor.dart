import 'package:dio/dio.dart';
import 'package:portfolio/data/utils/secrets.dart';

class AuthInterceptor extends QueuedInterceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Add authorization header with key to every API request
    options.headers['X-RapidAPI-Key'] = Secrets.emailApiKey;
    options.headers['X-RapidAPI-Host'] = Secrets.emailApiHost;
    handler.next(options);
  }
}
