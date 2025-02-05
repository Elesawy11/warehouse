import 'package:get_it/get_it.dart';
import 'package:warehouse_app/features/onboarding/presentation/cubits/cubit/onobarding_scroll_cubit.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerLazySingleton(() => OnobardingScrollCubit());
}
