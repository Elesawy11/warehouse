import 'package:get_it/get_it.dart';
import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<AuthRepoImpl>()));
  getIt.registerFactory<LogInCubit>(() => LogInCubit(getIt<AuthRepoImpl>()));

  getIt.registerLazySingleton<AuthRepoImpl>(
      () => AuthRepoImpl(source: getIt<AuthDataSource>()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource());
}
