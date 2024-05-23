import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:sizing/sizing.dart';


class ToggleButtonWidgetMobile extends StatelessWidget {
  const ToggleButtonWidgetMobile({super.key, required this.isSelected, required this.text,this.unselectedColor,this.fontSize});
  final bool isSelected;
  final String text;
  final double? fontSize;
  final Color? unselectedColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: getSize(195),
      // height: getSize(43),
      decoration: BoxDecoration(
        borderRadius: isSelected?BorderRadius.all(
            Radius.circular(5)
        ):BorderRadius.only(
           topRight: Radius.circular(5),
          bottomRight: Radius.circular(5)
        ),
        color: isSelected ? AppColors.primaryColor : Color(0xFFF3F3F3),


      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getHorizontalSize(1), vertical: getVerticalSize(10)),
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