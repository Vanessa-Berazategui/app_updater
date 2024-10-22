// Package imports:
import 'package:app_updater_data/app_updater_data.dart';
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // Information
  //============================
  @lazySingleton
  InformationRepository informationRepository(
    InformationDataSource dataSource,
  ) =>
      InformationDataRepository(dataSource: dataSource);
}
