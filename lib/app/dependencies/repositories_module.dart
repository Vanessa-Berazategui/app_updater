// Package imports:
import 'package:app_updater_data/app_updater_data.dart';
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppRepositoriesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  CounterRepository aboutRepository(
    CounterLocalDataSource localDataSource,
    CounterRemoteDataSource remoteDataSource,
  ) =>
      CounterDataRepository(
        localDataSource: localDataSource,
        remoteDataSource: remoteDataSource,
      );
}
