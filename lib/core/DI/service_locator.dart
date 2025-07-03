import 'package:get_it/get_it.dart';
import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';

import '../../features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import '../utils/supabase_init.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  // Auth Features
  final client = SupabaseMethods.client;
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<AuthRepoImpl>()));
  getIt.registerFactory<LogInCubit>(() => LogInCubit(getIt<AuthRepoImpl>()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource(client));
  getIt
      .registerLazySingleton<AuthRepoImpl>(() => AuthRepoImpl(source: getIt()));
  getIt.registerLazySingleton<SigninWithPhoneNumberCubit>(
      () => SigninWithPhoneNumberCubit(getIt()));

  getIt.registerLazySingleton<SignUpWithPhoneNumberCubit>(
      () => SignUpWithPhoneNumberCubit(getIt.get()));
}
