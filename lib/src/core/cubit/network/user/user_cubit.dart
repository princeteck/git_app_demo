import 'package:bot_toast/bot_toast.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/core/data/models/user/user_model.dart';
import 'package:git_app/src/core/data/repositories/repositories.dart';

import '../../../../constants/system/app_status.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit()
      : super(
          UserState(
            cubitStatus: Idle(),
            profile: UserModel(),
          ),
        );
  final _client = UserRepository();

  /// Get User Profile
  Future<void> getUserProfile() async {
    if (state.cubitStatus is! Fetching) {
      BotToast.showLoading();
      try {
        var response = await _client.fetchUserProfile();
        var user = UserModel.fromJson(response);
        emit(
          state.copyWith(
            profile: user,
            cubitStatus: FetchingSucceed(),
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
        emit(state.copyWith(cubitStatus: ErrorWhileFetching()));
      } finally {
        BotToast.cleanAll();
      }
    }
  }

  /// Get User Profile
  Future<void> getOtherUserProfile() async {
    if (state.cubitStatus is! Fetching) {
      try {
        BotToast.showLoading();
        var response = await _client.fetchUserProfile();
        var user = UserModel.fromJson(response);
        emit(
          state.copyWith(
            profile: user,
            cubitStatus: FetchingSucceed(),
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
        emit(state.copyWith(cubitStatus: ErrorWhileFetching()));
      } finally {
        BotToast.cleanAll();
      }
    }
  }
}
