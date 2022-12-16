import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/constants/system/app_status.dart';
import 'package:git_app/src/constants/system/pref_constants.dart';
import 'package:git_app/src/core/di/app_init.dart';
import 'package:git_app/src/helpers/shared_preferences.dart';
import 'package:git_app/src/views/screens/auth/login_screen.dart';
import 'package:git_app/src/views/screens/dashboard/dashboard_screen.dart';
import 'package:uih/uih.dart';

import '../../../core/cubit/network/user/user_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const id = "SPLASH_SCREEN";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late UserCubit _cubit;
  @override
  void initState() {
    if (mounted) {
      _cubit = AppInit.getIt<UserCubit>();
      _cubit.getUserProfile();
    }
    super.initState();
  }

  void _checkAuth() async {
    if (await Prefs.contains(key: PreferenceConstant.authToken) == true) {
      Navigator.of(context).pushReplacementNamed(DashboardScreen.id);
    } else {
      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      bloc: _cubit,
      listener: (context, state) {
        if (state.cubitStatus is FetchingSucceed) {
          _checkAuth();
        }

        if (state.cubitStatus is ErrorWhileFetching) {
          Navigator.of(context).pushReplacementNamed(LoginScreen.id);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SizedBox(
              width: context.widthPx,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Splash Screen'),
                  SizedBox(height: 20),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
