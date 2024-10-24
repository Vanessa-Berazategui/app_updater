// Package imports:

// Project imports:
import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';
import 'package:app_updater/main_development.dart' as app;
// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  group('App', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('Integration App Test', (tester) async {
      // Load app
      app.main();
      await tester.pumpAndSettle();
      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text('0'), findsOneWidget);

      // Tap increment
      await tester.tap(find.byIcon(Icons.add));
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);

      // Tap decrement
      await tester.tap(find.byIcon(Icons.remove));
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);

      // Tap quiz
      await tester.tap(find.byIcon(Icons.quiz));
      await Future<void>.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('quiz')), findsOneWidget);
    });
  });
}
