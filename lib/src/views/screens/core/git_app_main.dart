import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:git_app/src/routes/routes.dart';
import 'package:git_app/src/views/screens/common/splash_screen.dart';

import '../../../../l10n/support_locale.dart';
import '../../../constants/ui/style.dart';
import '../../../core/cubit/app/system/system_cubit.dart';
import '../../../core/di/app_init.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GitAppMain extends StatelessWidget {
  const GitAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubitSystem = AppInit.getIt<SystemCubit>();
    return BlocConsumer<SystemCubit, SystemState>(
      bloc: cubitSystem,
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: BotToastInit(), //1. call BotToastInit
          navigatorObservers: [BotToastNavigatorObserver()],
          themeMode: state.darkMode ? ThemeMode.dark : ThemeMode.light,
          theme: $style.lightTheme,
          darkTheme: $style.dartTheme,
          color: Colors.transparent,
          locale: state.locale ?? const Locale('en'),
          supportedLocales: L10n.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          onGenerateRoute: RouteGenerator.generateRoute,
          home: const SplashScreen(),
        );
      },
    );
  }
}
