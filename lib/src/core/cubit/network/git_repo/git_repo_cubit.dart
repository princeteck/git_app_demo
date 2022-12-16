import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/core/data/models/models.dart';
import 'package:git_app/src/core/data/repositories/repositories.dart';
import 'package:git_app/src/core/di/app_init.dart';
import 'package:git_app/src/storage/singleton_storage.dart';

import '../../../../constants/system/app_status.dart';
import '../../../data/models/commit/commit_model.dart';
import '../user/user_cubit.dart';

part 'git_repo_state.dart';

class GitRepoCubit extends Cubit<GitRepoState> {
  GitRepoCubit()
      : super(
          GitRepoState(
            repositories: const [],
            commits: const [],
            cubitStatus: Idle(),
          ),
        );
  final _client = GitRepoRepository();
  final SingletonStorage _singletonStorage = SingletonStorage();

  /// get all repos
  Future<void> fetchAllRepositories() async {
    if (state.cubitStatus is! Fetching) {
      try {
        var userCubit = AppInit.getIt<UserCubit>();
        var response = await _client.fetchRepositories(
          userName: _singletonStorage.userName ??
              userCubit.state.profile.login ??
              "freeCodeCamp",
        );
        var results = response
            .map<RepositoryModel>((e) => RepositoryModel.fromJson(e))
            .toList();

        if (_singletonStorage.isSearchProfile ?? false) {
          AppInit.getIt<UserCubit>().getOtherUserProfile();
        }

        emit(
          state.copyWith(
            repositories: results,
            cubitStatus: FetchingSucceed(),
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
        emit(state.copyWith(cubitStatus: ErrorWhileFetching()));
      } finally {
        _singletonStorage.isSearchProfile = false;
      }
    }
  }

  /// get all commits
  Future<void> fetchAllCommits({
    required String userName,
    required String repoName,
  }) async {
    if (state.cubitStatus is! Fetching) {
      emit(state.copyWith(
        commits: [],
        cubitStatus: Fetching(),
      ));
      try {
        var response = await _client.fetchAllCommits(
          userName: _singletonStorage.userName ??
              AppInit.getIt<UserCubit>().state.profile.login ??
              "freeCodeCamp",
          repoName: _singletonStorage.repoName ?? repoName,
        );
        var results =
            response.map<CommitModel>((e) => CommitModel.fromJson(e)).toList();
        emit(state.copyWith(
          commits: results,
          cubitStatus: FetchingSucceed(),
        ));
      } catch (e) {
        debugPrint(e.toString());
        emit(state.copyWith(cubitStatus: ErrorWhileFetching()));
      }
    }
  }
}
