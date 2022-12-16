import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'blog') String? blog,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'twitter_username') String? twitterUsername,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'public_repos') int? publicRepos,
    @JsonKey(name: 'total_private_repos') int? totalPrivateRepos,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
