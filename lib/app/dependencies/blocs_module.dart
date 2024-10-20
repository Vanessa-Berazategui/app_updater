// Project imports:

// Package imports:
import 'package:flutter_ddd_skeleton_monorepo/counter/counter.dart';
import 'package:app_updater_domain/app_updater_domain.dart';

import 'package:injectable/injectable.dart';

@module
abstract class AppBlocsModule {
  /// Global blocs

  /// Page View Blocs
  CounterBloc counterBloc(
    SaveCounterUseCase saveCounterUseCase,
    GetCounterUseCase getCounterUseCase,
    QuizCounterUseCase quizCounterUseCase,
  ) =>
      CounterBloc(
        saveCounterUseCase: saveCounterUseCase,
        getCounterUseCase: getCounterUseCase,
        quizCounterUseCase: quizCounterUseCase,
      );
}
