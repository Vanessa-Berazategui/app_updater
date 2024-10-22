// Package imports:
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // Information
  //============================
  @lazySingleton
  GetPackageInfoUseCase getPackageInfoUseCase(
    InformationRepository repository,
  ) =>
      GetPackageInfoUseCase(
        repository: repository,
      );

  @lazySingleton
  GetBackendInfoUseCase getBackendInfoUseCase(
    InformationRepository repository,
  ) =>
      GetBackendInfoUseCase(
        repository: repository,
      );
}
