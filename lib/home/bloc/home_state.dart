part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool loadingPackageInfo,
    required bool loadingBackendInfo,
    required bool installingUpdate,
    required bool installationIsDone,
    PackageInfo? packageInfo,
    BackendInfo? backendInfo,
    required double installationProgress,
    Failure? failure,
  }) = _HomeState;

  factory HomeState.init() => const HomeState(
        loadingPackageInfo: false,
        loadingBackendInfo: false,
        installingUpdate: false,
        installationIsDone: false,
        installationProgress: 0,
      );
}

extension HomeStateX on HomeState {
  bool get loading => loadingPackageInfo || loadingBackendInfo;

  bool get updateApp {
    if (packageInfo != null && backendInfo != null) {
      final currentVersion = Version.parse(packageInfo!.version);
      final latestVersion = Version.parse(backendInfo!.apkVersion);

      return latestVersion > currentVersion;
    }

    return false;
  }
}
