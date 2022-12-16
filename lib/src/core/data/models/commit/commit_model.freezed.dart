// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommitModel _$CommitModelFromJson(Map<String, dynamic> json) {
  return _CommitModel.fromJson(json);
}

/// @nodoc
mixin _$CommitModel {
  @JsonKey(name: 'sha')
  String? get sha => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'commit')
  CommitBaseModel? get commit => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_url')
  String? get commentsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  AuthorModel? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'committer')
  CommitterModel? get committer => throw _privateConstructorUsedError;
  @JsonKey(name: 'parents')
  List<ParentCommitModel>? get parents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitModelCopyWith<CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitModelCopyWith<$Res> {
  factory $CommitModelCopyWith(
          CommitModel value, $Res Function(CommitModel) then) =
      _$CommitModelCopyWithImpl<$Res, CommitModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sha') String? sha,
      @JsonKey(name: 'node_id') String? nodeId,
      @JsonKey(name: 'commit') CommitBaseModel? commit,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'comments_url') String? commentsUrl,
      @JsonKey(name: 'author') AuthorModel? author,
      @JsonKey(name: 'committer') CommitterModel? committer,
      @JsonKey(name: 'parents') List<ParentCommitModel>? parents});

  $CommitBaseModelCopyWith<$Res>? get commit;
  $AuthorModelCopyWith<$Res>? get author;
  $CommitterModelCopyWith<$Res>? get committer;
}

/// @nodoc
class _$CommitModelCopyWithImpl<$Res, $Val extends CommitModel>
    implements $CommitModelCopyWith<$Res> {
  _$CommitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sha = freezed,
    Object? nodeId = freezed,
    Object? commit = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? commentsUrl = freezed,
    Object? author = freezed,
    Object? committer = freezed,
    Object? parents = freezed,
  }) {
    return _then(_value.copyWith(
      sha: freezed == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitBaseModel?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsUrl: freezed == commentsUrl
          ? _value.commentsUrl
          : commentsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel?,
      committer: freezed == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as CommitterModel?,
      parents: freezed == parents
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<ParentCommitModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitBaseModelCopyWith<$Res>? get commit {
    if (_value.commit == null) {
      return null;
    }

    return $CommitBaseModelCopyWith<$Res>(_value.commit!, (value) {
      return _then(_value.copyWith(commit: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$_CommitModelCopyWith<$Res>
    implements $CommitModelCopyWith<$Res> {
  factory _$$_CommitModelCopyWith(
          _$_CommitModel value, $Res Function(_$_CommitModel) then) =
      __$$_CommitModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sha') String? sha,
      @JsonKey(name: 'node_id') String? nodeId,
      @JsonKey(name: 'commit') CommitBaseModel? commit,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'html_url') String? htmlUrl,
      @JsonKey(name: 'comments_url') String? commentsUrl,
      @JsonKey(name: 'author') AuthorModel? author,
      @JsonKey(name: 'committer') CommitterModel? committer,
      @JsonKey(name: 'parents') List<ParentCommitModel>? parents});

  @override
  $CommitBaseModelCopyWith<$Res>? get commit;
  @override
  $AuthorModelCopyWith<$Res>? get author;
  @override
  $CommitterModelCopyWith<$Res>? get committer;
}

/// @nodoc
class __$$_CommitModelCopyWithImpl<$Res>
    extends _$CommitModelCopyWithImpl<$Res, _$_CommitModel>
    implements _$$_CommitModelCopyWith<$Res> {
  __$$_CommitModelCopyWithImpl(
      _$_CommitModel _value, $Res Function(_$_CommitModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sha = freezed,
    Object? nodeId = freezed,
    Object? commit = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? commentsUrl = freezed,
    Object? author = freezed,
    Object? committer = freezed,
    Object? parents = freezed,
  }) {
    return _then(_$_CommitModel(
      sha: freezed == sha
          ? _value.sha
          : sha // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitBaseModel?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsUrl: freezed == commentsUrl
          ? _value.commentsUrl
          : commentsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorModel?,
      committer: freezed == committer
          ? _value.committer
          : committer // ignore: cast_nullable_to_non_nullable
              as CommitterModel?,
      parents: freezed == parents
          ? _value._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<ParentCommitModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommitModel implements _CommitModel {
  _$_CommitModel(
      {@JsonKey(name: 'sha') this.sha,
      @JsonKey(name: 'node_id') this.nodeId,
      @JsonKey(name: 'commit') this.commit,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'html_url') this.htmlUrl,
      @JsonKey(name: 'comments_url') this.commentsUrl,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'committer') this.committer,
      @JsonKey(name: 'parents') final List<ParentCommitModel>? parents})
      : _parents = parents;

  factory _$_CommitModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommitModelFromJson(json);

  @override
  @JsonKey(name: 'sha')
  final String? sha;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;
  @override
  @JsonKey(name: 'commit')
  final CommitBaseModel? commit;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  @JsonKey(name: 'comments_url')
  final String? commentsUrl;
  @override
  @JsonKey(name: 'author')
  final AuthorModel? author;
  @override
  @JsonKey(name: 'committer')
  final CommitterModel? committer;
  final List<ParentCommitModel>? _parents;
  @override
  @JsonKey(name: 'parents')
  List<ParentCommitModel>? get parents {
    final value = _parents;
    if (value == null) return null;
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommitModel(sha: $sha, nodeId: $nodeId, commit: $commit, url: $url, htmlUrl: $htmlUrl, commentsUrl: $commentsUrl, author: $author, committer: $committer, parents: $parents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommitModel &&
            (identical(other.sha, sha) || other.sha == sha) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.commit, commit) || other.commit == commit) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.commentsUrl, commentsUrl) ||
                other.commentsUrl == commentsUrl) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.committer, committer) ||
                other.committer == committer) &&
            const DeepCollectionEquality().equals(other._parents, _parents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sha,
      nodeId,
      commit,
      url,
      htmlUrl,
      commentsUrl,
      author,
      committer,
      const DeepCollectionEquality().hash(_parents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommitModelCopyWith<_$_CommitModel> get copyWith =>
      __$$_CommitModelCopyWithImpl<_$_CommitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommitModelToJson(
      this,
    );
  }
}

abstract class _CommitModel implements CommitModel {
  factory _CommitModel(
          {@JsonKey(name: 'sha') final String? sha,
          @JsonKey(name: 'node_id') final String? nodeId,
          @JsonKey(name: 'commit') final CommitBaseModel? commit,
          @JsonKey(name: 'url') final String? url,
          @JsonKey(name: 'html_url') final String? htmlUrl,
          @JsonKey(name: 'comments_url') final String? commentsUrl,
          @JsonKey(name: 'author') final AuthorModel? author,
          @JsonKey(name: 'committer') final CommitterModel? committer,
          @JsonKey(name: 'parents') final List<ParentCommitModel>? parents}) =
      _$_CommitModel;

  factory _CommitModel.fromJson(Map<String, dynamic> json) =
      _$_CommitModel.fromJson;

  @override
  @JsonKey(name: 'sha')
  String? get sha;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  @JsonKey(name: 'commit')
  CommitBaseModel? get commit;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(name: 'comments_url')
  String? get commentsUrl;
  @override
  @JsonKey(name: 'author')
  AuthorModel? get author;
  @override
  @JsonKey(name: 'committer')
  CommitterModel? get committer;
  @override
  @JsonKey(name: 'parents')
  List<ParentCommitModel>? get parents;
  @override
  @JsonKey(ignore: true)
  _$$_CommitModelCopyWith<_$_CommitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
