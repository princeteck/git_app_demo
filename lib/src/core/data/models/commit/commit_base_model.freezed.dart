// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitBaseModel _$CommitBaseModelFromJson(Map<String, dynamic> json) {
  return _CommitBaseModel.fromJson(json);
}

/// @nodoc
mixin _$CommitBaseModel {
  @JsonKey(name: 'author')
  AuthorModel? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'committer')
  CommitterModel? get committer => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification')
  VerificationModel? get verification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitBaseModelCopyWith<CommitBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitBaseModelCopyWith<$Res> {
  factory $CommitBaseModelCopyWith(
          CommitBaseModel value, $Res Function(CommitBaseModel) then) =
      _$CommitBaseModelCopyWithImpl<$Res, CommitBaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'author') AuthorModel? author,
      @JsonKey(name: 'committer') CommitterModel? committer,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'verification') VerificationModel? verification});

  $AuthorModelCopyWith<$Res>? get author;
  $CommitterModelCopyWith<$Res>? get committer;
  $VerificationModelCopyWith<$Res>? get verification;
}

/// @nodoc
class _$CommitBaseModelCopyWithImpl<$Res, $Val extends CommitBaseModel>
    implements $CommitBaseModelCopyWith<$Res> {
  _$CommitBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? committer = freezed,
    Object? message = freezed,
    Object? commentCount = freezed,
    Object? verification = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel?,
      committer: freezed == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as CommitterModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorModelCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorModelCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitterModelCopyWith<$Res>? get committer {
    if (_value.committer == null) {
      return null;
    }

    return $CommitterModelCopyWith<$Res>(_value.committer!, (value) {
      return _then(_value.copyWith(committer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationModelCopyWith<$Res>? get verification {
    if (_value.verification == null) {
      return null;
    }

    return $VerificationModelCopyWith<$Res>(_value.verification!, (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommitBaseModelCopyWith<$Res>
    implements $CommitBaseModelCopyWith<$Res> {
  factory _$$_CommitBaseModelCopyWith(
          _$_CommitBaseModel value, $Res Function(_$_CommitBaseModel) then) =
      __$$_CommitBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'author') AuthorModel? author,
      @JsonKey(name: 'committer') CommitterModel? committer,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'verification') VerificationModel? verification});

  @override
  $AuthorModelCopyWith<$Res>? get author;
  @override
  $CommitterModelCopyWith<$Res>? get committer;
  @override
  $VerificationModelCopyWith<$Res>? get verification;
}

/// @nodoc
class __$$_CommitBaseModelCopyWithImpl<$Res>
    extends _$CommitBaseModelCopyWithImpl<$Res, _$_CommitBaseModel>
    implements _$$_CommitBaseModelCopyWith<$Res> {
  __$$_CommitBaseModelCopyWithImpl(
      _$_CommitBaseModel _value, $Res Function(_$_CommitBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? committer = freezed,
    Object? message = freezed,
    Object? commentCount = freezed,
    Object? verification = freezed,
  }) {
    return _then(_$_CommitBaseModel(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel?,
      committer: freezed == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as CommitterModel?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      verification: freezed == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitBaseModel implements _CommitBaseModel {
  _$_CommitBaseModel(
      {@JsonKey(name: 'author') this.author,
      @JsonKey(name: 'committer') this.committer,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'verification') this.verification});

  factory _$_CommitBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitBaseModelFromJson(json);

  @override
  @JsonKey(name: 'author')
  final AuthorModel? author;
  @override
  @JsonKey(name: 'committer')
  final CommitterModel? committer;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'verification')
  final VerificationModel? verification;

  @override
  String toString() {
    return 'CommitBaseModel(author: $author, committer: $committer, message: $message, commentCount: $commentCount, verification: $verification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitBaseModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.committer, committer) ||
                other.committer == committer) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.verification, verification) ||
                other.verification == verification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, author, committer, message, commentCount, verification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitBaseModelCopyWith<_$_CommitBaseModel> get copyWith =>
      __$$_CommitBaseModelCopyWithImpl<_$_CommitBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitBaseModelToJson(
      this,
    );
  }
}

abstract class _CommitBaseModel implements CommitBaseModel {
  factory _CommitBaseModel(
      {@JsonKey(name: 'author')
          final AuthorModel? author,
      @JsonKey(name: 'committer')
          final CommitterModel? committer,
      @JsonKey(name: 'message')
          final String? message,
      @JsonKey(name: 'comment_count')
          final int? commentCount,
      @JsonKey(name: 'verification')
          final VerificationModel? verification}) = _$_CommitBaseModel;

  factory _CommitBaseModel.fromJson(Map<String, dynamic> json) =
      _$_CommitBaseModel.fromJson;

  @override
  @JsonKey(name: 'author')
  AuthorModel? get author;
  @override
  @JsonKey(name: 'committer')
  CommitterModel? get committer;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'verification')
  VerificationModel? get verification;
  @override
  @JsonKey(ignore: true)
  _$$_CommitBaseModelCopyWith<_$_CommitBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
