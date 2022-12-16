import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_model.freezed.dart';
part 'author_model.g.dart';

@freezed
class AuthorModel with _$AuthorModel {
  factory AuthorModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'date') String? date,
  }) = _AuthorModel;
  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
