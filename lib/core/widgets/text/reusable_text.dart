import 'package:protexa/app/app_imports.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;

  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextWidthBasis? textWidthBasis;
  final StrutStyle? strutStyle;

  const ReusableText({
    super.key,
    required this.text,
    this.style,
    this.color,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.textWidthBasis,
    this.strutStyle,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = (style ?? AppTextStyle.body).copyWith(
      color: color ?? style?.color,
    );

    return ScalingFactor(
      child: Text(
        text,
        style: effectiveStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: maxLines == null ? null : (overflow ?? TextOverflow.ellipsis),
        maxLines: maxLines,
        textWidthBasis: textWidthBasis,
        strutStyle: strutStyle,
      ),
    );
  }
}
