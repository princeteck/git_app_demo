// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitModel _$$_CommitModelFromJson(Map<String, dynamic> json) =>
    _$_CommitModel(
      sha: json['sha'] as String?,
      nodeId: json['node_id'] as String?,
      commit: json['commit'] == null
          ? null
          : CommitBaseModel.fromJson(json['commit'] as Map<String, dynamic>),
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      commentsUrl: json['comments_url'] as String?,
      author: json['author'] == null
          ? null
          : AuthorModel.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : CommitterModel.fromJson(json['committer'] as Map<String, dynamic>),
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) => ParentCommitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommitModelToJson(_$_CommitModel instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'node_id': instance.nodeId,
      'commit': instance.commit,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'comments_url': instance.commentsUrl,
      'author': instance.author,
      'committer': instance.committer,
      'parents': instance.parents,
    };
