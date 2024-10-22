import 'package:app_updater_data/app_updater_data.dart';
import 'package:package_info_plus/package_info_plus.dart';

class InformationDataSource extends BaseDataSource {
  const InformationDataSource({required AppUpdaterApi api}) : _api = api;

  final AppUpdaterApi _api;

  Future<PackageInfoModel> getPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return PackageInfoModel(
      name: packageInfo.appName,
      version: '${packageInfo.version} ${packageInfo.buildNumber}',
    );
  }

  Future<BackendInfoModel> getBackendInfo() async => _api.getBackendInfo();
}
