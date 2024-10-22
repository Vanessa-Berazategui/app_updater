// Dart imports:
import 'dart:developer';

// Project imports:
import 'package:app_updater_data/app_updater_data.dart';
// Package imports:
import 'package:flutter_test/flutter_test.dart';

import '../helpers/helpers.dart';

void main() {
  /// Api
  late AppUpdaterApi api;
  late AppEnvironmentApi env;

  setUpAll(() {
    env = const AppEnvironmentApi();

    api = AppUpdaterApi(
      baseUrl: env.baseUrl,
      httpAuthorizationInterceptor: HttpAuthorizationInterceptor(
        apiKey: env.apiKey,
        apiHost: env.apiHost,
      ),
      timeoutOptions: TimeoutOptions(
        connectTimeout: env.connectTimeout,
        sendTimeout: env.sendTimeout,
        receiveTimeout: env.receiveTimeout,
      ),
    );
  });

  group('githubapi', () {
    test('getBackendInfo', () async {
      final result = await api.getBackendInfo();

      log('${result.apkVersion}${result.apkUrl}');

      expect(
        '${result.apkVersion}${result.apkUrl}',
        isNotEmpty,
        reason: 'Backend info result is empty',
      );
    });
  });
}
