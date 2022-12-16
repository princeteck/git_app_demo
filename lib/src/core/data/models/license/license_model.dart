import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_model.freezed.dart';
part 'license_model.g.dart';

@freezed
class LicenseModel with _$LicenseModel {
  factory LicenseModel({
    @JsonKey(name: 'key') String? key,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'spdx_id') String? spdxId,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'node_id') String? nodeId,
  }) = _LicenseModel;
  factory LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$LicenseModelFromJson(json);
}
