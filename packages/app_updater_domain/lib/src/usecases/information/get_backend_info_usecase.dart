import 'package:app_updater_domain/app_updater_domain.dart';

class GetBackendInfoUseCase implements BaseUseCase<BackendInfo, NoParams> {
  GetBackendInfoUseCase({
    required InformationRepository repository,
  }) : _repository = repository;

  final InformationRepository _repository;
  @override
  Future<Result<BackendInfo>> call(NoParams params) =>
      _repository.getBackendInfo();
}
