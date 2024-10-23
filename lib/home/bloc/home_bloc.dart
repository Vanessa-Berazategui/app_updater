import 'dart:async';

import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ota_update/ota_update.dart';
import 'package:version/version.dart';

part 'home_bloc.freezed.dart';
part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({
    required GetPackageInfoUseCase getPackageInfoUseCase,
    required GetBackendInfoUseCase getBackendInfoUseCase,
  })  : _getPackageInfoUseCase = getPackageInfoUseCase,
        _getBackendInfoUseCase = getBackendInfoUseCase,
        super(HomeState.init()) {
    _downloader = OtaUpdate();
    _subscription = Connectivity().onConnectivityChanged.listen(
          _connectivityListener,
        );
    loadData();
  }

  final GetPackageInfoUseCase _getPackageInfoUseCase;
  final GetBackendInfoUseCase _getBackendInfoUseCase;
  late OtaUpdate _downloader;
  late StreamSubscription<List<ConnectivityResult>>? _subscription;

  void loadData() {
    Future.wait(
      [
        _loadPackageInfo(),
        _loadBackendInfo(),
      ],
    );
  }

  Future<void> _connectivityListener(
    List<ConnectivityResult> connectivity,
  ) async {
    emit(state.copyWith(connectivity: connectivity));

    if (!state.hasConnection()) {
      /// Cancel stream
      await _downloader.cancel();

      /// Prepare new stream
      _downloader = OtaUpdate();

      emit(
        state.copyWith(
          downloadingUpdate: false,
          downloadingIsDone: false,
          downloadingProgress: 0,
          failure: const Failure.noConnection(),
        ),
      );
    }
  }

  Future<void> _loadPackageInfo() async {
    emit(state.copyWith(loadingPackageInfo: true));

    final result = await _getPackageInfoUseCase.call(const NoParams());

    result.when(
      success: (packageInfo) => emit(
        state.copyWith(
          loadingPackageInfo: false,
          packageInfo: packageInfo,
          failure: null,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          loadingPackageInfo: false,
          failure: failure,
        ),
      ),
    );
  }

  Future<void> _loadBackendInfo() async {
    emit(state.copyWith(loadingBackendInfo: true));

    final result = await _getBackendInfoUseCase.call(const NoParams());

    result.when(
      success: (backendInfo) => emit(
        state.copyWith(
          loadingBackendInfo: false,
          backendInfo: backendInfo,
          failure: null,
        ),
      ),
      failure: (failure) => emit(
        state.copyWith(
          loadingBackendInfo: false,
          failure: failure,
        ),
      ),
    );
  }

  Future<void> downloadUpdate() async {
    emit(state.copyWith(downloadingUpdate: true));

    try {
      _downloader
          .execute(
        state.backendInfo!.apkUrl,
        destinationFilename: 'app_downloader.apk',
      )
          .listen(
        (OtaEvent event) {
          print(event.status.name);

          if (!(event.status == OtaStatus.DOWNLOADING ||
              event.status == OtaStatus.INSTALLING)) {
            return emit(
              state.copyWith(
                downloadingUpdate: false,
                downloadingIsDone: false,
                failure: Failure.ota(
                  message: event.status.toString(),
                ),
                downloadingProgress: 0,
              ),
            );
          }

          if (event.status == OtaStatus.DOWNLOADING) {
            final dowloading =
                event.value != null && double.tryParse(event.value!) != null;

            if (dowloading) {
              final progress = double.parse(event.value!);

              return emit(
                state.copyWith(
                  downloadingProgress: progress,
                  downloadingIsDone: progress == 100,
                ),
              );
            }

            return emit(
              state.copyWith(
                downloadingUpdate: false,
                downloadingIsDone: false,
                failure: Failure.ota(
                  message: event.status.toString(),
                ),
                downloadingProgress: 0,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          downloadingUpdate: false,
          downloadingIsDone: false,
          failure: Failure.ota(
            message: e.toString(),
          ),
          downloadingProgress: 0,
        ),
      );
    }
  }

  Future<void> downloadingDialogOpened({required bool value}) async {
    emit(state.copyWith(downloadingDialogOpened: value));
  }

  void cleanFailure() => emit(state.copyWith(failure: null));

  @override
  Future<void> close() {
    _subscription!.cancel();
    return super.close();
  }
}
