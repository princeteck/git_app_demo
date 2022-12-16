// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationModel _$VerificationModelFromJson(Map<String, dynamic> json) {
  return _VerificationModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationModel {
  @JsonKey(name: 'verified')
  bool? get verified => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationModelCopyWith<VerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationModelCopyWith<$Res> {
  factory $VerificationModelCopyWith(
          VerificationModel value, $Res Function(VerificationModel) then) =
      _$VerificationModelCopyWithImpl<$Res, VerificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'verified') bool? verified,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class _$VerificationModelCopyWithImpl<$Res, $Val extends VerificationModel>
    implements $VerificationModelCopyWith<$Res> {
  _$VerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationModelCopyWith<$Res>
    implements $VerificationModelCopyWith<$Res> {
  factory _$$_VerificationModelCopyWith(_$_VerificationModel value,
          $Res Function(_$_VerificationModel) then) =
      __$$_VerificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'verified') bool? verified,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class __$$_VerificationModelCopyWithImpl<$Res>
    extends _$VerificationModelCopyWithImpl<$Res, _$_VerificationModel>
    implements _$$_VerificationModelCopyWith<$Res> {
  __$$_VerificationModelCopyWithImpl(
      _$_VerificationModel _value, $Res Function(_$_VerificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verified = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_VerificationModel(
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationModel implements _VerificationModel {
  _$_VerificationModel(
      {@JsonKey(name: 'verified') this.verified,
      @JsonKey(name: 'reason') this.reason});

  factory _$_VerificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationModelFromJson(json);

  @override
  @JsonKey(name: 'verified')
  final bool? verified;
  @override
  @JsonKey(name: 'reason')
  final String? reason;

  @override
  String toString() {
    return 'VerificationModel(verified: $verified, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationModel &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, verified, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationModelCopyWith<_$_VerificationModel> get copyWith =>
      __$$_VerificationModelCopyWithImpl<_$_VerificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationModelToJson(
      this,
    );
  }
}

abstract class _VerificationModel implements VerificationModel {
  factory _VerificationModel(
      {@JsonKey(name: 'verified') final bool? verified,
      @JsonKey(name: 'reason') final String? reason}) = _$_VerificationModel;

  factory _VerificationModel.fromJson(Map<String, dynamic> json) =
      _$_VerificationModel.fromJson;

  @override
  @JsonKey(name: 'verified')
  bool? get verified;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationModelCopyWith<_$_VerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
