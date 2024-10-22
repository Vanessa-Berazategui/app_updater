// Package imports:
// Project imports:
import 'package:app_updater_data/src/models/base/base_model.dart';
import 'package:app_updater_domain/app_updater_domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'backend_info_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BackendInfoModel extends BackendInfo implements BaseModel {
  const BackendInfoModel({
    required super.apkVersion,
    required super.apkUrl,
  });

  factory BackendInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BackendInfoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BackendInfoModelToJson(this);
}
