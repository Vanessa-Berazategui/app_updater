// Project imports:
import 'package:app_updater_domain/src/params/counter_params.dart';
import 'package:app_updater_domain/src/repositories/counter_repository.dart';
import 'package:app_updater_domain/src/result/result.dart';
import 'package:app_updater_domain/src/usecases/usecases.dart';

class QuizCounterUseCase implements BaseUseCase<void, CounterParams> {
  const QuizCounterUseCase({
    required CounterRepository repository,
  }) : _repository = repository;

  final CounterRepository _repository;

  @override
  Future<Result<String>> call(CounterParams params) =>
      _repository.quizCounter(params);
}
