import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/core/utils/updated_size_utils.dart';
import 'package:sizing/sizing.dart';

import '../../colors/app_colors.dart';

class CommonButton extends StatelessWidget {
  CommonButton(
      {super.key,
      required this.text,
       this.width,
      required this.onPressed,
      required this.height,  this.buttonColor,  this.buttonBorderColor, this.textColor, this.fontSize ,this.fontWeight});
   double? width;
  final double height;
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final Color? buttonBorderColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor?? AppColors.primaryColor,
          border: Border.all(color: buttonBorderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: textColor?? AppColors.whiteColor,
              fontWeight:fontWeight?? FontWeight.w600,
              fontSize: fontSize ??18.fSize,
            ),
          ),
        ),
      ),
    );
  }
}
