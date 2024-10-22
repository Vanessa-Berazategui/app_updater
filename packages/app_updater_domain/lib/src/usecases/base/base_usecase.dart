// Project imports:
import 'package:app_updater_domain/app_updater_domain.dart';
// Package imports:
import 'package:meta/meta.dart';

@immutable
abstract class BaseUseCase<Type, Params extends BaseEntity> {
  const BaseUseCase();

  Future<Result<Type>> call(Params params);
}
