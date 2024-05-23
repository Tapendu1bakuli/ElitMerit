import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/home_bottom_sheet_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/home_bottom_sheet_screen_tablet.dart';

import '../mobile/home_screen_mobile.dart';
import '../tablet/home_screen_tablet.dart';
import '../tablet/my_properties_tablet.dart';
import '../web/home_screen_web.dart';
class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = true;
    if (ResponsiveUtils.isMobile(context)) {
      isMobile = true;
    } else if (ResponsiveUtils.isDesktop(context)) {
      isMobile = false;
    }
    else if (ResponsiveUtils.isTablet(context)) {
      isMobile = false;
    }
    return macOS || windows?HomeScreenWeb():isMobile?HomeScreenMobile():HomeScreenTablet();
  }
}
