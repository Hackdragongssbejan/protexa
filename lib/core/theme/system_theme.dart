import 'package:protexa/app/app_imports.dart';

void detectAndSetSystemTheme(BuildContext context, WidgetRef ref) {
  final brightness = MediaQuery.of(context).platformBrightness;
  ref.read(isDarkProvider.notifier).state = brightness == Brightness.dark;
}
