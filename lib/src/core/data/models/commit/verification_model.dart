import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_model.freezed.dart';
part 'verification_model.g.dart';

@freezed
class VerificationModel with _$VerificationModel {
  factory VerificationModel({
    @JsonKey(name: 'verified') bool? verified,
    @JsonKey(name: 'reason') String? reason,
  }) = _VerificationModel;
  factory VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationModelFromJson(json);
}
