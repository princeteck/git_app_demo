// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_commit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParentCommitModel _$$_ParentCommitModelFromJson(Map<String, dynamic> json) =>
    _$_ParentCommitModel(
      sha: json['sha'] as String?,
      url: json['url'] as String?,
      htmlUrl: json['html_url'] as String?,
      commit: json['commit'] == null
          ? null
          : CommitModel.fromJson(json['commit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ParentCommitModelToJson(
        _$_ParentCommitModel instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'commit': instance.commit,
    };
