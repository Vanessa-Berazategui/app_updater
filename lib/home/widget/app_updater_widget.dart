import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';

class AppUpdaterWidget extends StatelessWidget {
  const AppUpdaterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;
    final texts = context.texts;

    final bloc = context.read<HomeBloc>();

    return BlocConsumer<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.loadingPackageInfo != current.loadingPackageInfo ||
          previous.loadingBackendInfo != current.loadingBackendInfo ||
          previous.connectivity != current.connectivity,
      builder: (context, state) {
        if (state.updateApp) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: colors.primary),
            ),
            child: Column(
              children: [
                Text(
                  '${l10n.newAppInfo} ${state.backendInfo!.apkVersion}',
                  style: texts.bodyMedium?.copyWith(
                    color: colors.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: (state.loading || !state.hasConnection())
                      ? null
                      : bloc.downloadUpdate,
                  child: Text(
                    l10n.btnUpdateApp.toUpperCase(),
                    style: texts.bodyMedium!.copyWith(
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Text(
          l10n.noAvailableUpdates,
          style: texts.bodyMedium?.copyWith(
            color: colors.secondary,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        );
      },
      listener: (BuildContext context, HomeState state) {},
    );
  }
}
