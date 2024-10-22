import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';

class InstallationProgressDialog extends StatelessWidget {
  const InstallationProgressDialog({
    required this.message,
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    return AlertDialog(
      contentPadding: const EdgeInsets.all(24),
      actionsPadding: const EdgeInsets.all(16),
      title: Text(
        message,
        style: texts.bodyMedium?.copyWith(
          color: colors.secondary,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          print(state.installationProgress);

          if (context.mounted && state.installationIsDone) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return LinearProgressIndicator(
            value: state.installationProgress / 100,
            backgroundColor: colors.surface,
            valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
          );
        },
      ),
    );
  }

  static Future<T?> open<T extends Object?>(
    BuildContext context, {
    required String message,
    required HomeBloc bloc,
  }) {
    return showDialog<T>(
      barrierDismissible: false,
      context: context,
      builder: (_) => RepositoryProvider(
        create: (_) => bloc,
        child: InstallationProgressDialog(
          message: message,
        ),
      ),
    );
  }
}
