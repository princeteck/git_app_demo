// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitBaseModel _$$_CommitBaseModelFromJson(Map<String, dynamic> json) =>
    _$_CommitBaseModel(
      author: json['author'] == null
          ? null
          : AuthorModel.fromJson(json['author'] as Map<String, dynamic>),
      committer: json['committer'] == null
          ? null
          : CommitterModel.fromJson(json['committer'] as Map<String, dynamic>),
      message: json['message'] as String?,
      commentCount: json['comment_count'] as int?,
      verification: json['verification'] == null
          ? null
          : VerificationModel.fromJson(
              json['verification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommitBaseModelToJson(_$_CommitBaseModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
      'comment_count': instance.commentCount,
      'verification': instance.verification,
    };
