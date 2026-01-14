import 'package:protexa/app/app_imports.dart';

class AppScaffold extends ConsumerWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  final bool safeArea;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.safeArea = true,
    this.padding,
    this.backgroundColor,
    this.resizeToAvoidBottomInset = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(appColorsProvider);

    Widget content = body;

    if (padding != null) {
      content = Padding(
        padding: padding!,
        child: content,
      );
    }

    if (safeArea) {
      content = SafeArea(child: content);
    }

    return Scaffold(
      backgroundColor: backgroundColor ?? colors.scaffoldBackground,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: appBar,
      body: content,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
