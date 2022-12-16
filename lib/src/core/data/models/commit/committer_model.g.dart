// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'committer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitterModel _$$_CommitterModelFromJson(Map<String, dynamic> json) =>
    _$_CommitterModel(
      id: json['id'] as int?,
      avatarUrl: json['avatar_url'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_CommitterModelToJson(_$_CommitterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'email': instance.email,
      'date': instance.date,
    };
