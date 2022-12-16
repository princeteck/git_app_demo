import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit()
      : super(
          const ConnectivityState(
            isConnected: false,
          ),
        );

  Future<void> updateConnectionStatus(ConnectivityResult result) async {
    debugPrint("Connectivity Status: $result");
    if (result == ConnectivityResult.none) {
      emit(state.copyWith(isConnected: false));
    } else {
      emit(state.copyWith(isConnected: true));
    }
  }

  Future<void> initConnectivity(Connectivity connectivity) async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await connectivity.checkConnectivity();
    } on PlatformException {
      return;
    }
    return updateConnectionStatus(result);
  }
}
