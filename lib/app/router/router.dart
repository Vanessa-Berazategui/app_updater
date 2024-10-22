// Flutter imports:
import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
// Project imports:

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: HomePage.route,
  routes: [
    HomePage(),
  ],
  debugLogDiagnostics: kDebugMode,
);
