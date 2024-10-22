// Package imports:

// Project imports:
import 'package:app_updater/app/app.dart';
// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        //   localizationsDelegates: AppLocalizations.localizationsDelegates,
        //  supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
