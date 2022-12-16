import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../../constants/networks/apis.dart';

part 'git_repo_client.g.dart';

@RestApi()
abstract class GitRepoClient {
  factory GitRepoClient(
    Dio dio, {
    required String baseUrl,
  }) = _GitRepoClient;

  /// get all repositories
  @GET(Api.getRepositories)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse>? fetchRepositories({
    @Header("Authorization") required String authToken,
    @Path("userName") required String userName,
    @Queries() Map<String, dynamic>? queries,
  });

  /// get all commits
  @GET(Api.getAllCommits)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse>? fetchAllCommits({
    @Header("Authorization") required String authToken,
    @Path("userName") required String userName,
    @Path("repoName") required String repoName,
    @Queries() Map<String, dynamic>? queries,
  });
}
