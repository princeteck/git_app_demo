import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_app/src/core/data/models/commit/commit_model.dart';

part 'parent_commit_model.freezed.dart';
part 'parent_commit_model.g.dart';

@freezed
class ParentCommitModel with _$ParentCommitModel {
  factory ParentCommitModel({
    @JsonKey(name: 'sha') String? sha,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'commit') CommitModel? commit,
  }) = _ParentCommitModel;
  factory ParentCommitModel.fromJson(Map<String, dynamic> json) =>
      _$ParentCommitModelFromJson(json);
}
