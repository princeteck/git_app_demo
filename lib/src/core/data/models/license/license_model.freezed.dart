// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LicenseModel _$LicenseModelFromJson(Map<String, dynamic> json) {
  return _LicenseModel.fromJson(json);
}

/// @nodoc
mixin _$LicenseModel {
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'spdx_id')
  String? get spdxId => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseModelCopyWith<LicenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseModelCopyWith<$Res> {
  factory $LicenseModelCopyWith(
          LicenseModel value, $Res Function(LicenseModel) then) =
      _$LicenseModelCopyWithImpl<$Res, LicenseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'spdx_id') String? spdxId,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'node_id') String? nodeId});
}

/// @nodoc
class _$LicenseModelCopyWithImpl<$Res, $Val extends LicenseModel>
    implements $LicenseModelCopyWith<$Res> {
  _$LicenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? spdxId = freezed,
    Object? url = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LicenseModelCopyWith<$Res>
    implements $LicenseModelCopyWith<$Res> {
  factory _$$_LicenseModelCopyWith(
          _$_LicenseModel value, $Res Function(_$_LicenseModel) then) =
      __$$_LicenseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'spdx_id') String? spdxId,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'node_id') String? nodeId});
}

/// @nodoc
class __$$_LicenseModelCopyWithImpl<$Res>
    extends _$LicenseModelCopyWithImpl<$Res, _$_LicenseModel>
    implements _$$_LicenseModelCopyWith<$Res> {
  __$$_LicenseModelCopyWithImpl(
      _$_LicenseModel _value, $Res Function(_$_LicenseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? spdxId = freezed,
    Object? url = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_$_LicenseModel(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      spdxId: freezed == spdxId
          ? _value.spdxId
          : spdxId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LicenseModel implements _LicenseModel {
  _$_LicenseModel(
      {@JsonKey(name: 'key') this.key,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'spdx_id') this.spdxId,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'node_id') this.nodeId});

  factory _$_LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LicenseModelFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'spdx_id')
  final String? spdxId;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;

  @override
  String toString() {
    return 'LicenseModel(key: $key, name: $name, spdxId: $spdxId, url: $url, nodeId: $nodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicenseModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.spdxId, spdxId) || other.spdxId == spdxId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, spdxId, url, nodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LicenseModelCopyWith<_$_LicenseModel> get copyWith =>
      __$$_LicenseModelCopyWithImpl<_$_LicenseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LicenseModelToJson(
      this,
    );
  }
}

abstract class _LicenseModel implements LicenseModel {
  factory _LicenseModel(
      {@JsonKey(name: 'key') final String? key,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'spdx_id') final String? spdxId,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'node_id') final String? nodeId}) = _$_LicenseModel;

  factory _LicenseModel.fromJson(Map<String, dynamic> json) =
      _$_LicenseModel.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'spdx_id')
  String? get spdxId;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  @JsonKey(ignore: true)
  _$$_LicenseModelCopyWith<_$_LicenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
