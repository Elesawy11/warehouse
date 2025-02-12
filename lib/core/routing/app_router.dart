import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/Auth/presentation/views/auth_view.dart';
import 'package:warehouse_app/features/home/presentation/views/home_view.dart';
import 'package:warehouse_app/features/onboarding/presentation/views/onboarding_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: Routes.auth,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
