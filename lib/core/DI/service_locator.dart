import 'package:get_it/get_it.dart';
import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';
import 'package:warehouse_app/features/Auth/domain/repo/auth_repo.dart';
import 'package:warehouse_app/features/Auth/domain/use_case/sign_up.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpUseCase>()));

  getIt
      .registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(repo: getIt()));

  getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(source: getIt<AuthDataSource>()));

  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource());
}
