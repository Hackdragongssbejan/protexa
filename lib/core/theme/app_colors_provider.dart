import 'package:protexa/app/app_imports.dart';

final appColorsProvider = Provider<AppColors>((ref) {
  final isDark = ref.watch(isDarkProvider);
  return AppColors.current(isDark);
});
