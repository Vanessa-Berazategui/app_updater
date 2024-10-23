part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool loadingPackageInfo,
    required bool loadingBackendInfo,
    required bool downloadingUpdate,
    required bool downloadingIsDone,
    required double downloadingProgress,
    required bool downloadingDialogOpened,
    PackageInfo? packageInfo,
    BackendInfo? backendInfo,
    List<ConnectivityResult>? connectivity,
    Failure? failure,
  }) = _HomeState;

  factory HomeState.init() => const HomeState(
        loadingPackageInfo: false,
        loadingBackendInfo: false,
        downloadingUpdate: false,
        downloadingIsDone: false,
        downloadingDialogOpened: false,
        downloadingProgress: 0,
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

  bool hasConnection() =>
      connectivity != null && !connectivity!.contains(ConnectivityResult.none);
}
