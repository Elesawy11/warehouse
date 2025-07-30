import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/app_navigation_bar.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/app_navigation_bar_items.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signup_with_phone_number_cubit/sign_up_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/views/auth_view.dart';
import 'package:warehouse_app/features/Auth/presentation/views/otp_view.dart';
import 'package:warehouse_app/features/home/presentation/views/home_view.dart';
import 'package:warehouse_app/features/home/presentation/views/notification_view.dart';
import 'package:warehouse_app/features/home/presentation/views/profile_view.dart';
import 'package:warehouse_app/features/home/presentation/views/stock_in_view.dart';
import 'package:warehouse_app/features/home/presentation/views/stock_out_view.dart';
import 'package:warehouse_app/features/items/presentation/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:warehouse_app/features/items/presentation/views/items_view.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/add_person_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/customers_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/settings_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/supplier_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/suppliers_view.dart';
import 'package:warehouse_app/features/transaction/presentation/views/transaction_view.dart';

import '../../features/items/presentation/cubits/get_all_product_cubit/get_all_product_cubit.dart';

abstract class AppRouter {
  static final rootNavigatotKey = GlobalKey<NavigatorState>();
  static final router = GoRouter(
    navigatorKey: rootNavigatotKey,
    routes: [
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: Routes.auth,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt.get<SigninWithPhoneNumberCubit>(),
          child: const AuthView(),
        ),
      ),
      GoRoute(
          path: Routes.otpView,
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>;
            return BlocProvider(
              create: (context) => getIt.get<SignUpWithPhoneNumberCubit>(),
              child: OtpView(
                phoneNumber: args['phoneNumber'],
              ),
            );
          }),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => AppNavigationBar(
          navigationShell: navigationShell,
          items: appNavigationBarItems(
            list: Constants.appNavigationBarItems,
          ),
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: Routes.home,
                  builder: (context, state) {
                    return BlocProvider(
                      create: (context) =>
                          getIt.get<GetAllProductCubit>()..getAllProduct(),
                      child: const HomeView(),
                    );
                  }),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.items,
                builder: (context, state) => BlocProvider(
                  create: (context) => getIt.get<AddProductCubit>(),
                  child: const ItemsView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.transactions,
                builder: (context, state) => const TransactionsView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.settings,
                builder: (context, state) => const SettingsView(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.notification,
        builder: (context, state) => const NotificationView(),
      ),
      GoRoute(
        path: Routes.profile,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: Routes.stockIn,
        builder: (context, state) => const StockInView(),
      ),
      GoRoute(
        path: Routes.stockOut,
        builder: (context, state) => const StockOutView(),
      ),
      GoRoute(
        path: Routes.suppliers,
        builder: (context, state) => const SuppliersView(),
      ),
      GoRoute(
        path: Routes.customers,
        builder: (context, state) => const CustomersView(),
      ),
      GoRoute(
        path: Routes.addPerson,
        builder: (context, state) => const AddPersonView(),
      ),
      GoRoute(
        path: Routes.supplier,
        builder: (context, state) => const SupplierView(),
      ),
    ],
  );
}
