// Package imports:
import 'package:app_updater_data/app_updater_data.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppDataSourcesModule {
  //============================
  // Information
  //============================
  @lazySingleton
  InformationDataSource informationDataSource(
    AppUpdaterApi api,
  ) =>
      InformationDataSource(api: api);
}
