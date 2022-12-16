// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'committer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitterModel _$CommitterModelFromJson(Map<String, dynamic> json) {
  return _CommitterModel.fromJson(json);
}

/// @nodoc
mixin _$CommitterModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitterModelCopyWith<CommitterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitterModelCopyWith<$Res> {
  factory $CommitterModelCopyWith(
          CommitterModel value, $Res Function(CommitterModel) then) =
      _$CommitterModelCopyWithImpl<$Res, CommitterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class _$CommitterModelCopyWithImpl<$Res, $Val extends CommitterModel>
    implements $CommitterModelCopyWith<$Res> {
  _$CommitterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommitterModelCopyWith<$Res>
    implements $CommitterModelCopyWith<$Res> {
  factory _$$_CommitterModelCopyWith(
          _$_CommitterModel value, $Res Function(_$_CommitterModel) then) =
      __$$_CommitterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class __$$_CommitterModelCopyWithImpl<$Res>
    extends _$CommitterModelCopyWithImpl<$Res, _$_CommitterModel>
    implements _$$_CommitterModelCopyWith<$Res> {
  __$$_CommitterModelCopyWithImpl(
      _$_CommitterModel _value, $Res Function(_$_CommitterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_CommitterModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitterModel implements _CommitterModel {
  _$_CommitterModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'date') this.date});

  factory _$_CommitterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitterModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'date')
  final String? date;

  @override
  String toString() {
    return 'CommitterModel(id: $id, avatarUrl: $avatarUrl, name: $name, email: $email, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarUrl, name, email, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitterModelCopyWith<_$_CommitterModel> get copyWith =>
      __$$_CommitterModelCopyWithImpl<_$_CommitterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitterModelToJson(
      this,
    );
  }
}

abstract class _CommitterModel implements CommitterModel {
  factory _CommitterModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'date') final String? date}) = _$_CommitterModel;

  factory _CommitterModel.fromJson(Map<String, dynamic> json) =
      _$_CommitterModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_CommitterModelCopyWith<_$_CommitterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
