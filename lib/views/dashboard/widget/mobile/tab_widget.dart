import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:sizing/sizing.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key, required this.isSelected, required this.text});
  final bool isSelected;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: getSize(195),
      // height: getSize(43),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: isSelected ? AppColors.primaryColor : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 0),
            blurRadius: 5,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getHorizontalSize(44), vertical: getVerticalSize(10)),
        child: Center(
          child:
          FittedBox(child: Text(
            text,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14.fss,
              color:isSelected? Color(0xFFFFFFFF):Color(0xFF6A6A6A),
              fontWeight: FontWeight.w500,
            ),
          ),)

        ),
      ),
    );
  }
}
