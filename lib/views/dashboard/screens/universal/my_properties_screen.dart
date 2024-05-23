import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/home_screen_mobile.dart';
import 'package:main/views/dashboard/screens/mobile/my_properties_mobile.dart';
import 'package:main/views/dashboard/screens/tablet/my_properties_tablet.dart';
import 'package:main/views/dashboard/screens/web/my_properties_web.dart';

class MyPropertiesScreen extends StatelessWidget {
  const MyPropertiesScreen({Key? key}) : super(key: key);

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
    return macOS || windows ? MyPropertiesScreenWeb() :isMobile? MyPropertiesScreenMobile():MyPropertiesScreenTablet();
  }
}
