import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_app/src/helpers/shared_preferences.dart';
import 'package:git_app/src/views/screens/common/splash_screen.dart';
import 'package:github_sign_in/github_sign_in.dart';
import 'package:uih/uih.dart';

import '../../../constants/ui/app_icons_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = "LOGIN_SCREEN";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GitHubSignIn gitHubSignIn = GitHubSignIn(
    clientId: '14d3979d34faf214ecd9',
    clientSecret: '3cd258a40c7b38dc2dfbc379ef7cf778b5f2ffae',
    redirectUrl: 'https://git-app-clone.firebaseapp.com/__/auth/handler',
    title: 'GitHub Connection',
    centerTitle: false,
  );

  void _gitHubSignIn(BuildContext context) async {
    var result = await gitHubSignIn.signIn(context);
    switch (result.status) {
      case GitHubSignInResultStatus.ok:
        await Prefs.setString('authToken', result.token ?? "");
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacementNamed(SplashScreen.id);
        break;

      case GitHubSignInResultStatus.cancelled:
      case GitHubSignInResultStatus.failed:
        debugPrint(result.errorMessage);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: context.brightness == Brightness.light
                  ? [const Color(0XFF1E3B70), const Color(0XFF29539B)]
                  : [const Color(0XFF28313B), const Color(0XFF485461)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              Center(
                child: SvgPicture.asset(
                  AppIcons.fork,
                  height: context.heightPx * 0.4,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _gitHubSignIn(context);
                },
                child: const Text("GitHub Login"),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
