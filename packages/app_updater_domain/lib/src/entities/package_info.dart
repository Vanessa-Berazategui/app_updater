import 'package:app_updater_domain/app_updater_domain.dart';

class PackageInfo extends BaseEntity {
  const PackageInfo({
    required this.name,
    required this.version,
  });

  final String name;
  final String version;

  @override
  List<Object?> get props => [
        name,
        version,
      ];
}

extension PackageInfoX on PackageInfo {
  String get data => '$name versión $version';
}
