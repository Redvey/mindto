
import 'package:go_router/go_router.dart';
import 'package:mindto/core/routes/route_names.dart';
import 'package:mindto/core/routes/route_paths.dart';
import 'package:mindto/features/auth/ui/auth_register_screen.dart';
import 'package:mindto/features/onboarding/ui/onboarding_screen.dart';


class AppRoutes {
  static AppRoutes instance = AppRoutes();

  final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutePaths.instance.authScreenRoutePath,
        name: AppRouteNames.instance.authScreenRouteName,
        builder: (context, state) {
          return const AuthScreen();
        },
      ),
      GoRoute(
        path: AppRoutePaths.instance.onboardingRoutePath,
        name: AppRouteNames.instance.onboardcreenRouteName,
        builder: (context, state) {
          return const OnboardingScreen();
        },
      ),
      

    ],
    initialLocation: AppRoutePaths.instance.onboardingRoutePath,
  );
}