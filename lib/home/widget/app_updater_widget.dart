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
          previous.loadingBackendInfo != current.loadingBackendInfo,
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
                Text('${l10n.newAppInfo} ${state.backendInfo!.apkVersion}'),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: state.loading ? null : bloc.updateApp,
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
        return const Text('No hay actualizaciones disponibles');
      },
      listener: (BuildContext context, HomeState state) {},
    );
  }
}
