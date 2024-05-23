import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/validators/Validator_utils.dart';
import 'package:sizing/sizing.dart';

import '../../../device_manger/screen_constants.dart';
import '../../colors/app_colors.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({

    super.key,
     this.controller,
    this.hintStyle,
     this.icon,
     this.obscureText,
     this.onPressed, this.suffixIcon, this.textStyle,this.isReadOnly,this.suffixPadding,this.validator,this.boxFit,this.suffixIconHeight,this.suffixIconWeidth,this.fontSize,this.hintSize,this.textInputAction, this.keyboardType, this.hintText,this.isSuffix = true, this.prefixIcon, this.contentPadding, this.suffixWidget, this.fillColor
  });
  final TextEditingController? controller;
  final String? hintText;
  final IconData? icon;
  final bool? obscureText;
  final bool? isReadOnly;
  final Function()? onPressed;
  final String? suffixIcon;
  final Widget? suffixWidget;
  final Widget? prefixIcon;
  final bool isSuffix;
  final double? hintSize;
  final double? fontSize;
  final BoxFit? boxFit;
  final double? suffixIconHeight;
  final double? suffixIconWeidth;
  final Color? fillColor;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? suffixPadding;
  final Validator? validator;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly ?? false,
      controller: controller,
      obscureText: obscureText ?? false,

      keyboardType: TextInputType.text,
      autofocus: false,
      //readOnly: true,
      maxLines: 1,
      cursorColor: AppColors.primaryColor,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onPressed,
      style: textStyle??TextStyle(
          color: const Color(0xFF111A24),
          fontSize: fontSize??14.fss,
          fontFamily: 'Gordita'),
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ??Colors.white,
        hintText: hintText,
        hintStyle: hintStyle??GoogleFonts.poppins(
            textStyle: TextStyle(
              color: const Color(0xFF232323),
              fontSize: hintSize??13.fss,
            )),
        errorStyle: TextStyle(
            color: const Color(0xFFE8503A),
            fontSize: 12.fss,
            fontFamily: 'Gordita'),
        suffixIcon: isSuffix == false ?Container(width: 0.0,) : Padding(
          padding:suffixPadding??EdgeInsets.all(ScreenConstant.sizeMedium),
          child: suffixWidget ??Image.asset(scale: 2.7.ss,
            suffixIcon ??"asset/icons/tablet/download_3.png",height: suffixIconHeight,width: suffixIconWeidth,fit: boxFit,

          ),
        ),
        prefixIcon: prefixIcon,
        contentPadding: contentPadding,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color:
              Color(0xFFC4C4C4),
              width: 1,
              style: BorderStyle.solid),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFC4C4C4), width: 1, style: BorderStyle.solid),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: Color(0xFFE8503A), width: 1, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
