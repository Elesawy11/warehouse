import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_app/app_navigation_bar.dart';
import 'package:warehouse_app/core/DI/service_locator.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/core/utils/app_navigation_bar_items.dart';
import 'package:warehouse_app/core/utils/constants.dart';
import 'package:warehouse_app/features/Auth/presentation/cubits/signin_with_phone_number_cubit/cubit/signin_with_phone_number_cubit.dart';
import 'package:warehouse_app/features/Auth/presentation/views/auth_view.dart';
import 'package:warehouse_app/features/Auth/presentation/views/otp_view.dart';
import 'package:warehouse_app/features/home/presentation/views/home_view.dart';
import 'package:warehouse_app/features/home/presentation/views/notification_view.dart';
import 'package:warehouse_app/features/home/presentation/views/profile_view.dart';
import 'package:warehouse_app/features/home/presentation/views/stock_in_view.dart';
import 'package:warehouse_app/features/home/presentation/views/stock_out_view.dart';
import 'package:warehouse_app/features/items/presentation/views/items_view.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:warehouse_app/features/settings/presentation/views/settings_view.dart';
import 'package:warehouse_app/features/transaction/presentation/views/transaction_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
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
        builder: (context, state) => const OtpView(),
      ),
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
                builder: (context, state) => const HomeView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.items,
                builder: (context, state) => const ItemsView(),
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
    ],
  );
}
