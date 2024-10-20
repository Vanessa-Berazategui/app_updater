// Project imports:
import 'package:app_updater_domain/app_updater_domain.dart';

class CounterParams extends BaseEntity {
  const CounterParams({
    required this.value,
  });

  final int value;

  @override
  List<Object?> get props => [
        value,
      ];
}
