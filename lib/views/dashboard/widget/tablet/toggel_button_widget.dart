import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:sizing/sizing.dart';


class ToggleButtonWidgetTablet extends StatelessWidget {
  const ToggleButtonWidgetTablet({super.key, this.height,required this.isSelected,this.isDisabledWhite = false ,required this.text, this.borderColor,this.fontSize,this.unselectedColor});
  final bool isSelected;
  final String text;
  final double? height;
  final Color? borderColor;
  final Color? unselectedColor;
  final double? fontSize;
  final bool? isDisabledWhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height??75,
      // width: getSize(195),
      // height: getSize(43),
      decoration: BoxDecoration(
        border: Border.all(color: isSelected?Colors.transparent:borderColor??Colors.transparent),
        borderRadius: BorderRadius.all(
         Radius.circular(5)
        ),
        color: isSelected ? AppColors.primaryColor : isDisabledWhite==true?Colors.white:Color(0xFFF3F3F3),


      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getHorizontalSize(5), vertical: getVerticalSize(3)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: isSelected ? Colors.white : unselectedColor??Color(0xff6A6A6A),
              fontSize: fontSize??12.fss,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}