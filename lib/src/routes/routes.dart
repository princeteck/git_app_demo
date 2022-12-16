import 'package:flutter/material.dart';

import '../views/screens/auth/login_screen.dart';
import '../views/screens/common/splash_screen.dart';
import '../views/screens/dashboard/dashboard_screen.dart';

mixin RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case DashboardScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const DashboardScreen(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
          settings: routeSetting,
        );

      case LoginScreen.id:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginScreen(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
          settings: routeSetting,
        );

      default:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SplashScreen(),
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
          settings: routeSetting,
        );
    }
  }
}
