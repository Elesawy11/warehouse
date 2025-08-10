import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:warehouse_app/features/Auth/data/data_source/auth_data_source.dart';
import 'package:warehouse_app/features/Auth/data/repo/auth_repo_impl.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/log_in_cubit/log_in_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/items/data/repo/firebase_repo_impl.dart';
import 'package:warehouse_app/core/networking/firebase_source.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:warehouse_app/features/items/presentation/cubits/get_all_product_cubit/get_all_product_cubit.dart';
import 'package:warehouse_app/features/settings/data/repo/setting_repo_impl.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/add_supplier_cubit/add_supplier_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_categories_cubit/get_all_categories_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/get_all_suppliers_cubit/get_all_suppliers_cubit.dart';
import 'package:warehouse_app/features/settings/presentation/cubits/supplier_feature_cubit/suppliers_features_cubit.dart';
import '../../features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import '../utils/supabase_init.dart';
import 'package:uuid/uuid.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  // fireStore instance
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  getIt.registerLazySingleton<FirebaseFirestore>(() => firestore);

  // uuid instance
  Uuid uuid = const Uuid();
  getIt.registerLazySingleton<Uuid>(() => uuid);
  // Auth Features
  final client = SupabaseMethods.client;
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource(client));
  getIt
      .registerLazySingleton<AuthRepoImpl>(() => AuthRepoImpl(source: getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<AuthRepoImpl>()));
  getIt.registerFactory<LogInCubit>(() => LogInCubit(getIt<AuthRepoImpl>()));

  getIt.registerFactory<SigninWithPhoneNumberCubit>(
      () => SigninWithPhoneNumberCubit(getIt()));

  getIt.registerFactory<SignUpWithPhoneNumberCubit>(
      () => SignUpWithPhoneNumberCubit(getIt.get()));
// firebase features
  getIt.registerLazySingleton<FirebaseSource>(() => FirebaseSource(firestore));

  // add product feature
  getIt.registerLazySingleton<FirebaseRepoImpl>(
      () => FirebaseRepoImpl(getIt.get()));
  getIt.registerFactory<AddProductCubit>(() => AddProductCubit(getIt.get()));
  //get all products
  getIt.registerFactory<GetAllProductCubit>(
      () => GetAllProductCubit(getIt.get<FirebaseRepoImpl>()));

  // setting feature
  getIt.registerLazySingleton<SettingRepoImpl>(
      () => SettingRepoImpl(getIt.get()));

  getIt.registerFactory<AddSupplierCubit>(() => AddSupplierCubit(getIt.get()));
  getIt.registerLazySingleton<GetAllSuppliersCubit>(
      () => GetAllSuppliersCubit(getIt.get()));
  getIt.registerLazySingleton<GetAllCategoriesCubit>(
      () => GetAllCategoriesCubit(getIt.get()));

  getIt.registerLazySingleton<SuppliersFeaturesCubit>(
      () => SuppliersFeaturesCubit(getIt.get()));
}
