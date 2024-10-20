// Package imports:

// Project imports:
import 'package:app_updater_data/src/api/params/counter_data_params.dart';
import 'package:app_updater_data/src/datasources/datasources.dart';
import 'package:app_updater_data/src/extensions/extensions.dart';
// Package imports:
import 'package:app_updater_domain/app_updater_domain.dart';

class CounterDataRepository implements CounterRepository {
  CounterDataRepository({
    required CounterLocalDataSource localDataSource,
    required CounterRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  final CounterLocalDataSource _localDataSource;
  final CounterRemoteDataSource _remoteDataSource;

  @override
  Future<Result<int>> getCounter(NoParams params) async => process(
        action: _localDataSource.getCounter,
      );

  @override
  Future<Result<void>> saveCounter(CounterParams params) async => process(
        action: () => _localDataSource.saveCounter(
          CounterDataParams.fromDomain(params),
        ),
      );

  @override
  Future<Result<String>> quizCounter(CounterParams params) async => process(
        action: () => _remoteDataSource.quizCounter(
          CounterDataParams.fromDomain(params),
        ),
      );
}
