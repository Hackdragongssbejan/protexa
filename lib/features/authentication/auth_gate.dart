import 'package:protexa/app/app_imports.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return authState.when(
      loading: () => const SplashScreen(),
      error: (_, __) => const LoginScreen(),
      data: (user) {
        if (user == null) {
          return const LoginScreen();
        } else {
          return const DashboardScreen();
        }
      },
    );
  }
}
