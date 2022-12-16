import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:git_app/src/constants/networks/apis.dart';

import '../../../../constants/system/pref_constants.dart';
import '../../../../helpers/shared_preferences.dart';
import '../../rest_clients/user/user_client.dart';
import '../common/error_handler.dart';

class UserRepository {
  UserRepository() {
    var dio = Dio();
    dio.options = BaseOptions(
      validateStatus: (val) => true,
    );
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        // requestHeader: true,
        // requestBody: true,
        // responseHeader: true,
        error: true,
        showProcessingTime: true,
        canShowLog: true,
        responseBody: false,
        // showCUrl: true,
        queryParameters: true,
      ));
    }
    _userClient = UserClient(dio, baseUrl: Api.baseUrl);
  }

  UserClient? _userClient;

  Future fetchUserProfile() async {
    return await ErrorHandler.networkErrorHandler(() {
      return _userClient?.fetchUserProfile(
        authToken: "Bearer ${Prefs.getString(PreferenceConstant.authToken)}",
      );
    });
  }

  Future fetchOtherUserProfile({
    required String userName,
  }) async {
    return await ErrorHandler.networkErrorHandler(() {
      return _userClient?.fetchOtherUserProfile(
        authToken: "Bearer ${Prefs.getString(PreferenceConstant.authToken)}",
        userName: userName,
      );
    });
  }
}
