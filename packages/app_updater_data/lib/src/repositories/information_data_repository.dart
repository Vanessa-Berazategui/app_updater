// Package imports:
// Project imports:
import 'package:app_updater_data/app_updater_data.dart';
import 'package:app_updater_domain/app_updater_domain.dart';

class InformationDataRepository implements InformationRepository {
  InformationDataRepository({
    required InformationDataSource dataSource,
  }) : _datasource = dataSource;

  final InformationDataSource _datasource;

  @override
  Future<Result<PackageInfo>> getPackageInfo() => process(
        action: _datasource.getPackageInfo,
      );

  @override
  Future<Result<BackendInfo>> getBackendInfo() => process(
        action: _datasource.getBackendInfo,
      );
}
