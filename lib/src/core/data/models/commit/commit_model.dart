import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_app/src/core/data/models/commit/author_model.dart';

import 'commit_base_model.dart';
import 'committer_model.dart';
import 'parent_commit_model.dart';

part 'commit_model.freezed.dart';
part 'commit_model.g.dart';

@freezed
class CommitModel with _$CommitModel {
  factory CommitModel({
    @JsonKey(name: 'sha') String? sha,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'commit') CommitBaseModel? commit,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'comments_url') String? commentsUrl,
    @JsonKey(name: 'author') AuthorModel? author,
    @JsonKey(name: 'committer') CommitterModel? committer,
    @JsonKey(name: 'parents') List<ParentCommitModel>? parents,
  }) = _CommitModel;
  factory CommitModel.fromJson(Map<String, dynamic> json) =>
      _$CommitModelFromJson(json);
}
