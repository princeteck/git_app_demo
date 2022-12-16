import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/cubit/app/common/providers.dart';
import 'src/core/di/app_init.dart';
import 'src/helpers/shared_preferences.dart';
import 'src/views/screens/core/git_app_main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// init app
  await AppInit.init();
  await Prefs.init();

  runApp(
    MultiBlocProvider(
      providers: $providers,
      child: const GitAppMain(),
    ),
  );
}
