import 'package:protexa/app/app_imports.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(appColorsProvider);

    return ScalingFactor(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Protexa',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: colors.scaffoldBackground,
        ),

        initialRoute: AppRoutes.splash,
        onGenerateRoute: (settings) {
          return AppRouter.onGenerateRoute(settings, ref);
        },

        builder: (context, child) {
          return child ?? const SizedBox.shrink();
        },
      ),
    );
  }
}
