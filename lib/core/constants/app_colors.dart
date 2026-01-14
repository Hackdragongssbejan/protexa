import 'package:protexa/app/app_imports.dart';

class AppColors {
  final Color scaffoldBackground;
  final Color background;
  final Color surface;

  final Color primary;
  final Color secondary;

  final Color textPrimary;
  final Color textSecondary;
  final Color textInverse;

  final Color divider;
  final Color border;

  final Color success;
  final Color warning;
  final Color error;
  final Color info;

  const AppColors({
    required this.scaffoldBackground,
    required this.background,
    required this.surface,
    required this.primary,
    required this.secondary,
    required this.textPrimary,
    required this.textSecondary,
    required this.textInverse,
    required this.divider,
    required this.border,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
  });

  // =========================
  // LIGHT THEME – ELECTRIC BLUE
  // =========================
  static const AppColors light = AppColors(
    scaffoldBackground: Color(0xFFF8FAFF), // soft blue-white
    background: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),

    primary: Color(0xFF2563EB), // Electric Blue
    secondary: Color(0xFF22C55E), // Mint Green

    textPrimary: Color(0xFF0F172A), // Slate 900
    textSecondary: Color(0xFF475569), // Slate 600
    textInverse: Colors.white,

    divider: Color(0xFFE2E8F0),
    border: Color(0xFFE2E8F0),

    success: Color(0xFF16A34A),
    warning: Color(0xFFF59E0B),
    error: Color(0xFFDC2626),
    info: Color(0xFF0EA5E9), // Cyan-blue info
  );

  // =========================
  // DARK THEME – ELECTRIC BLUE
  // =========================
  static const AppColors dark = AppColors(
    scaffoldBackground: Color(0xFF020617), // Deep navy
    background: Color(0xFF020617),
    surface: Color(0xFF020617),

    primary: Color(0xFF60A5FA), // Electric Blue glow
    secondary: Color(0xFF4ADE80), // Mint neon

    textPrimary: Color(0xFFF8FAFC), // Near-white
    textSecondary: Color(0xFFCBD5E1),
    textInverse: Colors.black,

    divider: Color(0xFF1E293B),
    border: Color(0xFF1E293B),

    success: Color(0xFF22C55E),
    warning: Color(0xFFFBBF24),
    error: Color(0xFFEF4444),
    info: Color(0xFF38BDF8),
  );

  // =========================
  // CURRENT THEME
  // =========================
  static AppColors current(bool isDark) {
    return isDark ? dark : light;
  }
}
