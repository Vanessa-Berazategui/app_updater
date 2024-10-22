import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';
import 'package:go_router/go_router.dart';

class HomePage extends GoRoute {
  HomePage()
      : super(
          path: _path,
          name: route,
          builder: (context, state) => BlocProvider(
            create: (context) => getIt<HomeBloc>(),
            child: const HomeView(),
          ),
        );

  static const _path = '/home';

  static String get route => _path;

  static void open(BuildContext context) => context.go(route);
}
