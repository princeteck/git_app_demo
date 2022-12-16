import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:retrofit/dio.dart' as client_response;

mixin ErrorHandler {
  // static final NavigationService _navigationService =
  //     AppInitializer.getIt<NavigationService>();

  static dynamic networkErrorHandler(Function function) async {
    try {
      client_response.HttpResponse res = await function();
      if (res.response.statusCode! >= 200 && res.response.statusCode! <= 300) {
        return res.response.data;
      } else if (res.response.statusCode == 401) {
        debugPrint(res.response.data.toString());

        // throw CommonError.fromJson(res.response.data);
      } else {
        // throw CommonError.fromJson(res.response.data);
      }
    } catch (e) {
      if (e is SocketException) {
        //treat SocketException
        debugPrint("Socket exception: ${e.toString()}");
      } else if (e is TimeoutException) {
        //treat TimeoutException
        debugPrint("Timeout exception: ${e.toString()}");
      } else {
        debugPrint("Unhandled exception: ${e.toString()}");
      }
    }
  }
}
