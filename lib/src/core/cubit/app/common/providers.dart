import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_app/src/core/cubit/network/git_repo/git_repo_cubit.dart';
import 'package:git_app/src/core/cubit/network/user/user_cubit.dart';

import '../../network/connectivity/connectivity_cubit.dart';
import '../system/system_cubit.dart';

final $providers = [
  BlocProvider<SystemCubit>(create: (context) => SystemCubit()),
  BlocProvider<ConnectivityCubit>(create: (context) => ConnectivityCubit()),
  BlocProvider<GitRepoCubit>(create: (context) => GitRepoCubit()),
  BlocProvider<UserCubit>(create: (context) => UserCubit()),
];
