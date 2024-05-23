import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/device_manger/screen_constants.dart';
import 'package:main/utils/tablet_size_utils.dart';
import 'package:main/views/dashboard/widget/mobile/filter_widget.dart';
import 'package:sizing/sizing.dart';

import '../../widget/tablet/filter_widget_tablet.dart';

class FilterTablet extends StatelessWidget {
  const FilterTablet({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return MediaQuery(
      data:MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        SizedBox(width: getTabletHorizontalSize(10)),
                        Text(
                          'Filter',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF6A6A6A),
                            fontSize: 12.fss,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          backgroundColor: Color(0xFF1E1E1E).withOpacity(0.1),
          elevation: 0,
        ),
        body: isLandscape ? FilterWidgetTablet() :FilterWidget(),
      ),
    );
  }
}
