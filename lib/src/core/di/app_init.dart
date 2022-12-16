import 'package:get_it/get_it.dart';
import '../cubit/app/system/system_cubit.dart';
import '../cubit/network/connectivity/connectivity_cubit.dart';
import '../cubit/network/git_repo/git_repo_cubit.dart';
import '../cubit/network/user/user_cubit.dart';

class AppInit {
  AppInit._();
  static late GetIt getIt;

  void reset() async {
    await getIt.unregister();
  }

  static void close() {
    getIt.reset();
  }

  static dynamic init() async {
    getIt = GetIt.I;
    create(); // initialize here ! important
  }

  static void create() {
    _initCubit();
  }

  static void _initCubit() {
    getIt.registerLazySingleton(SystemCubit.new);
    getIt.registerLazySingleton(ConnectivityCubit.new);
    getIt.registerLazySingleton(GitRepoCubit.new);
    getIt.registerLazySingleton(UserCubit.new);
  }
}
