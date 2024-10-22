import 'package:app_updater/app/app.dart';
import 'package:app_updater/app/view/app_blocking_loading_widget.dart';
import 'package:app_updater/home/home.dart';
import 'package:app_updater/home/widget/app_updater_widget.dart';
import 'package:app_updater_domain/app_updater_domain.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final l10n = context.l10n;
    final texts = context.texts;
    var statusDialogOpened = false;

    final bloc = context.read<HomeBloc>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.onPrimary,
        body: BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              current.failure != null || current.installingUpdate,
          listener: (context, state) {
            if (state.failure != null) {
              context.showErrorMessage(state.failure!.errorMessage);
              return bloc.cleanFailure();
            }

            if (state.installingUpdate) {
              if (!statusDialogOpened) {
                statusDialogOpened = true;
                InstallationProgressDialog.open(
                  context,
                  bloc: bloc,
                  message: 'Descargando, por favor espere ... ',
                ).then((value) => statusDialogOpened = false);
              }
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) =>
                  previous.loadingPackageInfo != current.loadingPackageInfo ||
                  previous.loadingBackendInfo != current.loadingBackendInfo,
              builder: (context, state) {
                return Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.informationAbout,
                          style: texts.titleLarge!.copyWith(
                            color: colors.inversePrimary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Divider(
                            thickness: 1,
                            color: colors.inversePrimary,
                          ),
                        ),
                        const APKInformationWidget(),
                        const SizedBox(height: 20),
                        const BackendInformationWidget(),
                        const SizedBox(height: 20),
                        const Align(child: AppUpdaterWidget()),
                        const SizedBox(height: 20),
                        const Spacer(),
                        Align(
                          child: ElevatedButton(
                            onPressed: state.loading ? null : bloc.loadData,
                            child: Text(
                              l10n.btnCheckUpdates.toUpperCase(),
                              style: texts.bodyMedium!.copyWith(
                                color: colors.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (state.loading) const AppBlockingLoadingWidget(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
