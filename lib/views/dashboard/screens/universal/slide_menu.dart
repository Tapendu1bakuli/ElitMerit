import 'package:flutter/material.dart';
import 'package:main/views/dashboard/screens/mobile/slide_menu_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/slide_menu_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/slide_menu_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../main.dart';
import '../tablet/my_properties_tablet.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({Key? key}) : super(key: key);

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
    return macOS || windows?SlideMenuScreenWeb():isMobile ?  SlideMenuMobileScreen():SlideMenuTabletScreen();
  }
}
