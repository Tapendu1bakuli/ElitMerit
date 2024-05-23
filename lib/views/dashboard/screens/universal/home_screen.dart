import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/home_screen_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/home_screen_tablet.dart';
import 'package:main/views/dashboard/screens/web/home_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../tablet/my_properties_tablet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
    return macOS||windows?HomeScreenWeb():isMobile? HomeScreenMobile():HomeScreenTablet();
  }
}
