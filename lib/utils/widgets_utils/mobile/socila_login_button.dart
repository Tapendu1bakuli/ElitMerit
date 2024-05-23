import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/phone_size_utils.dart';
import 'package:sizing/sizing.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key, required this.imgPath, required this.text});
  final String text;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(54),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.whiteColor,
        border: Border.all(color: Color(0xffE6E8E7), width: 1),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Color(0xff232323),
                fontWeight: FontWeight.w600,
                fontSize: getFontSize(18),
              ),
            ),
            SizedBox(width: getSize(10)),
            SizedBox(
              width: getSize(24),
              height: getSize(24),
              // child: Image.asset(imgPath),
              child: Image.asset(
                imgPath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
