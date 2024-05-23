import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/customButton/screens/mobile/elevated_button_screen_mobile.dart';
import 'package:main/views/customButton/screens/tablet/elevated_button_screen_tablet.dart';
import 'package:main/views/customButton/screens/web/elevated_button_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../dashboard/screens/tablet/my_properties_tablet.dart';
class ElevatedButtonScreen extends StatelessWidget {
  const ElevatedButtonScreen({Key? key}) : super(key: key);

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
    return macOS||windows?ElevatedButtonScreenWeb():isMobile ?
    ElevatedButtonScreenMobile():ElevatedButtonScreenTablet();
  }
}
