import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/constants/system/pref_constants.dart';
import 'package:git_app/src/core/cubit/app/system/system_cubit.dart';
import 'package:git_app/src/core/di/app_init.dart';
import 'package:git_app/src/helpers/shared_preferences.dart';
import 'package:git_app/src/views/screens/auth/login_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final systemCubit = AppInit.getIt<SystemCubit>();
    return BlocConsumer<SystemCubit, SystemState>(
      bloc: systemCubit,
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: state.darkMode,
                  onChanged: (value) {
                    systemCubit.updateState(state.copyWith(darkMode: value));
                  },
                ),
              ),
              const Spacer(),
              ListTile(
                title: const Text('Log Out'),
                onTap: () {
                  Prefs.remove(PreferenceConstant.authToken);
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.id,
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
