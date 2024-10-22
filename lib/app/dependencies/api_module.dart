// Package imports:
import 'package:app_updater/app/environment/app_environment.dart';
import 'package:app_updater_data/app_updater_data.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppApiModule {
  //============================
  // App Updater Api
  //============================
  @lazySingleton
  AppUpdaterApi appUpdaterApi(
    AppEnvironment appEnvironment,
    HttpAuthorizationInterceptor httpAuthorizationInterceptor,
  ) =>
      AppUpdaterApi(
        baseUrl: appEnvironment.baseUrl,
        httpAuthorizationInterceptor: httpAuthorizationInterceptor,
        timeoutOptions: TimeoutOptions(
          connectTimeout: appEnvironment.connectTimeout,
          receiveTimeout: appEnvironment.receiveTimeout,
          sendTimeout: appEnvironment.sendTimeout,
        ),
      );

  @lazySingleton
  HttpAuthorizationInterceptor httpAuthorizationInterceptor(
    AppEnvironment appEnvironment,
  ) =>
      HttpAuthorizationInterceptor(
        apiKey: appEnvironment.apiKey,
        apiHost: appEnvironment.apiHost,
      );
}
