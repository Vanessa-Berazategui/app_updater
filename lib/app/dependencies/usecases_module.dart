// Package imports:
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppUseCasesModule {
  //============================
  // Counter
  //============================
  @lazySingleton
  GetCounterUseCase getCounterUseCase(
    CounterRepository repository,
  ) =>
      GetCounterUseCase(repository: repository);

  @lazySingleton
  SaveCounterUseCase saveCounterUseCase(
    CounterRepository repository,
  ) =>
      SaveCounterUseCase(repository: repository);

  @lazySingleton
  QuizCounterUseCase quizCounterUseCase(
    CounterRepository repository,
  ) =>
      QuizCounterUseCase(repository: repository);
}
