import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pretty_dio_logger/flutter_pretty_dio_logger.dart';
import 'package:git_app/src/constants/networks/apis.dart';
import 'package:git_app/src/core/data/rest_clients/git_repo/git_repo_client.dart';

import '../../../../constants/system/pref_constants.dart';
import '../../../../helpers/shared_preferences.dart';
import '../../../../storage/singleton_storage.dart';
import '../common/error_handler.dart';

class GitRepoRepository {
  GitRepoRepository() {
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
    _gitRepoClient = GitRepoClient(dio, baseUrl: Api.baseUrl);
  }

  GitRepoClient? _gitRepoClient;
  final SingletonStorage _singletonStorage = SingletonStorage();

  Future fetchRepositories({
    Map<String, dynamic>? queries,
    required String? userName,
  }) async {
    return await ErrorHandler.networkErrorHandler(() {
      return _gitRepoClient?.fetchRepositories(
        queries: queries,
        authToken: "Bearer ${Prefs.getString(PreferenceConstant.authToken)}",
        userName: userName ?? _singletonStorage.userName ?? "",
      );
    });
  }

  Future fetchAllCommits({
    Map<String, dynamic>? queries,
    required String userName,
    required String repoName,
  }) async {
    return await ErrorHandler.networkErrorHandler(() {
      return _gitRepoClient?.fetchAllCommits(
        queries: queries,
        authToken: "Bearer ${Prefs.getString(PreferenceConstant.authToken)}",
        userName: userName,
        repoName: repoName,
      );
    });
  }
}
