// Project imports:

import 'package:app_updater/home/home.dart';
import 'package:app_updater_domain/app_updater_domain.dart';
// Package imports:

import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  HomeBloc homeBloc(
    GetPackageInfoUseCase getPackageInfoUseCase,
    GetBackendInfoUseCase getBackendInfoUseCase,
  ) =>
      HomeBloc(
        getPackageInfoUseCase: getPackageInfoUseCase,
        getBackendInfoUseCase: getBackendInfoUseCase,
      );
}
