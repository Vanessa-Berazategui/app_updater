// Package imports:

// Project imports:
import 'package:app_updater/app/app.dart';
// Package imports:

class AppEnvironmentTesting implements AppEnvironment {
  const AppEnvironmentTesting();

  @override
  String get baseUrl => 'https://numbersapi.p.rapidapi.com';

  @override
  String get apiKey => '';

  @override
  String get apiHost => 'numbersapi.p.rapidapi.com';

  @override
  int get connectTimeout => 30000;

  @override
  int get receiveTimeout => 50000;

  @override
  int get sendTimeout => 30000;

  @override
  String get env => AppEnvironment.test;
}
