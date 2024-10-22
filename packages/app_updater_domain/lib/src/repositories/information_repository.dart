import 'package:app_updater_domain/app_updater_domain.dart';

abstract interface class InformationRepository extends BaseRepository {
  Future<Result<PackageInfo>> getPackageInfo();
  Future<Result<BackendInfo>> getBackendInfo();
}
