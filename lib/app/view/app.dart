// Flutter imports:

// Project imports:
import 'package:app_updater/app/app.dart';
import 'package:app_updater/app/router/router.dart';
import 'package:app_updater/app/theme/material_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: getIt<MaterialTheme>().light(),
      darkTheme: getIt<MaterialTheme>().dark(),
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
