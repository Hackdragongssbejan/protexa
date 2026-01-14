import 'package:protexa/app/app_imports.dart';

class SplashController {
  SplashController();

  /// Called when splash screen starts
  Future<void> onInit(WidgetRef ref) async {
    // Future responsibilities:
    // - check auth state
    // - load user profile
    // - preload configs
    // - decide next route
  }

  /// Optional delayed navigation helper
  Future<void> navigateAfterDelay({
    required Duration delay,
    required VoidCallback onDone,
  }) async {
    await Future.delayed(delay);
    onDone();
  }
}
