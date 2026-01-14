import 'package:protexa/app/app_imports.dart';

class ReusableCenter extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Alignment alignment;

  const ReusableCenter({
    super.key,
    required this.child,
    this.padding,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Align(
      alignment: alignment,
      child: child,
    );

    if (padding != null) {
      content = Padding(
        padding: padding!,
        child: content,
      );
    }

    return ScalingFactor(child: content);
  }
}
