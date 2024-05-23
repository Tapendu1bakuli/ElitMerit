import 'package:flutter/material.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:sizing/sizing_extension.dart';
import 'base_button.dart';

class CustomElevatedButtonForSearchAndFilter extends BaseButton {
  CustomElevatedButtonForSearchAndFilter({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonStyle,
    isDisabled: isDisabled,
    buttonTextStyle: buttonTextStyle,
    height: height,
    width: width,
    alignment: alignment,
    margin: margin,
  );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildElevatedButtonWidget,
    )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
    height: this.height ?? 55.v,
    width: this.width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle ?? ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF50C878),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),),
      onPressed: isDisabled ?? false ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ?? const SizedBox.shrink(),
          Text(
            text,
            style: buttonTextStyle ?? theme.textTheme.titleSmall,
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}


class CustomElevatedContainerForFavourites extends BaseButton {
  CustomElevatedContainerForFavourites({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.border,
    this.richText, //
    this.fontSize, // Added richText parameter
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    Color? color,

    required String text,
  }) : super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonStyle,
    isDisabled: isDisabled,
    color : color,
    buttonTextStyle: buttonTextStyle,
    height: height,
    width: width,
    alignment: alignment,
    margin: margin,
    fontSize : fontSize,

  );

  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Border? border;
  final RichText? richText; // Added richText parameter
  final double? fontSize; // Added richText parameter

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildElevatedButtonWidget,
    )
        : buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container(
    height: this.height ?? 35.v,
    width: this.width, //?? double.maxFinite,
    margin: margin,
    padding: EdgeInsets.only(left: 12.ss),
    decoration: decoration ??
        BoxDecoration(
          color: color ?? theme.colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(10),
          ),
          border: border,
        ),
    child: GestureDetector(
      onTap: isDisabled ?? false ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leftIcon ?? const SizedBox.shrink(),
          // Conditionally render RichText or Text based on the presence of richText parameter
          richText ?? Text(
            text,
            style: buttonTextStyle ??
                theme.textTheme.titleSmall!.copyWith(fontSize: this.fontSize ?? 14.fSize),
          ),
          rightIcon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}

