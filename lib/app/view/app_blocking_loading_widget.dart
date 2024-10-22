// Project imports:

import 'package:app_updater/app/app.dart';

class AppBlockingLoadingWidget extends StatelessWidget {
  const AppBlockingLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final colors = context.colors;

    return ColoredBox(
      color: theme.scaffoldBackgroundColor.withOpacity(0.6),
      child: Center(
        child: CircularProgressIndicator(
          color: colors.primary,
        ),
      ),
    );
  }
}
