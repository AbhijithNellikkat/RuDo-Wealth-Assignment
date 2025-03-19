import 'package:flutter/material.dart';
import 'package:rudo_wealth_test/application/presentation/utils/constants/colors.dart';

class CustomEventButton extends StatelessWidget {
  const CustomEventButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.hieght,
    this.textColr,
    this.textStyle,
    this.color,
    this.borderRadius,
    this.outlineBorderClr,
    this.showGradiant = true,
    this.outlineBorder = false,
    this.padding,
    this.margin,
  });

  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? hieght;
  final Color? textColr;
  final Gradient? color;
  final double? borderRadius;
  final TextStyle? textStyle;
  final bool showGradiant;
  final Color? outlineBorderClr;
  final bool outlineBorder;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        width: width ?? 150,
        height: hieght ?? 45,
        decoration: BoxDecoration(
          gradient: showGradiant ? (color) : null,
          border: outlineBorder
              ? Border.all(color: outlineBorderClr ?? kblack)
              : null,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius ?? 25),
          ),
          color: outlineBorder ? knill : Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: textColr ?? kwhite, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
