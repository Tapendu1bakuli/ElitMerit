import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/colors/app_colors.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/utils/widows_size_utilis.dart';
import 'package:main/views/dashboard/widget/web/filter_widget_web.dart';
import 'package:sizing/sizing_extension.dart';


class FilterWeb extends StatelessWidget {
  const FilterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:  AppBar(
      leadingWidth: 200,
      scrolledUnderElevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          children: [
            GestureDetector(
                onTap: () => Get.back(),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      height: ScreenConstant.defaultHeightTwentyThree,
                      "asset/icons/tablet/filter_back_arrow_mobile.svg",

                    ),
                    SizedBox(width: getWebHorizontalSize(10)),
                    Text(
                      'Filter',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF6A6A6A),
                        fontSize: 10.fss,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      backgroundColor: AppColors.webBgColor,
      elevation: 0,
    ),
      body: FilterWidgetWeb(),
    );
  }
}
