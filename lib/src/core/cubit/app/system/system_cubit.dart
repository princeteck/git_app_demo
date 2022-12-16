import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../l10n/support_locale.dart';
import '../../../../constants/system/app_status.dart';

part 'system_state.dart';

class SystemCubit extends Cubit<SystemState> {
  SystemCubit()
      : super(
          SystemState(
            cubitStatus: Idle(),
            darkMode: false,
            systemThemeMode: false,
            locale: const Locale('en'),
          ),
        );

  /// update state
  void updateState(SystemState state) => emit(state);

  /// enforce dark mode
  void enableDarkMode(bool value) {
    emit(
      state.copyWith(
        darkMode: value,
        systemThemeMode: !value,
      ),
    );
  }

  /// enforce system theme mode
  void enableSystemThemeMode(bool value) => emit(
        state.copyWith(
          darkMode: !value,
          systemThemeMode: value,
        ),
      );

  /// Set System Info
  // void setSystemInfo(PackageInfo data) {
  //   emit(state.copyWith(packageInfo: data));
  // }

  void setLocale(Locale loc) {
    // ignore: iterable_contains_unrelated_type
    if (!L10n.supportedLocales.contains(loc)) return;
    emit(state.copyWith(locale: loc));
  }

  void clearLocale() {
    emit(state.copyWith(locale: null));
  }
}
