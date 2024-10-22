import 'package:app_updater_data/src/models/base/base_model.dart';
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'package_info_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PackageInfoModel extends PackageInfo implements BaseModel {
  const PackageInfoModel({
    required super.name,
    required super.version,
  });

  factory PackageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PackageInfoModelToJson(this);
}
