import 'package:protexa/app/app_imports.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(appColorsProvider);

    return AppScaffold(
      backgroundColor: colors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        title: ReusableText(
          text: 'Dashboard',
          style: AppTextStyle.h2,
          color: colors.textPrimary,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: colors.textPrimary),
            onPressed: () {
              ref.read(authControllerProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: Padding(
        padding: AppPadding.screen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              text: 'Welcome back 👋',
              style: AppTextStyle.h3,
              color: colors.textPrimary,
            ),

            AppSpacing.h8,

            ReusableText(
              text: 'Track your progress today',
              style: AppTextStyle.body,
              color: colors.textSecondary,
            ),

            AppSpacing.h24,

            // 🔹 Placeholder cards (next iterations)
            _DashboardCard(
              title: 'Calories',
              value: '0 kcal',
              color: colors.primary,
            ),

            AppSpacing.h16,

            _DashboardCard(
              title: 'Water',
              value: '0 ml',
              color: colors.info,
            ),

            AppSpacing.h16,

            _DashboardCard(
              title: 'Workout',
              value: 'Not started',
              color: colors.success,
            ),
          ],
        ),
      ),
    );
  }
}
class _DashboardCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _DashboardCard({
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.card,
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(
            text: title,
            style: AppTextStyle.bodyLarge,
          ),
          ReusableText(
            text: value,
            style: AppTextStyle.h3,
          ),
        ],
      ),
    );
  }
}
