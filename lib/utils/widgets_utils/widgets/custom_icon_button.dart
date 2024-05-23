import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/theme_helper.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(12.h),
                  gradient: LinearGradient(
                    begin: Alignment(0.14, 0),
                    end: Alignment(1.0, 0),
                    colors: [
                      appTheme.green40001,
                      theme.colorScheme.onPrimary,
                    ],
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray900,
    borderRadius: BorderRadius.circular(11.h),
  );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray20002,
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: appTheme.black900.withOpacity(0.06),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green40001,
        borderRadius: BorderRadius.circular(9.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(9.h),
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA700,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillGreenTL29 => BoxDecoration(
        color: appTheme.green40001.withOpacity(0.26),
        borderRadius: BorderRadius.circular(29.h),
      );
}
