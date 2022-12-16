import 'package:freezed_annotation/freezed_annotation.dart';

import 'author_model.dart';
import 'committer_model.dart';
import 'verification_model.dart';

part 'commit_base_model.freezed.dart';
part 'commit_base_model.g.dart';

@freezed
class CommitBaseModel with _$CommitBaseModel {
  factory CommitBaseModel({
    @JsonKey(name: 'author') AuthorModel? author,
    @JsonKey(name: 'committer') CommitterModel? committer,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'comment_count') int? commentCount,
    @JsonKey(name: 'verification') VerificationModel? verification,
  }) = _CommitBaseModel;
  factory CommitBaseModel.fromJson(Map<String, dynamic> json) =>
      _$CommitBaseModelFromJson(json);
}
