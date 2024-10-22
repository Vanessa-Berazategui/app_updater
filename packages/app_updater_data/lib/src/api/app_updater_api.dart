// Dart imports:
import 'dart:developer';

// Project imports:
import 'package:app_updater_data/src/app_updater_data.dart';
// Package imports:
import 'package:dio/dio.dart';
// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'app_updater_api.g.dart';

@RestApi()
abstract class AppUpdaterApi {
  factory AppUpdaterApi({
    required String baseUrl,
    required HttpAuthorizationInterceptor httpAuthorizationInterceptor,
    required TimeoutOptions timeoutOptions,
    Dio? dio,
  }) {
    return _AppUpdaterApi(
      dio ??
          getDio(
            baseUrl: baseUrl,
            httpAuthorizationInterceptor: httpAuthorizationInterceptor,
            timeoutOptions: timeoutOptions,
          ),
      baseUrl: baseUrl,
    );
  }

  static Dio? __dio;

  static Dio? get dio => __dio;

  static Dio getDio({
    required String baseUrl,
    required HttpAuthorizationInterceptor httpAuthorizationInterceptor,
    required TimeoutOptions timeoutOptions,
    bool debugMode = false,
  }) {
    if (dio != null) {
      return dio!;
    }

    __dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
        connectTimeout: timeoutOptions.connectTimeout,
        receiveTimeout: timeoutOptions.receiveTimeout,
        sendTimeout: timeoutOptions.sendTimeout,
      ),
    );

    dio!.interceptors.add(httpAuthorizationInterceptor);

    if (debugMode || kDebugMode) {
      dio!.interceptors.add(
        PrettyDioLogger(
          responseHeader: true,
          requestHeader: true,
          requestBody: true,
          logPrint: (o) => log(o.toString()),
        ),
      );
    }

    return dio!;
  }

  /// Information endpoints
  @GET(Endpoint.backendInfo)
  Future<BackendInfoModel> getBackendInfo();
}
