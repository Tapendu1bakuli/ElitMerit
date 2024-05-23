import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/views/dashboard/screens/mobile/filter_mobile_screen.dart';
import 'package:main/views/dashboard/screens/tablet/filter_tablet_screen.dart';
import 'package:main/views/dashboard/screens/web/filter_web_screen.dart';
import '../tablet/my_properties_tablet.dart';

import '../tablet/my_properties_tablet.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

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
    return macOS || windows ? const FilterWeb() : isMobile ? const FilterMobile():const FilterTablet();
  }
}
