// Project imports:
import 'package:app_updater_domain/app_updater_domain.dart';

class GetPackageInfoUseCase implements BaseUseCase<PackageInfo, NoParams> {
  GetPackageInfoUseCase({
    required InformationRepository repository,
  }) : _repository = repository;

  final InformationRepository _repository;
  @override
  Future<Result<PackageInfo>> call(NoParams params) =>
      _repository.getPackageInfo();
}
