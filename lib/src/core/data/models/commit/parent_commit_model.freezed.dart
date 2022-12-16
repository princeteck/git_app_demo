// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_commit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParentCommitModel _$ParentCommitModelFromJson(Map<String, dynamic> json) {
  return _ParentCommitModel.fromJson(json);
}

/// @nodoc
mixin _$ParentCommitModel {
  @JsonKey(name: 'sha')
  String? get sha => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'commit')
  CommitModel? get commit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCommitModelCopyWith<ParentCommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCommitModelCopyWith<$Res> {
  factory $ParentCommitModelCopyWith(
          ParentCommitModel value, $Res Function(ParentCommitModel) then) =
      _$ParentCommitModelCopyWithImpl<$Res, ParentCommitModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sha') String? sha,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'commit') CommitModel? commit});

  $CommitModelCopyWith<$Res>? get commit;
}

/// @nodoc
class _$ParentCommitModelCopyWithImpl<$Res, $Val extends ParentCommitModel>
    implements $ParentCommitModelCopyWith<$Res> {
  _$ParentCommitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sha = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? commit = freezed,
  }) {
    return _then(_value.copyWith(
      sha: freezed == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitModelCopyWith<$Res>? get commit {
    if (_value.commit == null) {
      return null;
    }

    return $CommitModelCopyWith<$Res>(_value.commit!, (value) {
      return _then(_value.copyWith(commit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ParentCommitModelCopyWith<$Res>
    implements $ParentCommitModelCopyWith<$Res> {
  factory _$$_ParentCommitModelCopyWith(_$_ParentCommitModel value,
          $Res Function(_$_ParentCommitModel) then) =
      __$$_ParentCommitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sha') String? sha,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'commit') CommitModel? commit});

  @override
  $CommitModelCopyWith<$Res>? get commit;
}

/// @nodoc
class __$$_ParentCommitModelCopyWithImpl<$Res>
    extends _$ParentCommitModelCopyWithImpl<$Res, _$_ParentCommitModel>
    implements _$$_ParentCommitModelCopyWith<$Res> {
  __$$_ParentCommitModelCopyWithImpl(
      _$_ParentCommitModel _value, $Res Function(_$_ParentCommitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sha = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? commit = freezed,
  }) {
    return _then(_$_ParentCommitModel(
      sha: freezed == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParentCommitModel implements _ParentCommitModel {
  _$_ParentCommitModel(
      {@JsonKey(name: 'sha') this.sha,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'html_url') this.htmlUrl,
      @JsonKey(name: 'commit') this.commit});

  factory _$_ParentCommitModel.fromJson(Map<String, dynamic> json) =>
      _$$_ParentCommitModelFromJson(json);

  @override
  @JsonKey(name: 'sha')
  final String? sha;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  @JsonKey(name: 'commit')
  final CommitModel? commit;

  @override
  String toString() {
    return 'ParentCommitModel(sha: $sha, url: $url, htmlUrl: $htmlUrl, commit: $commit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParentCommitModel &&
            (identical(other.sha, sha) || other.sha == sha) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.commit, commit) || other.commit == commit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sha, url, htmlUrl, commit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParentCommitModelCopyWith<_$_ParentCommitModel> get copyWith =>
      __$$_ParentCommitModelCopyWithImpl<_$_ParentCommitModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParentCommitModelToJson(
      this,
    );
  }
}

abstract class _ParentCommitModel implements ParentCommitModel {
  factory _ParentCommitModel(
          {@JsonKey(name: 'sha') final String? sha,
          @JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'html_url') final String? htmlUrl,
          @JsonKey(name: 'commit') final CommitModel? commit}) =
      _$_ParentCommitModel;

  factory _ParentCommitModel.fromJson(Map<String, dynamic> json) =
      _$_ParentCommitModel.fromJson;

  @override
  @JsonKey(name: 'sha')
  String? get sha;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(name: 'commit')
  CommitModel? get commit;
  @override
  @JsonKey(ignore: true)
  _$$_ParentCommitModelCopyWith<_$_ParentCommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
