import 'package:app_updater_domain/app_updater_domain.dart';

class BackendInfo extends BaseEntity {
  const BackendInfo({
    required this.apkVersion,
    required this.apkUrl,
  });

  final String apkVersion;
  final String apkUrl;

  @override
  List<Object?> get props => [
        apkVersion,
        apkUrl,
      ];
}

extension BackendInfoX on BackendInfo {
  String get data => '$apkVersion versión y $apkUrl para descargar';
}
