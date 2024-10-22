import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ota_update/ota_update.dart';

part 'home_bloc.freezed.dart';
part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({
    required GetPackageInfoUseCase getPackageInfoUseCase,
    required GetBackendInfoUseCase getBackendInfoUseCase,
  })  : _getPackageInfoUseCase = getPackageInfoUseCase,
        _getBackendInfoUseCase = getBackendInfoUseCase,
        super(HomeState.init()) {
    loadData();
  }

  final GetPackageInfoUseCase _getPackageInfoUseCase;
  final GetBackendInfoUseCase _getBackendInfoUseCase;

  void loadData() {
    Future.wait(
      [
        _loadPackageInfo(),
        _loadBackendInfo(),
      ],
    );
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
          loadingPackageInfo: false,
          failure: failure,
        ),
      ),
    );
  }

  Future<void> updateApp() async {
    emit(state.copyWith(installingUpdate: true));

    try {
      OtaUpdate()
          .execute(
        state.backendInfo!.apkUrl,
        destinationFilename: 'sfvm.apk',
      )
          .listen(
        (OtaEvent event) {
          if (event.status == OtaStatus.DOWNLOADING) {
            final dowloading =
                event.value != null && double.tryParse(event.value!) != null;

            if (dowloading) {
              final progress = double.parse(event.value!);

              return emit(
                state.copyWith(
                  installationProgress: progress,
                  installationIsDone: progress == 100,
                ),
              );
            }

            return emit(
              state.copyWith(
                installingUpdate: false,
                installationIsDone: false,
                failure: Failure.server(
                  message:
                      'Failed to make OTA update. Details: ${event.status}',
                ),
                installationProgress: 0,
              ),
            );
          }
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          installingUpdate: false,
          installationIsDone: false,
          failure: Failure.server(
            message: 'Failed to make OTA update. Details: $e',
          ),
          installationProgress: 0,
        ),
      );
    }
  }

  void cleanFailure() => emit(state.copyWith(failure: null));
}
