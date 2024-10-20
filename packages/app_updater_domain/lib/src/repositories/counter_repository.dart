// Project imports:
import 'package:app_updater_domain/app_updater_domain.dart';

abstract interface class CounterRepository extends BaseRepository {
  Future<Result<int>> getCounter(NoParams params);

  Future<Result<void>> saveCounter(CounterParams params);

  Future<Result<String>> quizCounter(CounterParams params);
}
