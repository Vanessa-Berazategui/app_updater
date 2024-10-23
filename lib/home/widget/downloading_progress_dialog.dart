import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';

class DownloadingProgressDialog extends StatelessWidget {
  const DownloadingProgressDialog({
    required this.message,
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;

    final bloc = context.read<HomeBloc>();

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
        buildWhen: (previous, current) =>
            previous.downloadingIsDone != current.downloadingIsDone ||
            previous.downloadingProgress != current.downloadingProgress ||
            current.failure != null,
        listener: (context, state) {
          if (state.downloadingDialogOpened &&
              (state.downloadingIsDone || state.failure != null)) {
            bloc.downloadingDialogOpened(value: false);
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return LinearProgressIndicator(
            value: state.downloadingProgress / 100,
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
      builder: (dialogContext) => RepositoryProvider(
        create: (_) => bloc,
        child: DownloadingProgressDialog(
          message: message,
        ),
      ),
    );
  }
}
