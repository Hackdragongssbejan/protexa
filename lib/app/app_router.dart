import 'package:protexa/app/app_imports.dart';

/// ----------------------------
/// Route Names (single source)
/// ----------------------------
class AppRoutes {
  static const splash = '/';
  static const authGate = '/authGate';
  static const login = '/login';
  static const otp = '/otp';
  static const dashboard = '/dashboard';
  static const addFood = '/add-food';
  static const addWater = '/add-water';
  static const addWorkout = '/add-workout';
  static const history = '/history';
  static const analytics = '/analytics';
}

/// ----------------------------
/// App Router
/// ----------------------------
class AppRouter {
  static Route<dynamic> onGenerateRoute(
      RouteSettings settings,
      WidgetRef ref,
      ) {
    switch (settings.name) {
      case AppRoutes.splash:
        return _page(const AuthGate());

      case AppRoutes.login:
        return _page(const LoginScreen());

      case AppRoutes.authGate:
        return _page(const AuthGate());

      case AppRoutes.dashboard:
        return _page(const DashboardScreen());

      // case AppRoutes.addFood:
      //   return _page(const AddFoodScreen());
      //
      // case AppRoutes.addWater:
      //   return _page(const AddWaterScreen());
      //
      // case AppRoutes.addWorkout:
      //   return _page(const AddWorkoutScreen());
      //
      // case AppRoutes.history:
      //   return _page(const HistoryScreen());
      //
      // case AppRoutes.analytics:
      //   return _page(const AnalyticsScreen());

      default:
        return _page(
          const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }

  static MaterialPageRoute _page(Widget child) {
    return MaterialPageRoute(builder: (_) => child);
  }
}
