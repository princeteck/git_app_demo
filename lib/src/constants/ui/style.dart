import 'package:flutter/material.dart';

import './color_constants.dart';

final $style = AppStyle();

class AppStyle {
  final colors = AppColors();

  final lightTheme = ThemeData.light().copyWith(
    backgroundColor: AppColors().white,
    textTheme: ThemeData.light()
        .textTheme
        .copyWith(
          bodyLarge: TextStyle(color: AppColors().gray900),
          bodyMedium: TextStyle(color: AppColors().gray900),
          bodySmall: TextStyle(color: AppColors().gray900),
          displayLarge: TextStyle(color: AppColors().gray900),
          displayMedium: TextStyle(color: AppColors().gray900),
          displaySmall: TextStyle(color: AppColors().gray900),
          headlineLarge: TextStyle(color: AppColors().gray900),
          headlineSmall: TextStyle(color: AppColors().gray900),
          titleLarge: TextStyle(color: AppColors().gray900),
          titleSmall: TextStyle(color: AppColors().gray900),
          labelLarge: TextStyle(color: AppColors().gray900),
          labelMedium: TextStyle(color: AppColors().gray900),
          labelSmall: TextStyle(color: AppColors().gray900),
        )
        .apply(fontFamily: 'Inter'),
    iconTheme: IconThemeData(color: AppColors().gray900),
    inputDecorationTheme: ThemeData.light().inputDecorationTheme.copyWith(),
  );
  final dartTheme = ThemeData.dark().copyWith(
    backgroundColor: AppColors().slate900,
    bottomAppBarColor: AppColors().slate700,
    textTheme: ThemeData.light()
        .textTheme
        .copyWith(
          bodyLarge: TextStyle(color: AppColors().gray100),
          bodyMedium: TextStyle(color: AppColors().gray100),
          bodySmall: TextStyle(color: AppColors().gray100),
          displayLarge: TextStyle(color: AppColors().gray100),
          displayMedium: TextStyle(color: AppColors().gray100),
          displaySmall: TextStyle(color: AppColors().gray100),
          headlineLarge: TextStyle(color: AppColors().gray100),
          headlineSmall: TextStyle(color: AppColors().gray100),
          titleLarge: TextStyle(color: AppColors().gray100),
          titleSmall: TextStyle(color: AppColors().gray100),
          labelLarge: TextStyle(color: AppColors().gray100),
          labelMedium: TextStyle(color: AppColors().gray100),
          labelSmall: TextStyle(color: AppColors().gray100),
        )
        .apply(fontFamily: 'Inter'),
    iconTheme: IconThemeData(color: AppColors().gray100),
  );

  final shortMenuWidth = 80.0;
  final fullMenuWidth = 250.0;
  final appBottomBar = 25.0;
  final appBottomBarSpacer = 56.0;
  final inputFieldHeight = 62.0;

  /// Constant [Padding] value is `20.0`
  final kPadding = 20.0;
  final borderRadius = (20 / 5);
}
