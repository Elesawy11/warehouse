import 'package:go_router/go_router.dart';
import 'package:warehouse_app/core/routing/routes.dart';
import 'package:warehouse_app/features/start.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: Routes.onboarding,
          builder: (context, state) => StartView()),
    ],
  );
}
