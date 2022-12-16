import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../../../../constants/networks/apis.dart';

part 'user_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(
    Dio dio, {
    required String baseUrl,
  }) = _UserClient;

  /// get current user
  @GET(Api.user)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse>? fetchUserProfile({
    @Header("Authorization") required String authToken,
  });

  /// get other User
  @GET(Api.otherUser)
  @Headers({"Accept": "application/json"})
  @Headers({"Content-type": "application/json"})
  Future<HttpResponse>? fetchOtherUserProfile({
    @Header("Authorization") required String authToken,
    @Path('userName') required String userName,
  });
}
