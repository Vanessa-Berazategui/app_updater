import 'package:app_updater/app/app.dart';
import 'package:app_updater/home/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class APKInformationWidget extends StatelessWidget {
  const APKInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final texts = context.texts;
    final colors = context.colors;

    final bloc = context.read<HomeBloc>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.phone_android_sharp,
          size: 22,
          color: colors.primary,
        ),
        const SizedBox(width: 17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.informationPackageVersion,
              style: texts.titleMedium!.copyWith(
                color: colors.primary,
              ),
            ),
            const SizedBox(height: 7),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) =>
                  previous.loadingPackageInfo != current.loadingPackageInfo,
              builder: (context, state) =>
                  state.loadingPackageInfo && state.packageInfo == null
                      ? SpinKitRing(
                          size: 18,
                          lineWidth: 2,
                          color: colors.secondary,
                        )
                      : Text(
                          bloc.state.packageInfo?.version ?? '---',
                          style: texts.titleSmall!.copyWith(
                            color: colors.secondary,
                          ),
                        ),
            ),
          ],
        ),
      ],
    );
  }
}
