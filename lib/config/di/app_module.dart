import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/utils/secrets.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../data/utils/interceptor.dart';
import 'app_module.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configDependencies() async => getIt.init();

@module
@Singleton()
abstract class AppModule {
  @Singleton()
  Dio get dio => _createDio(Secrets.emailBaseUrl);

  Dio _createDio(String url) {
    final BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      baseUrl: url,

      /// Dio defaults to json parsing, specify it here to return UTF8 string and handle it yourself.
      /// (It can also be achieved through a custom transformer)
      responseType: ResponseType.plain,
      validateStatus: (_) {
        /// Do not use http status code to judge the status, use AdapterInterceptor to handle (applicable to standard REST style)
        return true;
      },
    );

    final dio = Dio(options);
    dio.interceptors.add(AuthInterceptor());

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ));
    }

    return dio;
  }
}
