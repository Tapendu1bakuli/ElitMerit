import 'package:flutter/material.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:main/utils/theme/custom_text_style.dart';
import 'package:main/utils/theme/theme_helper.dart';
import 'package:sizing/sizing_extension.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.errorValue,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  }) : super(
          key: key,
        );
  final AutovalidateMode autovalidateMode;
  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  bool? errorValue;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget(context),
          )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          cursorHeight: 15.ss,
          cursorColor: AppColors.primaryColor,
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          autovalidateMode: autovalidateMode,
          style: textStyle ?? CustomTextStyles.bodySmall12,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
    hoverColor: Colors.transparent,
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,

        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 15.h,
              top: 15.v,
              bottom: 15.v,
            ),
        fillColor: fillColor ?? theme.colorScheme.primary,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  10.h,
                ),
                bottomLeft: Radius.circular(
                  10.h,
                ),
                bottomRight: Radius.circular(
                  10.h,
                ),
              ),
              borderSide: BorderSide(
                color: theme.colorScheme.onErrorContainer,
                width: 2,
              ),
            ),

        // enabledBorder: borderDecoration ??
        //     OutlineInputBorder(
        //       borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(
        //           10.h,
        //         ),
        //         bottomLeft: Radius.circular(
        //           10.h,
        //         ),
        //         bottomRight: Radius.circular(
        //           10.h,
        //         ),
        //       ),
        //       borderSide: BorderSide(
        //         color: theme.colorScheme.onErrorContainer,
        //         width: 2,
        //       ),
        //     ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: errorValue != null
                  ? errorValue!
                      ? Colors.red
                      : Color(0xFFC4C4C4)
                  : Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: errorValue != null
                  ? errorValue!
                      ? Colors.red
                      : Color(0xFFC4C4C4)
                  : Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        // focusedBorder: borderDecoration ??
        //     OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(10.h),
        //       borderSide: BorderSide(
        //         color: appTheme.black900.withOpacity(0.17),
        //         width: 1,
        //       ),
        //     ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: errorValue != null
                  ? errorValue!
                      ? Colors.red
                      : Color(0xFFC4C4C4)
                  : Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.h),
        //   borderSide: BorderSide(
        //     color: appTheme.deepOrangeA700,
        //     width: 1,
        //   ),
        // ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
        ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.h),
        //   borderSide: BorderSide(
        //     color: appTheme.deepOrangeA700,
        //     width: 1,
        //   ),
        // ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
        ),
        errorStyle: TextStyle(
          color: appTheme.deepOrangeA700,
          fontSize: 12.fSize,
        ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLineBlueGray => UnderlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.blueGray100,
        ),
      );
  static OutlineInputBorder get fillPrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(
          color: appTheme.gray20001,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillGreen => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillPrimary1 => OutlineInputBorder(
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineOnErrorContainer => OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            10.h,
          ),
          bottomLeft: Radius.circular(
            10.h,
          ),
          bottomRight: Radius.circular(
            10.h,
          ),
        ),
        borderSide: BorderSide(
          color: theme.colorScheme.onErrorContainer,
          width: 2,
        ),
      );
  static OutlineInputBorder get outlineGrayTL10 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(
          color: appTheme.gray400,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBlackTL10 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
      );
  static OutlineInputBorder get fillGreenTL10 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineBlackTL102 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(
          color: appTheme.black900.withOpacity(0.08),
          width: 1,
        ),
      );
}
