import 'package:freezed_annotation/freezed_annotation.dart';

part 'committer_model.freezed.dart';
part 'committer_model.g.dart';

@freezed
class CommitterModel with _$CommitterModel {
  factory CommitterModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'date') String? date,
  }) = _CommitterModel;
  factory CommitterModel.fromJson(Map<String, dynamic> json) =>
      _$CommitterModelFromJson(json);
}
