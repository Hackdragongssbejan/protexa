import 'package:protexa/app/app_imports.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(splashControllerProvider).onInit(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = ref.watch(appColorsProvider);

    return AppScaffold(
      backgroundColor: colors.primary,
      body: ReusableCenter(
        child: ReusableText(
          text: 'Protexa',
          style: AppTextStyle.displayLarge,
          color: colors.textInverse,
        ),
      ),
    );
  }
}
