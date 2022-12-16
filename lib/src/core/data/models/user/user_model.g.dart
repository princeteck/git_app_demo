// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      login: json['login'] as String?,
      blog: json['blog'] as String?,
      bio: json['bio'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      location: json['location'] as String?,
      publicRepos: json['public_repos'] as int?,
      totalPrivateRepos: json['total_private_repos'] as int?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'login': instance.login,
      'blog': instance.blog,
      'bio': instance.bio,
      'twitter_username': instance.twitterUsername,
      'location': instance.location,
      'public_repos': instance.publicRepos,
      'total_private_repos': instance.totalPrivateRepos,
    };
